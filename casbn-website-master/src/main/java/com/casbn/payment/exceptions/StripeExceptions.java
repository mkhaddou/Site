package com.casbn.payment.exceptions;

public class StripeExceptions extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public StripeExceptions(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public StripeExceptions(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public StripeExceptions(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

}
