package com.college.onlineD.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;

@Repository
public class UserDaoImpl implements UserDao {

	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	@Autowired
	private DataSource datasource;
	
	@Override
	public boolean isExist(User  user) {
		
		JdbcTemplate temp = new JdbcTemplate(datasource);
		
		String  sql = "select busername from  user where busername = '"+ user.getBusername()+"' and bpassword = '"+ user.getBpassword()+"' ";
	try{	
       String un =	temp.queryForObject(sql, String.class);
		
       if(un!= null && !un.equals("")){
    	   return true;
       }
       
	}catch (Exception e){
		e.printStackTrace();
	}
       return false;
	}
	
	@Override
	public List<User> searchContent(String searchKey) {
		JdbcTemplate temp = new JdbcTemplate(datasource);

		String sql = "select * from  businessinfo  where busername  like '%" + searchKey + "%' or blocation like '%"
				+ searchKey + "%' or bname like '%"	+ searchKey + "%' or bdescription like '%"
				+ searchKey + "%'";
		try {
			
			List<User> users=temp.query(sql, new BeanPropertyRowMapper(User.class));
			logger.info("{}"+users.size());
			for(User user:users){
				logger.info("{}"+user);
			}
			return users;

		} catch (Exception e) {
			e.printStackTrace();
			 JOptionPane.showMessageDialog(null, "I am happy.");
		}
		return new ArrayList<User>();

	}

	@Override
	public User getUser(Integer id) {
		JdbcTemplate temp = new JdbcTemplate(datasource);

		String sql = "select * from  businessinfo  where bid = "+ id ;
		try {
			
			User user=temp.queryForObject(sql, new BeanPropertyRowMapper(User.class));
			logger.info("{}"+user);
			
			return user;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new User();
	}

	
	@Override
	public List<UserImage> getImage(Integer id) {
		JdbcTemplate temp = new JdbcTemplate(datasource);

		String sql = "select * from  userImage  where bid = "+ id ;
		try {
			
			List<UserImage> userimages=temp.query(sql, new BeanPropertyRowMapper(UserImage.class));
			logger.info("{}"+userimages.size());
			
			return userimages;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ArrayList<UserImage>();

	}
}
