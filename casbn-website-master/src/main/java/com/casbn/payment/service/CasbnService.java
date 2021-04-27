package com.casbn.payment.service;

import com.casbn.payment.entity.Payment;
import com.casbn.payment.entity.SaveDatesEntity;
import com.casbn.payment.entity.Subscribers;
import com.casbn.payment.jsonbody.CustomerCheckResponse;

public interface CasbnService {

public int getCompanyNamendEmail(String name,String email);

public CustomerCheckResponse getPaymentDetails(int id);

public boolean savePaymentDetails(Payment p);

public boolean saveSubscribersDetails(Subscribers sub);

public SaveDatesEntity FormatDates(long date1,long date2);

public boolean updatePayment(String newPlan,int id);

public boolean updateSubscribers(String StartDate,String EndDate,String newPlan,int Id);

public boolean deletePaymentDetails(int Id);

public boolean deleteSubscribers(int Id);


}
