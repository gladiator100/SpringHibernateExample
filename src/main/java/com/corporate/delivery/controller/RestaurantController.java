package com.corporate.delivery.controller;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.corporate.delivery.model.Item;
import com.corporate.delivery.model.MenuSection;
import com.corporate.delivery.model.Restaurant;
import com.corporate.delivery.model.Menu;
import com.corporate.delivery.service.RestaurantMenuService;
import com.corporate.delivery.service.RestaurantService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
 
@Controller
@RequestMapping("/rests")
public class RestaurantController {
 
    @Autowired
    RestaurantService restaurantService;
    
    @Autowired
    RestaurantMenuService restaurantMenuService;
     
    @Autowired
    MessageSource messageSource;
 
    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String list(ModelMap model) {
        List<Restaurant> restaurants = restaurantService.getAll();
        List<RestaurantRow> restaurantRows = new ArrayList<RestaurantRow>();
        RestaurantRow rRow = null;
        for(int i = 0; i < restaurants.size(); i += 1) {
        	rRow = new RestaurantRow();
        	
        	Restaurant t = restaurants.get(i);
        	//System.out.println("....." + t.getTimes());
        	
        	rRow.setReastaurantOne(restaurants.get(i));
        	++i;
        	if(i<restaurants.size()) {
        		rRow.setReastaurantSecond(restaurants.get(i));
        	}
        	
        	restaurantRows.add(rRow);
        }
        
        model.addAttribute("restaurants", restaurantRows);
        return "restaurants";
    }
 
    
   @RequestMapping(value = "/menus", method = RequestMethod.GET)
   public  @ResponseBody List<Menu>  getMenus( @RequestParam("id") String restId) {
	    List<Menu>  list = restaurantMenuService.getRestaurantMenus(Integer.parseInt(restId));
   		return list;
    }
    
   @RequestMapping(value = "/sections", method = RequestMethod.GET)
   public  @ResponseBody List<MenuSection>  getMenuSections( @RequestParam("id") String menuId) {
	   List<MenuSection>  list = restaurantMenuService.getMenuSections(Integer.parseInt(menuId));
	   
	   		List<Item> l = new ArrayList<Item>();
		   Item item1 = new Item();
		   item1.setId(1);
		   item1.setName("Low-1");
		   item1.setDescription("Low_1_desc");
		   
		   Item item2 = new Item();
		   item2.setId(2);
		   item2.setName("medium_2");
		   item2.setDescription("Medium_2_desc");
		   
		   Item item3 = new Item();
		   item3.setId(3);
		   item3.setName("Hot-3");
		   item3.setDescription("Hot_3_desc");
		   
		   l.add(item1);
		   l.add(item2);
		   l.add(item3);
		   list.get(0).setItems(l);
		   
		   List<Item> ll = new ArrayList<Item>();
		   Item item11 = new Item();
		   item11.setId(11);
		   item11.setName("Small-11");
		   item11.setDescription("Small_11_desc");
		   
		   Item item12 = new Item();
		   item12.setId(12);
		   item12.setName("medium_12");
		   item12.setDescription("Medium_12_desc");
		   
		   Item item13 = new Item();
		   item13.setId(13);
		   item13.setName("Large-13");
		   item13.setDescription("Large_13_desc");
		   
		   ll.add(item11);
		   ll.add(item12);
		   ll.add(item13);
		   list.get(1).setItems(ll);
		   
		   
  		return list;
	   
   }
    
 }