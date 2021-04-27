package com.casbn.payment.controllers;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.jsonbody.RetryInvoiceBody;
import com.casbn.payment.service.CasbnService;
import com.stripe.Stripe;
import com.stripe.exception.CardException;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;
import com.stripe.model.Invoice;
import com.stripe.model.PaymentMethod;
import com.stripe.param.CustomerUpdateParams;
import com.stripe.param.InvoiceRetrieveParams;
import com.stripe.param.PaymentMethodAttachParams;

@RestController
public class RetryInvoice {

	//Step 1: load the stripe key
	
	@Value("${Stripe}")
	private String key;
	
	@Autowired
	private CasbnService casbnservice;
	
	@RequestMapping(value="/retry-invoice",method=RequestMethod.POST,produces="application/json")
	public @ResponseBody Invoice retryInvoice(@RequestBody RetryInvoiceBody Ri) throws StripeException
	{
		//Step 2: Inject the Stripe Key 
		Stripe.apiKey=key;
		
		//Step 3: Carry out the process
		Customer customer = Customer.retrieve(Ri.getCustomerId());
		
		try {
	          //Step 3: Set the default payment method on the customer
	          PaymentMethod pm = PaymentMethod.retrieve(
	            Ri.getPaymentMethodId()
	          );
	          pm.attach(
	            PaymentMethodAttachParams
	              .builder()
	              .setCustomer(Ri.getCustomerId())
	              .build()
	          );
	        } catch (CardException e) {
	          //Step 4: Since it's a decline, CardException will be caught
	          e.getLocalizedMessage();
	        }

	        CustomerUpdateParams customerUpdateParams = CustomerUpdateParams
	          .builder()
	          .setInvoiceSettings(
	            CustomerUpdateParams
	              .InvoiceSettings.builder()
	              .setDefaultPaymentMethod(Ri.getPaymentMethodId())
	              .build()
	          )
	          .build();

	        customer.update(customerUpdateParams);

	        InvoiceRetrieveParams params = InvoiceRetrieveParams
	          .builder()
	          .addAllExpand(Arrays.asList("payment_intent"))
	          .build();

	        Invoice invoice = Invoice.retrieve(
	          Ri.getInvoiceId(),
	          params,
	          null
	        );
		
		
		return invoice;
		
	}
	
	
}
