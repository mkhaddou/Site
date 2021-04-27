package com.casbn.payment.controllers;

import java.util.Arrays;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.entity.Payment;
import com.casbn.payment.exceptions.StripeExceptions;
import com.casbn.payment.jsonbody.CreateSubscriptionBody;
import com.casbn.payment.service.CasbnService;
import com.stripe.Stripe;
import com.stripe.exception.CardException;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;
import com.stripe.model.PaymentMethod;
import com.stripe.model.Subscription;
import com.stripe.param.CustomerUpdateParams;
import com.stripe.param.PaymentMethodAttachParams;
import com.stripe.param.SubscriptionCreateParams;

@RestController
public class CreateSubscription {

	//Step 1: get Stripe api key and store it on String 
	@Value("${Stripe}")
	private String key;
	
	@Autowired
	private CasbnService casbnservice;
	
	@RequestMapping(value="/create-subscription",method=RequestMethod.POST,produces="application/json")
	public @ResponseBody Subscription createSubscription(@RequestBody CreateSubscriptionBody cb) throws StripeException
	{
		//Step3: inject the key 
		 Stripe.apiKey=key;
		
		//Step 2: Get customer 
		Customer customer=Customer.retrieve(cb.getCustomerId());
		
		//Step 3: Get payment method
		try {
			
			PaymentMethod pm=PaymentMethod.retrieve(cb.getPaymentMethodId());
			
			pm.attach(PaymentMethodAttachParams.builder()
					.setCustomer(customer.getId())
					.build());
		}
		catch(CardException e)
		{
			String error=e.getLocalizedMessage();
			
			 StringTokenizer token=new StringTokenizer(error,".");
			 String Exception=token.nextToken();
			
		   throw new StripeExceptions (Exception);
		   
		}

		//Step 4: Update the customer 
		
		CustomerUpdateParams customerUpdateParams=CustomerUpdateParams.builder()
				.setInvoiceSettings(CustomerUpdateParams.InvoiceSettings.builder()
				.setDefaultPaymentMethod(cb.getPaymentMethodId()).build())
				.build();
		
		customer.update(customerUpdateParams);
		
		//Step 5: Create Subscription 
		
		SubscriptionCreateParams subcreateparams= SubscriptionCreateParams.builder()
				               .addItem(SubscriptionCreateParams.Item.builder()
				               .setPrice(cb.getPriceId()).build())
				               .setCustomer(customer.getId())
				               .addAllExpand(Arrays.asList("latest_invoice.payment_intent"))
				               .build();
		
		Subscription sub=Subscription.create(subcreateparams);
		
    
		return sub;
		
	}
}
