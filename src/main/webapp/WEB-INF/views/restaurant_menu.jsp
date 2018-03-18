<html>
<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<link href="${pageContext.request.contextPath}/resources/css/index.css"
    rel="stylesheet">
    
     <link href="${pageContext.request.contextPath}/Content/creditly.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/Content/bootstrap.min.css" rel="stylesheet" />
    
    <script src="${pageContext.request.contextPath}/resources/Scripts/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/Scripts/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/Scripts/creditly.js"></script>
    
    
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="/js/my.js"></script>
	
	
    <title> Delivery System </title>

<style>
	
	$(window).scroll(function() {
                if ($(window).scrollTop() > 50) {
                    $('#cart').addClass('stuck');
                } else {
                    $('#cart').removeClass('stuck');
                }

            });

</style>
</head>
<body>

<div class="top_menu">   
 <table border=0 width=100% cellpadding=0>
  <tr>
    <td width=10%>    </td>
    <td width=10%>    </td>
    <td>  Menu  </td>
    <td>  About  </td>
    <td>  <p>FAQ's</p>  </td>
    <td>  <p>Contact</p>  </td>
    <td>  <p>123-456-7890</p>  </td>
    <td>  <p>Login</p>  </td>
   </tr>
  </table>    
 </div>
       
<div class="picture"></div>

<div class="where">   
 <table border=0 width=100% cellpadding=0>
  
   <tr>
    <td width=10%>    </td>
    <td width=10%>    </td>
    <td width=10%>  <select>
				<option>Test1</option>
			</select>
  	</td>
    <td>  <input type="text" name="company" placeholder="company">  </td>
    <td>  <input type="text" name="address1" placeholder="Street Address" >  </td>
    <td>  <input type="text" name="suiteNo" placeholder="Suite No">  </td>
    <td>  <input type="text" name="city" placeholder="City"></td>
    <td>  <input type="text" name="zip" placeholder="Zip"> </td>
   </tr>
  </table>    
 </div>
       

<div class="when">   
 	<table border=0 width=100% cellpadding=0>
  	 <tr>
  		  <td width=10%>    </td>
    	  <td width=10%>  
	    	  <select>
					<option>Today</option>
					<option>Tomorrow</option>
				</select>
	  	</td>
   
   		<td width=10%>  
   			<select>
				<option>11:30am</option>
				<option>12:30am</option>
			</select>
  		</td>
    <td></td>
    <td></td>
  </table>    
 </div>    

<div class="chooseRestaurant">   
 	<table border=0 width=100% cellpadding=0>
  	 <tr>Choose Restaurants from Below:</tr>
  </table>    
 </div>    

 <div class = "restAndCartContainer">

 <div class = "restName">
	<table border=1 class="restName">
	<tr>
	
	<td>
   	<Div>
  	<table border=1 align="top" class="restName">
  	    <c:forEach var="restaurantRow" items="${restaurants}">
    	<tr>
    	
    	 <c:if test="${restaurantRow.reastaurantOne.name != null}">
    		<td><img src="${pageContext.request.contextPath}/resources/images/${restaurantRow.reastaurantOne.image}" /></td>
    		<td><li>${restaurantRow.reastaurantOne.name}</li><br/> <li>${restaurantRow.reastaurantOne.city}</li></td>
    	 </c:if>	
    	 
    	 <c:if test="${restaurantRow.reastaurantSecond.name != null}">
    		<td><img src="${pageContext.request.contextPath}/resources/images/${restaurantRow.reastaurantSecond.image}" /></td>
    		<td><li>${restaurantRow.reastaurantSecond.name} </li><br/> <li>${restaurantRow.reastaurantSecond.city}</li></td>
    	 </c:if>
    	 
    	</tr>	
    	</c:forEach>	
		
		<tr>
			<h3 style="font-family:'Lucida Sans'" class="text-muted">
            &nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable1">Dish1</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable11">150</label>
            <br />
            <br /> &nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable2">Dish2</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable22">90</label>
            <br />
            <br /> &nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable3">Dish3</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle="modal" data-target="#myModal1" id="dataTable33">120</label>

        </h3>
		</tr>
		 		
  	</table>
  	</Div>
  	</td>
  	
  <!--  <td style="padding-right: 10px"> -->	
    	
  </tr>
   </table>
  </div>
  
	
	<div class = "cart">
	
	<div class="cartLogo">
		<table>
			<tr><img src="${pageContext.request.contextPath}/resources/images/icon_cart.png" /></tr>
			<tr><faintLine/></tr>
		<table>	
	</div>
	
	
 		<table>
		  	<tr>
		    	<td>  Cart1  </td>
		    	<td>  description  </td>
		    
		   	</tr>
		   	<tr>
		     	<td>  cart2 </td>
		    	<td>  description  </td>
		   	</tr>
  		</table>    
  	</div> 
  
 </div>


  <div class="container-fluid" id="popupclose">
        <div class="row">
            <div id="myModal1" class="modal fade">
                <div class="modal-dialog" style="width:470px">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">

                                &times;
                            </button>

                            <div class="modal-title">
                                <h4 class="glyphicon glyphicon-cutlery" &nbsp; style="font-size:22px; font-weight:500" name="display1" id="display1"></h4>
                                <br />
                                <h4 class="glyphicon glyphicon-usd" &nbsp; style="font-size:22px; font-weight:500" name="display2" id="display2"></h4>
                            </div>
                        </div>


                        <div class="modal-body" id="body" style="color:steelblue; padding-top:inherit; padding-bottom:inherit">
                            <h5>
                                <span>
                                    <b>  Choose Salsa Level</b>
                                    <br /><input type="checkbox" id="check1" onclick="myFunction1(this.value)" value="Low" />&nbsp;Low   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="checkbox" id="check1" onclick="myFunction1(this.value)" value="Medium" />&nbsp;Medium&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="checkbox" id="check1" onclick="myFunction1(this.value)" value="High" />&nbsp;High  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span>
                            </h5>
                            <h5>
                                <b>Choose Your Plate</b>
                                <br /><input type="radio" name="r_plate" onclick="myFunction2(this.value)" value="Small" />&nbsp;Small &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="r_plate" onclick="myFunction2(this.value)" value="Medium" />&nbsp;Medium&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="r_plate" onclick="myFunction2(this.value)" value="Large" />&nbsp;Large &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </h5>

                            <h5>
                                <span>
                                    <b>Choose Delivery Speed</b>
                                    <br /><input type="radio" name="r_speed" onclick="myFunction3(this.value)" value="Normal" />&nbsp;Normal &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="r_speed" onclick="myFunction3(this.value)" value="Express" />&nbsp;Express&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span>
                            </h5>

                            <textarea placeholder="Enter description" class="form-control" rows="5" cols="20" id="textarea"></textarea>

                        </div>

                        <div class="modal-footer btn-group btn-group-justified">
                            <span class="pull-left">
                                <button type="button" id="qtyminus" field="quantity" class="glyphicon glyphicon-minus-sign btn btn-group-justified
                                        btn-danger"></button>
                                <input type="text" name="quantity" value="1" id="qty">
                                <button type="button" id="qtyplus" field="quantity" class="glyphicon glyphicon-plus-sign btn btn-group-justified btn-success"></button>
                                &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" name="Add to cart" id="qtycart" field="quantity"
                                                                class="btn btn-success btn-group-justified col-md-push-5" data-dismiss="modal">
                                    Add to cart
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


</body>
</html>