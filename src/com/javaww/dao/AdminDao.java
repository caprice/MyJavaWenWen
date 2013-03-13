package com.javaww.dao;

import java.util.List;

import com.javaww.model.Admin;

public interface AdminDao {

	public void addAdmin(Admin admin);
	
	public boolean queryAdmin(Admin admin);
	
	public Admin queryAdminByName(Admin admin);
	
	public List<Admin> queryAllAdmin();
	
	public Admin queryAdminById(Admin admin);
	
	public void deleteAdmin(Admin admin);
}
