package com.college.onlineD.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.college.onlineD.models.User;

@Controller
public class FormController {
	
	@RequestMapping(value ="/userForm" ,method=RequestMethod.GET)
	public String getregisterPage(Model model){
		model.addAttribute("user", new User());
		return "userForm";
	}
	@RequestMapping(value ="/userForm" ,method=RequestMethod.POST)
	public String registerPage(Model model){
		model.addAttribute("user", new User());
		return "userForm";
	}
}
		
