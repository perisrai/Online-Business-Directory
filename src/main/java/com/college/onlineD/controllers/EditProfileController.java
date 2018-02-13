package com.college.onlineD.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EditProfileController {
private static final Logger logger = LoggerFactory.getLogger(EditProfileController.class);
	
	@RequestMapping(value ="/editBusinessProfile")
	public String editBusiness(Model model){
		logger.info("business details");
		return "editBusinessProfile";
	}
}



