package com.college.onlineD.controllers;


import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.college.onlineD.dao.SignupDao;
import com.college.onlineD.models.User;

import com.github.javafaker.PhoneNumber;
import com.github.javafaker.Faker;


@Controller
public class SignupController {
	@Autowired
	private SignupDao sudao;
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String getSignupPage(Model model) {
		logger.info("register success");
		model.addAttribute("user", new User());
		return "signup";
	}
	@RequestMapping(value = "/signup", method=RequestMethod.POST)
	public String saveBusiness(@ModelAttribute User u, Model model, HttpSession session){
		
	
		
		
		sudao.registerBusiness(u);
		return "home";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/generate", method = RequestMethod.GET)
	public String generateDirectory(Locale locale, Model model) {
		logger.info("searching the directory", locale);	
		
		
		for(int i=0;i<500;i++){
			Faker faker = new Faker();

			String name = faker.name().fullName(); // Miss Samanta Schmidt
			String firstName = faker.name().firstName(); // Emory
			String lastName = faker.name().lastName(); // Barton
			String phone=faker.phoneNumber().cellPhone();
			String streetAddress = faker.address().streetAddress(); // 60018 Sawayn Brooks Suite 449
			
			User user=new User();
			user.setBcontactno(phone);
			user.setBemail(faker.company().name());
			user.setBname(faker.company().name());
			user.setBdescription(faker.gameOfThrones().quote());
			user.setBlocation(streetAddress);
			sudao.registerBusiness(user);
		}		
		
		return "home";
	}
	
}