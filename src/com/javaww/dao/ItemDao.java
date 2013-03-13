package com.javaww.dao;

import java.util.List;

import com.javaww.model.Item;

public interface ItemDao {

	public void addItem(Item item);
	
	public List<Item> queryAllItem();
	
	public void modifyItem(Item item);
	
	public Item queryItemById(int itemid);
	
	public Item queryItemByName(String itemname);
	
	public void deleteItemById(Item item);
}
