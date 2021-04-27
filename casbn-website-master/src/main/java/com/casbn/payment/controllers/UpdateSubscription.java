package com.casbn.payment.controllers;

import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.exceptions.StripeExceptions;
import com.casbn.payment.jsonbody.UpdatePostBody;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Subscription;
import com.stripe.param.SubscriptionUpdateParams;

@RestController
public class UpdateSubscription {

	//Step 1: get Stripe api key and store it on String 
		@Value("${Stripe}")
		private String key;
	
	@RequestMapping(value="/update-subscription", method=RequestMethod.POST,produces="application/json")
	public @ResponseBody Subscription updateSubscription(@RequestBody UpdatePostBody up) throws StripeException
	{
		
		//Step2: inject the key 
		 Stripe.apiKey=key;	
		 
	Subscription subscription;
		//Step3: Retrieve the Subscription
		try {
		 subscription = Subscription.retrieve(
		          up.getSubscriptionId()
		        );
    //Step 4: Create the Parameters for updating 
		
		        SubscriptionUpdateParams params = SubscriptionUpdateParams
		          .builder()
		          .addItem(
		            SubscriptionUpdateParams
		              .Item.builder()
		              .setId(subscription.getItems().getData().get(0).getId())
		              .setPrice(up.getNewPriceId())
		              .build()
		          )
		          .setCancelAtPeriodEnd(false)
		          .build();
		        
      //Step 5: Update the Subscription
		        
		        subscription.update(params);
		}
		catch(StripeException e)
		{
		     String error=e.getLocalizedMessage();
			
			 StringTokenizer token=new StringTokenizer(error,":");
			 String Exception=token.nextToken();
			 
			 throw new StripeExceptions(Exception);
		}
      //Step 6: Return the subscription object.
		        
		        return subscription;
		

		
	}
}
