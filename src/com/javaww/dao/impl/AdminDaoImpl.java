package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.dao.AdminDao;
import com.javaww.model.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	public void addAdmin(Admin admin) {

		this.getHibernateTemplate().save(admin);
	}

	@SuppressWarnings("unchecked")
	public boolean queryAdmin(Admin admin) {

		List<Admin> adminList = this.getHibernateTemplate().find(
				"from Admin where adminname='" + admin.getAdminname()
						+ "' and adminpwd='" + admin.getAdminpwd()
						+ "' and adminlevel = " + admin.getAdminlevel());

		if (adminList.size() == 1) {

			return true;

		} else {

			return false;
		}
	}

	@SuppressWarnings("unchecked")
	public Admin queryAdminByName(Admin admin) {
		List<Admin> adminList = this.getHibernateTemplate().find(
				"from Admin where adminname='" + admin.getAdminname() + "'");
		Admin admin2 = null;

		if (adminList.size() == 1) {
			admin2 = (Admin) adminList.get(0);
		}
		return admin2;

	}

	@SuppressWarnings("unchecked")
	public List<Admin> queryAllAdmin() {
		List<Admin> adminList = this.getHibernateTemplate().find("from Admin");
		return adminList;
	}

	@SuppressWarnings("unchecked")
	public Admin queryAdminById(Admin admin) {
		List<Admin> adminList = this.getHibernateTemplate().find(
				"from Admin where adminid=" + admin.getAdminid());
		Admin admin2 = null;

		if (adminList.size() == 1) {
			admin2 = (Admin) adminList.get(0);
		}
		return admin2;
	}

	public void deleteAdmin(Admin admin) {

		this.getHibernateTemplate().delete(admin);
	}

}
