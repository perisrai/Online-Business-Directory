package com.college.onlineD.controllers;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.college.onlineD.models.Admin;


@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	
	
		@RequestMapping(value="/admin", method=RequestMethod.GET)
		public String getAdminLoginPage() {
			logger.info("inside login page method");
			return "admin";
		}
		

		@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public String checkAdminLogin(@ModelAttribute Admin  admin, Model model, HttpSession session) {
			if (admin.getAdmin_username().equals("peris") && admin.getAdmin_password().equals("peris")){
				 logger.info(" login success");
	    	
				
			return "mainProfile";

	   
				}
				
				logger.info(" login failed");
				return "login";
		
	}
	@RequestMapping(value="/adminlogout", method = RequestMethod.GET)
	public String adminlogout(HttpSession session){
		session.invalidate();
		return "home";
	}

}

