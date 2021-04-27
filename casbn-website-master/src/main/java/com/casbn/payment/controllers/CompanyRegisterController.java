package com.casbn.payment.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.exceptions.CompanyNotFoundException;
import com.casbn.payment.jsonbody.CheckCustomer;
import com.casbn.payment.jsonbody.CustomerCheckResponse;
import com.casbn.payment.service.CasbnService;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Price;
import com.stripe.model.Product;

/**
 * Company Register api       
 * case 1: No Stripe Account But they are registered with Casbn 
 * Case 2: They are our subscribers having an existing plan
 * Case 3: No Stripe Account and not registered with Casbn. 
 * 
 * 
 * @author Santhosh Athreya 
 *
 */


@RestController
@RequestMapping("/api")
public class CompanyRegisterController {

	@Autowired
	private CasbnService casbnservice;
	
	private int companyId;
	
	@Value("${Stripe}")
	private String Key;
	
	@RequestMapping(value="/getCompany", method=RequestMethod.POST,produces="application/json")
	public @ResponseBody CustomerCheckResponse getCompany(@RequestBody CheckCustomer ck ) throws StripeException
	{
		System.out.println("Inside..getcompany..");
		
		String name=ck.getCompanyName();
		String email=ck.getEmail();
		
		System.out.println(name);
		System.out.println(email);
		
		
		
	    companyId=casbnservice.getCompanyNamendEmail(name, email);
	  
	    
		if(companyId>1)
		{
			System.out.println("Inside main IF....");
			CustomerCheckResponse StripeId=casbnservice.getPaymentDetails(companyId);
			
			if(StripeId.getSubscriptionId()==null)
			{
				System.out.println("Inside sub IF..StripeID is null..");
				
				StripeId.setCompanyID(companyId);
				
				return StripeId;
			}
			else {
				// get the values of customer from payment table
				System.out.println("Inside sub else.. StripeID is not Null");
				
				CustomerCheckResponse cck=casbnservice.getPaymentDetails(companyId);
				
				
               // Build a Service to Get the Product Name for the selected PriceID 
				
				//Step1: Stripe API key 
				
				Stripe.apiKey=Key;
				
				//Step2 : Call the Price api from Stripe and get the ProductID
			    String ProductID=Price.retrieve(ck.getSelectedPriceId()).getProduct();
				
				
				//Step3 : call the Product api from Stripe and get the Product Name
			    String SelectedPlan=Product.retrieve(ProductID).getName();
			  
			    
				//Step 4: Set the Selected Plan and company name to CustomerCheckResponse object
			    cck.setSelectedPlan(SelectedPlan);
				cck.setCompanyName(ck.getCompanyName());
				return cck;
			}
			
		}
		else {
	           System.out.println("Inside Main ELSE");
			throw new CompanyNotFoundException("No Company Found! Please Register with us..! By Clicking on the Register Button");
		}

		
	}
}
