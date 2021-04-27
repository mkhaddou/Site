package com.casbn.payment.jsonbody;

public class UpdateDatabaseBody {


	private String selectedPlan;
	
	private String NewSubscriptionId;
	
	private int companyId;
	
	public String getSelectedPlan() {
		return selectedPlan;
	}

	public void setSelectedPlan(String selectedPlan) {
		this.selectedPlan = selectedPlan;
	}

	public String getNewSubscriptionId() {
		return NewSubscriptionId;
	}

	public void setNewSubscriptionId(String newSubscriptionId) {
		NewSubscriptionId = newSubscriptionId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	
}
