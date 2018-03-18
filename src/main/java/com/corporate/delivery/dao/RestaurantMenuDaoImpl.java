package com.corporate.delivery.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.corporate.delivery.model.Menu;
import com.corporate.delivery.model.MenuSection;

@Repository("restaurantMenuDao")
public class RestaurantMenuDaoImpl extends AbstractDao<Integer, Menu> implements RestaurantMenuDao {

	public List<Menu> getRestaurantMenus(int restaurantId) {
		Query query = this.getSession().createQuery("from Menu m where m.restId = " + new Integer(restaurantId));
		List<Menu> list = query.list();
		return list;
	}

	public List<MenuSection> getMenuSections(int menuId) {
		Query query = this.getSession().createQuery("from MenuSection ms where ms.menuId = " + new Integer(menuId));
		List<MenuSection> list = query.list();
		return list;
	}

}
