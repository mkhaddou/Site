package com.casbn.payment.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="payment")
public class Payment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="stripe_customerID")
	private String stripeId;
	
	@Column(name="payment_methodID")
	private String paymentId;
	
	@Column(name="subcriptionID")
	private String subscriptionId;
	
	@Column(name="Plan")
	private String plan;
	
	

	//@OneToOne(fetch=FetchType.LAZY,cascade= {CascadeType.MERGE,CascadeType.PERSIST,CascadeType.DETACH})
	//@JoinColumn(name="Company_ID")
	//private CompanyRegister companyRegister;
	
	



	public Payment()
	{
		
	}
	
	
	
	public Payment(String stripeId, String paymentId, String subscriptionId, String plan, int companyId) {
		super();
		this.stripeId = stripeId;
		this.paymentId = paymentId;
		this.subscriptionId = subscriptionId;
		this.plan = plan;
		this.companyId = companyId;
	}

	


	//@Override
	//public String toString() {
		//return "Payment [id=" + id + ", stripeId=" + stripeId + ", paymentId=" + paymentId + ", subscriptionId="
				//+ subscriptionId + ", plan=" + plan + ", companyId=" + //companyId + "]";
	//}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStripeId() {
		return stripeId;
	}

	public void setStripeId(String stripeId) {
		this.stripeId = stripeId;
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public String getSubscriptionId() {
		return subscriptionId;
	}

	public void setSubscriptionId(String subscriptionId) {
		this.subscriptionId = subscriptionId;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	@Column(name="Company_ID")
	private int companyId;
	
	
	
	
	
}
