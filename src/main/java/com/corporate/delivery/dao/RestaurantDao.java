package com.corporate.delivery.dao;
 
import java.util.List;

import com.corporate.delivery.model.Restaurant;
 
public interface RestaurantDao {
 
    Restaurant findById(int id);
 
   List<Restaurant> getAll();
 
     
}