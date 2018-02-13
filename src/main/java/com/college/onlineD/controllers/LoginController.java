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



import com.college.onlineD.dao.UserDao;
import com.college.onlineD.models.User;
@Controller
public class LoginController {
private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
@Autowired
private UserDao userDao;
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLoginPage() {
		logger.info("inside login page method");
		return "login";
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.POST)
public String checkLogin(@ModelAttribute User  user, Model model, HttpSession session) {
		
		
		
		
		if(userDao.isExist(user)){
			 logger.info(" login success");
			 session.setAttribute("bid", user.getBid());
    	session.setAttribute("busername", user.getBusername());
    	session.setMaxInactiveInterval(10*60);   //close after 10 mins. in not used 
			model.addAttribute("busername", user.getBusername());
			session.setAttribute("bpassword",  user.getBpassword());
	    	model.addAttribute("bpassword", user.getBpassword());
			
		return "mainProfile";

   
			}
			
			logger.info(" login failed");
			return "login";
	
}
@RequestMapping(value="/logout", method = RequestMethod.GET)
public String logout(HttpSession session){
	session.invalidate();
	return "home";
}
}