package com.casbn.payment.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
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
import com.casbn.payment.jsonbody.SavePostBody;
import com.casbn.payment.service.CasbnService;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Product;
import com.stripe.model.Subscription;

@RestController
public class SaveDetails {

	@Value("${Stripe}")
	private String key;
	
	@Autowired
	private CasbnService casbnservice;
	
	@RequestMapping(value="/save", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody String saveDetails(@RequestBody SavePostBody save) throws StripeException, ParseException
	{
		//Step one save details in Payment table 
		
		Stripe.apiKey=key;
		//Step1: get plan name..
		
		System.out.println("DATA FROM REQUEST BODY!! :"+ save.getCompanyId() + "|" + save.getPaymentMethodId() + "|" + save.getProductId());
		
			
		String Plan=Product.retrieve(save.getProductId()).getName();
		
		//Step2: Start date and End time of plan..
		long startat=Subscription.retrieve(save.getSubscriptionId()).getCurrentPeriodStart();
		
		long endat=Subscription.retrieve(save.getSubscriptionId()).getCurrentPeriodEnd();
		
		//Step3: call the service class to format the dates
		SaveDatesEntity dates=casbnservice.FormatDates(startat, endat);
		
		//Save in payment table
		Payment p=new Payment();
		
		p.setStripeId(save.getCustomerId());
		p.setSubscriptionId(save.getSubscriptionId());
		p.setPaymentId(save.getPaymentMethodId());
		p.setCompanyId(save.getCompanyId());
		p.setPlan(Plan);
		
		//call the service class
		boolean b=casbnservice.savePaymentDetails(p);
		
		System.out.println("DATA SAVED in payment table: "+ b);
		
		if(b==true)
		{
			// save in subscribers table..
			Subscribers subs=new Subscribers();
			
			subs.setCompanyId(save.getCompanyId());
			subs.setCompanyName(save.getCompanyName());
			subs.setPlan(Plan);
			subs.setRegisteredDate(dates.getStartDate());
			subs.setValidTill(dates.getEndDate());
			
			boolean a=casbnservice.saveSubscribersDetails(subs);
			
			System.out.println("DATA SAVED in subscribers table: "+ b);
			
		}
		
		String message="Saved";
		
		return message;
		
	}
}
