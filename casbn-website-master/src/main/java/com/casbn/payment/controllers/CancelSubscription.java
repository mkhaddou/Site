package com.casbn.payment.controllers;

import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.exceptions.StripeExceptions;
import com.casbn.payment.jsonbody.CancelBody;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Subscription;

/**
 * Customer can cancel the subscription on or before the validity date.
 * Stripe Subscription is passed to the api below to carry out the operation
 * @param Subscription ID
 * @author Santhosh Athreya 
 *
 */

@RestController
public class CancelSubscription {

	@Value("${Stripe}")
	private String key;
	
	@RequestMapping(value="/cancel-subscription",method=RequestMethod.POST,produces="application/json")
	public @ResponseBody Subscription cancel(@RequestBody CancelBody cb) throws StripeException
	{
		
		Stripe.apiKey=key;
		Subscription deletedSubscription;
		try {
			
		
		  Subscription subscription = Subscription.retrieve(
		          cb.getSubscriptionId()
		        );

		         deletedSubscription = subscription.cancel();
		        
		}
		catch(StripeException e)
		{
		     String error=e.getLocalizedMessage();
			
			 StringTokenizer token=new StringTokenizer(error,":");
			 String Exception=token.nextToken();
			 
			 throw new StripeExceptions(Exception);
		}
		
		return deletedSubscription;
		
	}
}
