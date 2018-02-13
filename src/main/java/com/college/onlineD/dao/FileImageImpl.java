package com.college.onlineD.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.college.onlineD.models.UserImage;

@Repository
public class FileImageImpl {
	
	private static final Logger logger = LoggerFactory.getLogger(FileImageImpl.class);
	
	@Autowired
	SignupDao signUpDao;
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public void save(UserImage u) {
		logger.info("inserting image successfull");
		Session dbSession = sessionFactory.getCurrentSession();
		dbSession.save(u);
	}

}
