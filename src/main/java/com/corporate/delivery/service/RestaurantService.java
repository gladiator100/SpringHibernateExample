package com.corporate.delivery.service;
 
import java.util.List;

import com.corporate.delivery.model.Restaurant;
 
public interface RestaurantService {
 
    Restaurant findById(int id);
 
    List<Restaurant> getAll(); 
     
}