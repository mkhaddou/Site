package com.casbn.payment.entity;

public class SaveDatesEntity {
	
private String StartDate;
	
private	String EndDate;

public SaveDatesEntity()
{
	
}



public SaveDatesEntity(String startDate, String endDate) {
	super();
	StartDate = startDate;
	EndDate = endDate;
}



public String getStartDate() {
	return StartDate;
}

public void setStartDate(String startDate) {
	StartDate = startDate;
}

public String getEndDate() {
	return EndDate;
}

public void setEndDate(String endDate) {
	EndDate = endDate;
}

}
