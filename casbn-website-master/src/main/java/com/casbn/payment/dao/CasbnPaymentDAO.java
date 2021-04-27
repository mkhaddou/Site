package com.casbn.payment.dao;

import com.casbn.payment.entity.Payment;
import com.casbn.payment.entity.Subscribers;
import com.casbn.payment.jsonbody.CustomerCheckResponse;

public interface CasbnPaymentDAO {


	public int getEmailAndName(String CompanyName,String email);
	
	public CustomerCheckResponse getStripeID(int id);
	
	public boolean savePaymentDetails(Payment p);
	
	public boolean saveSubscribersDetails(Subscribers sub);
	
	public void setForiegnkey();
	
	public boolean updatePaymentDetails(String newPlan,int id);
	
	public boolean updateSubscribers(String StartDate,String EndDate,String newplan,int Id);
	
	public boolean DeletePaymentDetails(int Id);
	
	public boolean DeleteSubscribersDetails(int Id);
	
	
	
	
}
