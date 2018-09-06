package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.models.Customer;

@Controller
public class CustomerController {
	@RequestMapping(value="/all/registrationform")
public String getRegistrationFrom(Model model) {
	model.addAttribute("customer",new Customer());
	return "registrationform";
}
@RequestMapping(value="/all/registercustomer")
		public String registerCustomer() {
		System.out.println(customer);
		//Call DAO to persist customer details
	return "login";
}
}
