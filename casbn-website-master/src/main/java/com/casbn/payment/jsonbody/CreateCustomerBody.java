package com.casbn.payment.jsonbody;

public class CreateCustomerBody {

	// Declare Fields For creation of stripe Customer 
		//This class is used for converting Json Body from javascript to java object
		
		private String email;
		
		private String name;

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		

		
}
