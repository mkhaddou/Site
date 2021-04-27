package com.casbn.payment.service;

import java.util.List;
import java.util.StringTokenizer;

import javax.transaction.Transactional;

import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.casbn.payment.dao.CasbnPaymentDAO;
import com.casbn.payment.entity.CompanyRegister;
import com.casbn.payment.entity.Payment;
import com.casbn.payment.entity.SaveDatesEntity;
import com.casbn.payment.entity.Subscribers;
import com.casbn.payment.jsonbody.CustomerCheckResponse;

@Service
public class CasbnServiceImpl implements CasbnService {

	@Autowired
	private CasbnPaymentDAO doa;
	
	@Override
	@Transactional
	public int getCompanyNamendEmail(String name, String email) {
		// TODO Auto-generated method stub
		return doa.getEmailAndName(name, email);
	}

	@Override
	@Transactional
	public CustomerCheckResponse getPaymentDetails(int id) {
		// TODO Auto-generated method stub
		
		return doa.getStripeID(id);
	}

	@Override
	@Transactional
	public boolean savePaymentDetails(Payment p) {
		// TODO Auto-generated method stub
		return doa.savePaymentDetails(p);
	}

	@Override
	@Transactional
	public boolean saveSubscribersDetails(Subscribers sub) {
		// TODO Auto-generated method stub
		return doa.saveSubscribersDetails(sub);
	}

	@Override
	public SaveDatesEntity FormatDates(long date1, long date2) {
		// TODO Auto-generated method stub
		
		long milliseconds1=(date1 * 1_000l);
		long milliseconds2=(date2 * 1_000l);
		
		//Step3: Cast the dates 
		LocalDate Startdate=new DateTime(milliseconds1).toLocalDate();
		
		LocalDate Enddate=new DateTime(milliseconds2).toLocalDate();
		
		DateTimeFormatter dateTimeFormatter
		  = DateTimeFormat.forPattern("yyyy-MM-dd");
		
		
		String StartDate=Startdate.toString();
		String EndDate=Enddate.toString();
		
		String start=dateTimeFormatter.parseDateTime(StartDate).toString();
		String end=dateTimeFormatter.parseDateTime(EndDate).toString();
		

		System.out.println("INFO> Start Date....: "+start);
		System.out.println("INFO> End Date..: "+ end);
		
	    StringTokenizer token=new StringTokenizer(start,"T");
		StringTokenizer token2=new StringTokenizer(end,"T");
		 
		String STARTDATE=token.nextToken();
		String ENDDATE=token2.nextToken();
		 
		System.out.println("INFO> Start Date tokenized....: "+STARTDATE);
		System.out.println("INFO> End Date tokenized..: "+ ENDDATE);
		 
		 SaveDatesEntity save=new SaveDatesEntity(STARTDATE,ENDDATE);
		
		return save;
	}

	

	@Override
	public boolean updateSubscribers(String StartDate,String EndDate,String newplan,int Id) {
		// TODO Auto-generated method stub
		return doa.updateSubscribers(StartDate,EndDate,newplan,Id);
	}

	

	@Override
	public boolean updatePayment(String newPlan, int id) {
		// TODO Auto-generated method stub
	   return doa.updatePaymentDetails(newPlan,id);
	}

	@Override
	public boolean deletePaymentDetails(int Id) {
		// TODO Auto-generated method stub
		return doa.DeletePaymentDetails(Id);
	}

	@Override
	public boolean deleteSubscribers(int Id) {
		// TODO Auto-generated method stub
		return doa.DeleteSubscribersDetails(Id);
	}

}
