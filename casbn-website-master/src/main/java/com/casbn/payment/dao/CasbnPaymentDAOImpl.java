package com.casbn.payment.dao;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.casbn.payment.entity.Payment;
import com.casbn.payment.entity.Subscribers;
import com.casbn.payment.exceptions.CompanyNotFoundException;
import com.casbn.payment.jsonbody.CustomerCheckResponse;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentMethod;

@Repository
public class CasbnPaymentDAOImpl implements CasbnPaymentDAO {

	private EntityManager entityManager;
	private int thevalue;
	
	@Value("${Stripe}")
	private String Key;
	
	@Autowired
	public CasbnPaymentDAOImpl(EntityManager theentityManager)
	{
		entityManager=theentityManager;
	}
	
	@Override
	@Transactional
	public int getEmailAndName(String CompanyName, String email) throws CompanyNotFoundException {
	
		//get current session using hibernate class
		Session currentSession=entityManager.unwrap(Session.class);
		
		Query theQuery=
				currentSession.createQuery(" SELECT c.id from CompanyRegister c where email=: Email and CompanyName=: companyName ");
		theQuery.setParameter("Email", email);
		theQuery.setParameter("companyName",CompanyName);
		
	
	     
	     Object chck=theQuery.uniqueResult();  
	     
	     System.out.println("RESULT companyID: "+ chck);
	     
	     if(chck==null)
	     {
	    	 System.out.println("WARNING:LINE 55-Throwing ERROR");
	    	  throw new CompanyNotFoundException("No Company Found! Please Register with us..! By Clicking on the Register Button");
	     }
	     else {
	    	 System.out.println("inside else...");
	    	 thevalue=(Integer)chck;
	    	 return thevalue;
	     }
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public CustomerCheckResponse getStripeID(int id) {
		// TODO Auto-generated method stub
		
		Session currentSession=entityManager.unwrap(Session.class);
		
		
		//Hard Code for setting up the companyID
		
		
		Query theQuery=currentSession.createQuery("SELECT p.plan from Payment p  where companyId=: id");
		theQuery.setParameter("id", id);
	
		String Plan = (String)theQuery.uniqueResult();
		
		Query  query=currentSession.createQuery(" SELECT p.subscriptionId FROM  Payment p  WHERE companyId =:id ");
		query.setParameter("id", id);
		
		String SubId=(String)query.uniqueResult();
		
		Query  thequery=currentSession.createQuery(" SELECT p.paymentId FROM  Payment p  WHERE companyId =:id ");
		thequery.setParameter("id", id);
	
		String payId=(String)thequery.uniqueResult();
		
		
		//Retrieve card details using 
		
		Stripe.apiKey=Key;
		
		String brand = null;
		String last4 = null;
		
		try {
			
			PaymentMethod pm=PaymentMethod.retrieve(payId);
			
			 brand=pm.getCard().getBrand();
			 last4=pm.getCard().getLast4();
			
		} catch (StripeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println("Result: "+ Plan);
		System.out.println("Result: "+ SubId);
		
		
		
		CustomerCheckResponse cck=new CustomerCheckResponse();
		cck.setCompanyID(id);
		cck.setPlan(Plan);
		cck.setSubscriptionId(SubId);
		cck.setCardBrand(brand);
		cck.setLastFour(last4);
		
		
		//Payment thePaymentTable=currentSession.get(Payment.class, id);
		
		return cck;
	}

	@Override
	public boolean savePaymentDetails(Payment p) {
		// TODO Auto-generated method stub
		
		
		Session currentSession=entityManager.unwrap(Session.class);
		try {
			currentSession.saveOrUpdate(p);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean saveSubscribersDetails(Subscribers sub) {
		// TODO Auto-generated method stub
		
		Session currentSession=entityManager.unwrap(Session.class);
		
		try {
			
			//Query query=currentSession.createSQLQuery("SET FOREIGN_KEY_CHECKS=0");
			//query.uniqueResult();
			
			currentSession.save(sub);
			
			//Query query2=currentSession.createSQLQuery("SET FOREIGN_KEY_CHECKS=1");
			//query.uniqueResult();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public void setForiegnkey() {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional
	public boolean updatePaymentDetails(String newPlan,int Id) {
		// TODO Auto-generated method stub
		Session currentSession=entityManager.unwrap(Session.class);
		try {
			System.out.println("Inside..update payment..");
			
			Query thequery=currentSession.createQuery("SELECT p.id from Payment p WHERE companyId=: id");
			thequery.setParameter("id", Id);
			
			int id=(int)thequery.uniqueResult();
			
			String updatePlan="UPDATE Payment SET plan = :newPlan WHERE id= :id";
			
			Query theQuery=currentSession.createQuery(updatePlan);
			
			theQuery.setParameter("newPlan", newPlan);
			theQuery.setParameter("id", id);
			
			int updateEntity=theQuery.executeUpdate();
			

		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}
	

	@Override
	@Transactional 
	public boolean updateSubscribers(String StartDate,String EndDate,String newPlan,int Id) {
		// TODO Auto-generated method stub
		
		
		Session currentSession=entityManager.unwrap(Session.class);
		try {
			System.out.println("Inside..updateSubscribers..");
			
			//Step1: Get the id of table 
			Query thequery=currentSession.createQuery("SELECT s.id from Subscribers s WHERE companyId=: id");
			thequery.setParameter("id", Id);
			
			int id=(int)thequery.uniqueResult();
			
			//step2: update the table based on row..
			String updateSubscribers="UPDATE Subscribers SET plan= :newPlan, registeredDate= :RDate, validTill= :VDate WHERE id= :id";
		
			Query theQuery=currentSession.createQuery(updateSubscribers);
			theQuery.setParameter("newPlan", newPlan);
			theQuery.setParameter("RDate", StartDate);
			theQuery.setParameter("VDate", EndDate);
			theQuery.setParameter("id", id);
			
			
			int updateSubscriber=theQuery.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	@Transactional
	public boolean DeletePaymentDetails(int Id) {
		// TODO Auto-generated method stub
		Session currentSession=entityManager.unwrap(Session.class);
		try {
		
		//Step 1 : get the row id from companyiD	
		Query thequery=currentSession.createQuery("SELECT p.id from Payment p WHERE companyId=: id");
		thequery.setParameter("id", Id);
		
		int id=(int)thequery.uniqueResult();
		
		//Step 2: delete the row..
		String delete="DELETE FROM Payment WHERE id = :id";
		
		Query theQuery=currentSession.createQuery(delete);
		theQuery.setParameter("id", id);
		
		int deleted=theQuery.executeUpdate();
		
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	
	}

	@Override
	@Transactional
	public boolean DeleteSubscribersDetails(int Id) {
		// TODO Auto-generated method stub
		
		Session currentSession=entityManager.unwrap(Session.class);
		try {
			System.out.println("Inside..delete Subscribers..");
			
			//Step1: Get the id of table 
			Query thequery=currentSession.createQuery("SELECT s.id from Subscribers s WHERE companyId=: id");
			thequery.setParameter("id", Id);
			
			int id=(int)thequery.uniqueResult();
			
			//Step 2: delete the row..
			String delete="DELETE FROM Subscribers WHERE id =: id";
			
			Query theQuery=currentSession.createQuery(delete);
			theQuery.setParameter("id", id);
			
			int deleted=theQuery.executeUpdate();
			
			
			return true;
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}


	}
	

}
