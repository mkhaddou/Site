package com.casbn.payment.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.jsonbody.CreateCustomerBody;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;
import com.stripe.param.CustomerCreateParams;

@RestController
public class Create_Customer {

	//Step 1: get Stripe api key and store it on String 
	@Value("${Stripe}")
	private String key;
	
	
	//Step2: Create method to inject api key and carry out creation of customer
	
	@RequestMapping(value="/create-customer", method=RequestMethod.POST,produces="application/json")
	public @ResponseBody Customer createcustomer(@RequestBody CreateCustomerBody ccb) throws StripeException, JsonProcessingException
	{
		//Step3: inject the key 
		Stripe.apiKey=key;
		
		//Step4: Customer parameter and build the customer
		CustomerCreateParams customerParams=CustomerCreateParams
				                                       .builder()
				                                       .setEmail(ccb.getEmail())
				                                       .setName(ccb.getName())
				                                       .build();
		
		//Step5: Create New Customer
		Customer customer=Customer.create(customerParams);
		
		
		
		//Step6: Map the response and dispatch it to Front Controller
		Map<String,Object> responseData=new HashMap<>();
		responseData.put("customer",customer);
		
		
		//Serialize map object 
		//ObjectMapper mapper=new ObjectMapper();
		
		//String Response=mapper.writerWithDefaultPrettyPrinter().writeValueAsString(responseData);
		
		
		return customer;
		
	}
	

	
}
