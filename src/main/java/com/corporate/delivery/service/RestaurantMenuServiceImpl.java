package com.corporate.delivery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corporate.delivery.dao.RestaurantMenuDao;
import com.corporate.delivery.model.Menu;
import com.corporate.delivery.model.MenuSection;

@Service("restaurantMenuService")
@Transactional
public class RestaurantMenuServiceImpl implements RestaurantMenuService {
	
	 @Autowired
	RestaurantMenuDao	restaurantMenuDao;

	public List<Menu> getRestaurantMenus(int restaurantId) {
		return restaurantMenuDao.getRestaurantMenus(restaurantId);
	}

	public List<MenuSection> getMenuSections(int menuId) {
		return restaurantMenuDao.getMenuSections(menuId);
	}

}
