package com.casbn.payment.jsonbody;

public class UpdatePostBody {

	private String subscriptionId;
	
	private String newPriceId;

	public String getSubscriptionId() {
		return subscriptionId;
	}

	public void setSubscriptionId(String subscriptionId) {
		this.subscriptionId = subscriptionId;
	}

	public String getNewPriceId() {
		return newPriceId;
	}

	public void setNewPriceId(String newPriceId) {
		this.newPriceId = newPriceId;
	}
	
	
}
