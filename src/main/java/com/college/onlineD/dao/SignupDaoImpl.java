package com.college.onlineD.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.college.onlineD.controllers.LoginController;
import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;

@Repository
public class SignupDaoImpl implements SignupDao{
	@Resource
	private SessionFactory sessionFactory;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Override
	@Transactional
	public void registerBusiness(User u) {
		logger.info("insert record successfull");
		Session session = sessionFactory.getCurrentSession();
		session.save(u);

	}
	
	

}
