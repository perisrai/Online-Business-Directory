package com.college.onlineD.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.onlineD.dao.UserDao;
import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;
@Controller
public class MainProfileController {
	@Autowired
	private UserDao userDao;
	
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);
	
	@RequestMapping(value ="/mainProfile", method=RequestMethod.GET)
	public String getMainpage(Model model){
		logger.info("business details");
		return "mainProfile";
	}
	
	@RequestMapping(value = "/mainProfile", method=RequestMethod.POST)
	public String getProfileInfo(@ModelAttribute User u, Model model, HttpSession session, HttpServletRequest request){
	
		
		
		return "mainProfile";
	}
	
	
}



