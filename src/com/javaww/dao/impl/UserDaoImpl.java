package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.dao.UserDao;
import com.javaww.model.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public void addUser(User user) {

		this.getHibernateTemplate().save(user);
	}

	@SuppressWarnings("unchecked")
	public boolean queryUserByNamePass(User user) {

		List<User> userList = this.getHibernateTemplate().find("from User where userpwd='"+ user.getUserpwd() +"' and username='"+ user.getUsername() +"'");
		
		if(userList.size() == 1) {
			
			return true;
			
		}else {
			
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	public User queryUserByName(User user) {
		
		List<User> userList = this.getHibernateTemplate().find("from User where username='"+ user.getUsername() +"'");
		User user2 = null;
		
		if(userList.size() == 1){
			user2 = (User) userList.get(0);
		}
		return user2;
	}

	@SuppressWarnings("unchecked")
	public List<User> queryAllUserOrderByScore() {
		List<User> userList = this.getHibernateTemplate().find("from User order by integral desc");
		return userList;
	}

	public void modifyUser(User user) {

		this.getHibernateTemplate().update(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> queryAllUser() {
		List<User> userList = this.getHibernateTemplate().find("from User");
		return userList;
	}

	@SuppressWarnings("unchecked")
	public User queryUserById(User user) {
		List<User> userList = this.getHibernateTemplate().find("from User where userid="+ user.getUserid());
		User user2 = null;
		
		if(userList.size() == 1){
			user2 = (User) userList.get(0);
		}
		return user2;
	}

	public void deleteUser(User user) {

		this.getHibernateTemplate().delete(user);
	}
}
