package com.corporate.delivery.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "restaurant_menu")
public class Menu {
	
	 private int id;
	 
	 private int restId;
	 
	 private String name;
	 
	 private String description;
	 
	 private int price;
	 
	 private String menuImage;
	 
	 private List<MenuSection> sections;

	@Id
	@GeneratedValue
	@Column(name = "id") 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "restId") 
	public int getRestId() {
		return restId;
	}

	public void setRestId(int restId) {
		this.restId = restId;
	}

	@Column(name = "name") 
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "description") 
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Column(name = "price") 
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	/*@OneToMany(mappedBy="menu")
	public List<MenuSection> getSections() {
		return sections;
	}*/

	public void setSections(List<MenuSection> sections) {
		this.sections = sections;
	}

	@Column(name = "menu_Image") 
	public String getMenuImage() {
		return menuImage;
	}

	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}

}
