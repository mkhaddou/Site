package com.casbn.payment.jsonbody;

public class CheckCustomer {

    private String email;
	
	private String companyName;
	
	private String selectedPriceId;
	
	

	public String getSelectedPriceId() {
		return selectedPriceId;
	}

	public void setSelectedPriceId(String selectedPriceId) {
		this.selectedPriceId = selectedPriceId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
}
