package com.javaww.bean;

import java.util.List;

import com.javaww.model.Item;
import com.javaww.model.SubItem;

public class ItemBean {

	private Item item;
	
	private List<SubItem> subItemList;

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public List<SubItem> getSubItemList() {
		return subItemList;
	}

	public void setSubItemList(List<SubItem> subItemList) {
		this.subItemList = subItemList;
	}
}