package com.casbn.payment;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Casbn Payment Application 
 * customer can choose the desired plan and subscriber to 
 * Casbn Inc.
 * 
 * 
 * @author Santhosh Athreya
 *
 */

@SpringBootApplication
public class CasbnPaymentApplication {

	public static void main(String[] args) {
		SpringApplication.run(CasbnPaymentApplication.class, args);
		 
		
		
		System.out.println("Casbn Payment application...");
	}

}
