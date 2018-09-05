package com.niit.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.ProductDao;

@Controller
public class HomeController {
	@Autowired
private ProductDao productDao;	
	
public HomeController(){
	System.out.println("HomeController bean is instantiated");
}
//http://localhost:8080/project1frontend/home - This request will be handled
//by this handler method homePage()
@RequestMapping(value="/home")
public String homePage(HttpSession session){
	session.setAttribute("categories",productDao.getAllCategories());
	return "home";
}
@RequestMapping(value="/aboutus")
public String aboutusPage(){
	return "aboutus";
}
}


