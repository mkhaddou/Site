package com.casbn.payment.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.casbn.payment.jsonbody.SaveDeleteAndUpdateResponse;
import com.casbn.payment.jsonbody.deleteRequestbody;
import com.casbn.payment.service.CasbnService;

@RestController
public class DeleteSubscription {

	@Autowired 
	CasbnService casbnservice;
	
	boolean deleteEntities;
	
	SaveDeleteAndUpdateResponse sdv;
	
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces="application/json")
	public @ResponseBody SaveDeleteAndUpdateResponse delete(@RequestBody deleteRequestbody dr)
	{
		//Step one call payment table delete
		deleteEntities=casbnservice.deletePaymentDetails(dr.getCompanyId());
		
		if(deleteEntities==true)
		{
			deleteEntities=casbnservice.deleteSubscribers(dr.getCompanyId());
		}
		
		if(deleteEntities==true)
		{
			 sdv=new SaveDeleteAndUpdateResponse();
			
			sdv.setOperation("Performed Delete operation on Payment and Subscribers table");
			sdv.setMessage("Successfully Deleted..");
			sdv.setTimeStamp(System.currentTimeMillis());
		}
		else {
            sdv=new SaveDeleteAndUpdateResponse();
			
			sdv.setOperation("Performed Delete operation on Payment and Subscribers table");
			sdv.setMessage("oops somthing went wrong!..");
			sdv.setTimeStamp(System.currentTimeMillis());
		}
		return sdv;
		
	}
}
