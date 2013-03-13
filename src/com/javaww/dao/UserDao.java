package com.javaww.dao;

import java.util.List;

import com.javaww.model.User;

public interface UserDao {

	public void addUser(User user);
	
	public boolean queryUserByNamePass(User user);
	
	public User queryUserByName(User user);

	public User queryUserById(User user);
	
	public List<User> queryAllUserOrderByScore();
	
	public List<User> queryAllUser();
	
	public void modifyUser(User user);
	
	public void deleteUser(User user);
	
}
