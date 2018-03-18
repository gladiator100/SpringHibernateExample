
DROP database expressDelivery;

 Create database expressDelivery;
 CREATE USER 'sky'@'localhost' IDENTIFIED BY 'sky';
grant all privileges on expressDelivery.* to sky@'%' identified by 'sky';

Use expressDelivery;

CREATE TABLE RESTAURANT(
    id INT NOT NULL auto_increment, 
    name VARCHAR(50) NOT NULL,
    rest_code  VARCHAR(30) NULL UNIQUE,
    city VARCHAR(30) NOT NULL,
    image VARCHAR(250),
    PRIMARY KEY (id)
);

CREATE TABLE RESTAURANT_MENU(
    id INT NOT NULL auto_increment, 
		restId INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(400),
    menu_image VARCHAR(100),
    price DOUBLE(40,2) default 0,
    PRIMARY KEY (id),
	CONSTRAINT FK_RESTAURANT_MENU FOREIGN KEY (restId) REFERENCES RESTAURANT(id)
);


CREATE TABLE MENU_SECTION(
					id INT NOT NULL auto_increment,
					menuId INT NOT NULL,
				  name VARCHAR(150) NOT NULL,
    	  	description VARCHAR(400),
		      type CHAR(1),
					PRIMARY KEY (id),
				CONSTRAINT FK_MENU_SECTION FOREIGN KEY( menuId) REFERENCES RESTAURANT_MENU(id)
);			

	
	CREATE TABLE FOOD_ITEM(
					id INT NOT NULL auto_increment,
			  		name VARCHAR(150) NOT NULL,
					category VARCHAR (100),
					PRIMARY KEY (id)
	);	
	
		CREATE TABLE SECTION_ITEM_RELATION (
					id INT NOT NULL auto_increment,	
					sectionId INT NOT NULL,
			  	itemId	INT NOT NULL,		
					PRIMARY KEY (id),
					CONSTRAINT FK_SECTION_ITEM_RELATION_1 FOREIGN KEY( sectionId) REFERENCES MENU_SECTION(id),
					CONSTRAINT FK_SECTION_ITEM_RELATION_2 FOREIGN KEY( itemId) REFERENCES FOOD_ITEM(id)
		);					
					
		CREATE TABLE RESTAURANT_TIME (
			id INT NOT NULL auto_increment,	
			restId INT NOT NULL,
			day varchar(10) NOT NULL,
			start_time	TIME,
			end_time	TIME,
			PRIMARY KEY (id),
			CONSTRAINT FK_RESTAURANT_TIME FOREIGN KEY (restId) REFERENCES RESTAURANT(id)
		);
		
					
					
					
					