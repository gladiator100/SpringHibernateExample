package com.corporate.delivery.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "menu_section")
public class MenuSection {

	private int id;
	private int menuId;
	private String name;
	private List<Item> items;
	private String type;
	
	
  	
	@Id
	@GeneratedValue
	@Column(name = "id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "menuId")
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	
	@Column(name = "name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "SECTION_ITEM_RELATION", joinColumns = { @JoinColumn(name = "sectionId") }, inverseJoinColumns = { @JoinColumn(name = "itemId") })
	public List<Item> getItems() {
		return items;
	}
	
	public void setItems(List<Item> items) {
		this.items = items;
	}
	
	@Column(name = "type")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
