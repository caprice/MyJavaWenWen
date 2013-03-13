package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.dao.ItemDao;
import com.javaww.model.Item;

public class ItemDaoImpl extends HibernateDaoSupport implements ItemDao {

	public void addItem(Item item) {
		
		this.getHibernateTemplate().save(item);
	}

	public void modifyItem(Item item) {

		this.getHibernateTemplate().update(item);
	}

	@SuppressWarnings("unchecked")
	public List<Item> queryAllItem() {
		
		List<Item> itemList = this.getHibernateTemplate().find("from Item");
		
		return itemList;
	}

	@SuppressWarnings("unchecked")
	public Item queryItemById(int itemid) {

		List<Item> itemList = this.getHibernateTemplate().find("from Item where itemid=" + itemid);
		Item item = null;
		
		if(itemList.size() == 1){
			item = (Item) itemList.get(0);
		}
		return item;
	}

	@SuppressWarnings("unchecked")
	public Item queryItemByName(String itemname) {

		List<Item> itemList = this.getHibernateTemplate().find("from Item where itemname='" + itemname + "'");
		Item item = null;
		
		if(itemList.size() == 1){
			item = (Item) itemList.get(0);
		}
		return item;
		
	}

	public void deleteItemById(Item item) {

		this.getHibernateTemplate().delete(item);
	}
}
