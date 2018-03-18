package com.corporate.delivery.dao;

import java.util.List;

import com.corporate.delivery.model.Menu;
import com.corporate.delivery.model.MenuSection;

public interface RestaurantMenuDao {

	List<Menu> getRestaurantMenus(int restaurantId); 
	
	List<MenuSection> getMenuSections(int menuId); 
}
