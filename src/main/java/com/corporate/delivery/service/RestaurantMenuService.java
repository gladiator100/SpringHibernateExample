package com.corporate.delivery.service;

import java.util.List;

import com.corporate.delivery.model.Menu;
import com.corporate.delivery.model.MenuSection;

public interface RestaurantMenuService {

	List<Menu> getRestaurantMenus(int restaurantId); 
	
	List<MenuSection> getMenuSections(int menuId);
	
	
}
