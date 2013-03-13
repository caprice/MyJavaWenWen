package com.javaww.dao;

import java.util.List;

import com.javaww.model.Item;
import com.javaww.model.SubItem;

public interface SubItemDao {

	public void addSubItem(SubItem subItem);
	
	public void modifySubItem(SubItem subItem);
	
	public List<SubItem> queryAllSubItem();
	
	public List<SubItem> querySubItemByItemId(Item item);
	
	public SubItem querySubItemById(int subid);
	
	public SubItem querySubItemByName(String subname);
	
	public void deleteSubItem(SubItem subItem);
}
