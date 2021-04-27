package com.casbn.payment.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class CompanyExceptionHandler {
  
	@ExceptionHandler
	public ResponseEntity<CompanyExceptionResponse> handleException(CompanyNotFoundException ex)
	{
		
		CompanyExceptionResponse res=new CompanyExceptionResponse();
		
		res.setStatus(HttpStatus.NOT_FOUND.value());
		res.setMessage(ex.getMessage());
		res.setTimestamp(System.currentTimeMillis());
		
		return new ResponseEntity<>(res,HttpStatus.NOT_FOUND);
		
	}
	
	@ExceptionHandler
	public ResponseEntity<CompanyExceptionResponse> handleException(Exception ex)
	{
		
		CompanyExceptionResponse res=new CompanyExceptionResponse();
		
		res.setStatus(HttpStatus.BAD_REQUEST.value());
		res.setMessage(ex.getMessage());
		res.setTimestamp(System.currentTimeMillis());
		
		return new ResponseEntity<>(res,HttpStatus.BAD_REQUEST);
		
	}
	
	@ExceptionHandler
	public ResponseEntity<StripeExceptionResponse> handleException(StripeExceptions ex)
	{
		
		StripeExceptionResponse res=new StripeExceptionResponse();
		
		res.setStatus(HttpStatus.BAD_REQUEST.value());
		
		res.setError(ex.getLocalizedMessage());
		
		res.setTimestamp(System.currentTimeMillis());
		
		return new ResponseEntity<>(res,HttpStatus.BAD_REQUEST);
		
	}
	
}
