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
@Table(name="company_register")
public class CompanyRegister {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	
	@Column(name="company_name")
	private String CompanyName;
	
	@Column(name="company_slag")
	private String CompanySlag;
	
	@Column(name="Activity_Status")
	private String Activitystatus;
	

	@Column(name="user_pic")
	private String userpic;
	
	@Column(name="email")
	private String email;


	public CompanyRegister()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}

	public String getCompanySlag() {
		return CompanySlag;
	}

	public void setCompanySlag(String companySlag) {
		CompanySlag = companySlag;
	}

	public String getActivitystatus() {
		return Activitystatus;
	}

	public void setActivitystatus(String activitystatus) {
		Activitystatus = activitystatus;
	}


	public String getUserpic() {
		return userpic;
	}

	public void setUserpic(String userpic) {
		this.userpic = userpic;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "CompanyRegister [id=" + id + ", CompanyName=" + CompanyName + ", CompanySlag=" + CompanySlag
				+ ", Activitystatus=" + Activitystatus + ", userpic=" + userpic + ", email=" + email + "]";
	}
	



	
	
}
