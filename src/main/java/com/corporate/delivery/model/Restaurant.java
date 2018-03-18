package com.corporate.delivery.model;
 
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
 
@Entity
@Table(name="RESTAURANT")
public class Restaurant {
 
   
    private int id;
    private String name;
    private String city;
    
    
    private String rest_code;
    
   
    private String image;
    
   
  // private Set<RestaurantTime> times;
 
   @NotEmpty
   @Column(name = "rest_code", unique=true, nullable = false)
    public String getRest_code() {
		return rest_code;
	}

	public void setRest_code(String rest_code) {
		this.rest_code = rest_code;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    @Column(name = "name", nullable = false)
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
    
    @NotEmpty
    @Column(name = "city", unique=false, nullable = false)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	@Column(name = "image", unique=true, nullable = false)
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	//@OneToMany(mappedBy="restaurant")
/*	public Set<RestaurantTime> getTimes() {
		return times;
	}

	public void setTimes(Set<RestaurantTime> times) {
		this.times = times;
	}*/
 
        
  
     
}