package com.college.onlineD;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.onlineD.dao.UserDao;
import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchDirectory(@RequestParam String searchKey,Locale locale, Model model) {
		logger.info("searching the directory", locale);	
		
		List<User> users=userDao.searchContent(searchKey);
		
		model.addAttribute("users", users);
		
		
		return "search";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
	public String searchDirectory(@PathVariable Integer id,Locale locale, Model model) {
		logger.info("searching the directory", locale);	
		
		User user=userDao.getUser(id);
		
		model.addAttribute("user", user);
		
		
		return "mainProfile";
	}
	
	@RequestMapping(value = "/image", method = RequestMethod.GET)
	public String getImage(@RequestParam Integer id,Locale locale, Model model) {
		logger.info("getting image", locale);	
		
		List<UserImage> userimages=userDao.getImage(id);
		
		model.addAttribute("userimages", userimages);
		
		
		return "gallery";
	}
	
	
}
