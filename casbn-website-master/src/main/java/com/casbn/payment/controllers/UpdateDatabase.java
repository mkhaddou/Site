package com.casbn.payment.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.entity.Payment;
import com.casbn.payment.entity.SaveDatesEntity;
import com.casbn.payment.entity.Subscribers;
import com.casbn.payment.jsonbody.SaveDeleteAndUpdateResponse;
import com.casbn.payment.jsonbody.UpdateDatabaseBody;
import com.casbn.payment.service.CasbnService;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Product;
import com.stripe.model.Subscription;



@RestController
public class UpdateDatabase {

	@Value("${Stripe}")
	private String key;
	
	@Autowired
	private CasbnService casbnservice;
	
	boolean b;
	
	SaveDeleteAndUpdateResponse sdv;
	
	@RequestMapping(value="/update", method=RequestMethod.POST,produces="application/json")
	public @ResponseBody SaveDeleteAndUpdateResponse update(@RequestBody UpdateDatabaseBody ub) throws StripeException
	{
		
		
		//Step one save details in Payment table 
		
				Stripe.apiKey=key;
				//Step1: get plan name..
				
				//String Plan=Product.retrieve(ub.getProductId()).getName();
				
				//Step2: Start date and End time of plan..
				long startat=Subscription.retrieve(ub.getNewSubscriptionId()).getCurrentPeriodStart();
				
				long endat=Subscription.retrieve(ub.getNewSubscriptionId()).getCurrentPeriodEnd();
				
				//Step3: call the service class to format the dates
				SaveDatesEntity dates=casbnservice.FormatDates(startat, endat);
				
				
				
				//call the service class
				 b=casbnservice.updatePayment(ub.getSelectedPlan(),ub.getCompanyId());
				
				System.out.println("UPDATED in payment table: "+ b);
				
				if(b==true)
				{
					// save in subscribers table..
					
					boolean a=casbnservice.updateSubscribers(dates.getStartDate(),dates.getEndDate(),ub.getSelectedPlan(),ub.getCompanyId());
					
					System.out.println("UPDATED in subscribers table: "+ b);
					
				}
				if(b==true)
				{
					sdv=new SaveDeleteAndUpdateResponse();
					
					sdv.setOperation("Performed Update operation on Payment and Subscribers table");
					sdv.setMessage("Successfully Updated..");
					sdv.setTimeStamp(System.currentTimeMillis());
				}
				else
				{
					sdv=new SaveDeleteAndUpdateResponse();
					
					sdv.setOperation("Performed Update operation on Payment and Subscribers table");
					sdv.setMessage("oops somthing went wrong!..");
					sdv.setTimeStamp(System.currentTimeMillis());
					
				}
				
				
				return sdv;
				
			}
	}

