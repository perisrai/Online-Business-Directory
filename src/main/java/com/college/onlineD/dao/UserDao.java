package com.college.onlineD.dao;

import java.util.List;

import com.college.onlineD.models.User;
import com.college.onlineD.models.UserImage;

public interface UserDao {
	
	public  boolean isExist(User user);

	public List<User> searchContent(String searchKey);

	public User getUser(Integer id);

	public List<UserImage> getImage(Integer id);
	
	

}
