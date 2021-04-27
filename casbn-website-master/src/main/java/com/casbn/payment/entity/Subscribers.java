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
@Table(name="subscribers")
public class Subscribers {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="Company_Name")
	private String companyName;
	
	@Column(name="Plan")
	private String plan;
	
	@Column(name="Registered_Date")
	private String registeredDate;
	
	@Column(name="Valid_Till")
	private String validTill;

	


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	@Column(name="company_ID")
	private int companyId;
	
	
	//@OneToOne(fetch=FetchType.LAZY,cascade= {CascadeType.MERGE,CascadeType.PERSIST,CascadeType.DETACH})
	//@JoinColumn(name="company_ID")
	//private CompanyRegister companyRegister;
	
	
	public Subscribers()
	{
		
	}


	public Subscribers(String companyName, String plan, String registeredDate, String validTill, int companyId) {
		super();
		this.companyName = companyName;
		this.plan = plan;
		this.registeredDate = registeredDate;
		this.validTill = validTill;
		this.companyId = companyId;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getPlan() {
		return plan;
	}


	public void setPlan(String plan) {
		this.plan = plan;
	}


	public String getRegisteredDate() {
		return registeredDate;
	}


	public void setRegisteredDate(String registeredDate) {
		this.registeredDate = registeredDate;
	}


	public String getValidTill() {
		return validTill;
	}


	public void setValidTill(String validTill) {
		this.validTill = validTill;
	}


	public int getCompanyId() {
		return companyId;
	}


	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	
	
	
}
