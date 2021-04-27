package com.casbn.payment.jsonbody;

import java.util.ArrayList;
import java.util.List;

import com.casbn.payment.entity.Payment;

public class CustomerCheckResponse {
	
	private String companyName;
	
	private int companyID;

    private String subscriptionId;
    
    private String previousPlan;
    
    private String selectedPlan;
    
    private String cardBrand;
    
    private String lastFour;
    
	
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getPreviousPlan() {
		return previousPlan;
	}

	public void setPreviousPlan(String previousPlan) {
		this.previousPlan = previousPlan;
	}

	public String getSelectedPlan() {
		return selectedPlan;
	}

	public void setSelectedPlan(String selectedPlan) {
		this.selectedPlan = selectedPlan;
	}

	public String getSubscriptionId() {
		return subscriptionId;
	}

	public void setSubscriptionId(String subscriptionId) {
		this.subscriptionId = subscriptionId;
	}

	public String getPlan() {
		return previousPlan;
	}

	public void setPlan(String plan) {
		this.previousPlan = plan;
	}

	public int getCompanyID() {
		return companyID;
	}

	public void setCompanyID(int companyID) {
		this.companyID = companyID;
	}

	public String getCardBrand() {
		return cardBrand;
	}

	public void setCardBrand(String cardBrand) {
		this.cardBrand = cardBrand;
	}

	public String getLastFour() {
		return lastFour;
	}

	public void setLastFour(String lastFour) {
		this.lastFour = lastFour;
	}
    
	
	

	
	
	

}
