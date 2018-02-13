package com.college.onlineD.controllers;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.swing.JOptionPane;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.college.onlineD.dao.FileImageImpl;
import com.college.onlineD.dao.SignupDao;
import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;

@Controller
@RequestMapping("/upload")
@Repository
public class FileUploadController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);
	
	@Autowired
	private DataSource datasource;
	
	@Autowired
	SignupDao signUpDao;
	
	@Autowired
	FileImageImpl fileImage;
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public static String FILE_PATH="D:\\College\\onlineD\\src\\main\\webapp\\resources\\uploaded_images\\";

	@RequestMapping(method = RequestMethod.GET)
	public String uploadPage() {

		return "fileUpload";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String upload(@RequestParam("file") MultipartFile file,Model model,HttpSession session) throws IOException {

		byte[] bytes;
		
		String fullFilePath="resources\\uploaded_images\\"+file.getOriginalFilename();

		if (!file.isEmpty()) {
			bytes = file.getBytes();
			 
			// write in file
			FileOutputStream out = new FileOutputStream(FILE_PATH+file.getOriginalFilename());
			out.write(bytes);
			out.close();
		}
		
		model.addAttribute("successMsg", "File upload Success:" + file.getOriginalFilename());
		
		Long userId=(Long) session.getAttribute("bid");
		
		UserImage u= new UserImage();
		u.setFilePath(fullFilePath);
		
		//UserImage image = (UserImage)session.get(User.class, image.);
        //byte[] bAvatar = avatar2.getImage();
		u.setBid(userId);
		
		
		fileImage.save(u);
		
		model.addAttribute("image", fullFilePath);
		
		
		return "fileUpload";

	}
}
