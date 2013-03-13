package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.model.Item;
import com.javaww.model.SubItem;

public class SubItemDaoImpl extends HibernateDaoSupport implements
		com.javaww.dao.SubItemDao {

	public void addSubItem(SubItem subItem) {

		this.getHibernateTemplate().save(subItem);
	}

	public void modifySubItem(SubItem subItem) {

		this.getHibernateTemplate().update(subItem);
	}

	@SuppressWarnings("unchecked")
	public List<SubItem> queryAllSubItem() {
		List<SubItem> subItemList = this.getHibernateTemplate().find("from SubItem");
		
		return subItemList;
	}

	@SuppressWarnings("unchecked")
	public List<SubItem> querySubItemByItemId(Item item) {
		
		List<SubItem> subItemList = this.getHibernateTemplate().find("from SubItem where itemid=" + item.getItemid());
		return subItemList;
	}

	@SuppressWarnings("unchecked")
	public SubItem querySubItemById(int subid) {
		
		List<SubItem> subItemList = this.getHibernateTemplate().find("from SubItem where subid = " + subid);
		SubItem subItem = null;
		
		if(subItemList.size() == 1){
			subItem = (SubItem) subItemList.get(0);
		}
		return subItem;
	}

	@SuppressWarnings("unchecked")
	public SubItem querySubItemByName(String subname) {

		List<SubItem> subItemList = this.getHibernateTemplate().find("from SubItem where subname = '" + subname + "'");
		SubItem subItem = null;
		
		if(subItemList.size() == 1){
			subItem = (SubItem) subItemList.get(0);
		}
		return subItem;
	}

	public void deleteSubItem(SubItem subItem) {

		this.getHibernateTemplate().delete(subItem);
	}

}
