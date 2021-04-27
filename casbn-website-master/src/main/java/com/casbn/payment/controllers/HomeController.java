package com.casbn.payment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homepage()
	{
		System.out.println("Inside..homepage controller..");
		return "index";
		
	}
	
	@RequestMapping("/ourproduct")
	public String aboutpage()
	{
		return "about";
	}
	
	@RequestMapping("/blog")
	public String blogpage()
	{
		return "blog";
	}
	
	@RequestMapping("/Contact")
	public String contactpage()
	{
		return "Contact";
	}
	
	@RequestMapping("/privacypolicy")
	public String privacypolicypage()
	{
		return "privacypolicy";
	}
		
	@RequestMapping("/pricing")
	public String pricingpage()
	{
		return "pricing";
	}
	
	@RequestMapping("/provideEmail")
	public String provideEmail()
	{
		return "ProvideEmail";
	}
	
	@RequestMapping("/paymentForm")
	public String paymentFormPage()
	{
		return "paymentForm";
	}
	
	@RequestMapping("/invoice")
	public String invoicePage()
	{
		return "invoice";
	}
	
	@RequestMapping("/successpage")
	public String successPage()
	{
		return "successPage";
	}

	@RequestMapping("/oldcustomer")
	public String OldCustomer()
	{
		return "OldCustomer";
	}
}
