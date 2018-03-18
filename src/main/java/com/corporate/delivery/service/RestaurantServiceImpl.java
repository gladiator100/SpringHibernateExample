package com.corporate.delivery.service;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corporate.delivery.dao.RestaurantDao;
import com.corporate.delivery.model.Restaurant;
 
@Service("restaurantService")
@Transactional
public class RestaurantServiceImpl implements RestaurantService {
 
    @Autowired
    private RestaurantDao dao;
     
    public Restaurant findById(int id) {
        return dao.findById(id);
    }
       
    public List<Restaurant> getAll() {
        return dao.getAll();
    }
 
          
}