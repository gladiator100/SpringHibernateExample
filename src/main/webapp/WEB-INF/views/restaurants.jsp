<html>
<head>
	<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
	
	<!-- Address LookUp -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/address/css/jquery.address-suggest.css">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/address/js/jquery.address-suggest.js"></script>

	 <link href="${pageContext.request.contextPath}/resources/Content/creditly.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/resources/Content/bootstrap.min.css" rel="stylesheet" />
    
    <script src="${pageContext.request.contextPath}/resources/Scripts/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/Scripts/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/Scripts/creditly.js"></script>
    
	<script src="${pageContext.request.contextPath}/resources/fonts/glyphicons-halflings-regular.eot"></script>
	<script src="${pageContext.request.contextPath}/resources/fonts/glyphicons-halflings-regular.svg"></script>
	<script src="${pageContext.request.contextPath}/resources/fonts/glyphicons-halflings-regular.ttf"></script>
	<script src="${pageContext.request.contextPath}/resources/fonts/glyphicons-halflings-regular.woff"></script>
	

</head>
<body>
<h1 style="text-align:center; color:white;" id="hidden"> I was hidden</h1>
<div class="top_menu">   
 <table width=100% cellpadding=0 id="menu">
  <tr>
    <td width=10%>    </td>
    <td width=10%>    </td>
    <td>  Menu  </td>
    <td>  About  </td>
    <td>  <p>FAQs</p>  </td>
    <td>  <p>Contact</p>  </td>
    <td>  <p>123-456-7890</p>  </td>
    <td>  <p>Login</p>  </td>
   </tr>
  </table>    
 </div>
       
<div class="picture" id="picture"></div>

<div class="where" id='address'>
	 <table  width=100% cellpadding=0 >
		<tr>
			<td width=10%>  
	    		<select>
					<option>Whiteland Corporate Center, Exton</option>
				</select>
	  		</td>
		    <td width=2%></td>
		  	<td><input type="text" class="form-control" id="address" size="70"></td>
		    <td>  <input type="hidden" name="company" placeholder="company">  </td>
		    <td>  <input type="hidden" name="address" placeholder="Street Address" >  </td>
		    <td>  <input type="hidden" name="suiteNo" placeholder="Suite No">  </td>
		    <td>  <input type="hidden" name="city" placeholder="City"></td>
		    <td>  <input type="hidden" name="zip" placeholder="Zip"> </td>
		    <td width=2%></td>
	   </tr>
	   <tr> 
		 	<td><input type="hidden" class="form-control" id="number"></td>
			<td><input type="hidden" class="form-control" id="street"></td>
			<td><input type="hidden" class="form-control" id="zip"></td>
			<td><input type="hidden" class="form-control" id="town"></td>
			<td><input type="hidden" class="form-control" id="department"></td>
			<td><input type="hidden" class="form-control" id="region"></td>
			<td><input type="hidden" class="form-control" id="country"></td>
		</tr>   
  	</table>    
 </Div>
       

<div class="when" id="date_time">   
 	<table border=0 width=100% cellpadding=0 >
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

<div class="chooseRestaurant" id="choose_restaurant" style="display:none">   
</div>  
 
<div class="chooseRestaurant" id="choose_menu" style="display:none">   
 </div>  

 <div id="restAndCartContainer" class = "restAndCartContainer">

 <div id="restaurants" class = "restName">
 
	<table border=1 class="restName" id="restName">
	
	<tr>
	
	<td>
   	<div class="href">
  	<table border=1 align="top" class="restName" id="select_rest">
  	    <c:forEach var="restaurantRow" items="${restaurants}">
    	<tr>
    	
    	 <c:if test="${restaurantRow.reastaurantOne.name != null}">
    	 		
    		<!--	<td><img src="${pageContext.request.contextPath}/resources/images/${restaurantRow.reastaurantOne.image}"/></td> -->
    		
    			<td></td>
    			<td border=1><a href="${restaurantRow.reastaurantOne.id}" id="tryme"><img src="${pageContext.request.contextPath}/resources/images/Chipotale/Chipotale.png"/>${restaurantRow.reastaurantOne.name}
    			
    	 </c:if>	
    	 
    	 <c:if test="${restaurantRow.reastaurantSecond.name != null}">
    		<td>
    		<!-- <img src="${pageContext.request.contextPath}/resources/images/${restaurantRow.reastaurantSecond.image}" /> -->
    		</td>
    		<td border=1><a href="#" title="etc" onclick="getMenus(${restaurantRow.reastaurantSecond.id});"><img src="${pageContext.request.contextPath}/resources/images/ShakeShack/ShakeShack.png"/>${restaurantRow.reastaurantSecond.name} 
    	 </c:if>
    	 
    	</tr>	
    	</c:forEach>	
 		
  	</table>
  	</Div>
  	</td>
  	
  <!--  <td style="padding-right: 10px"> -->	
    	
  </tr>
   </table>
  </Div>
  
  <Div id="div_menus" class = "restName col-md-12">
	   <table class="restName">
	      <tr>
	         <td>
	            <div class="href">
	               <table id="table_menus" align="top" class="restName" style="width:100%">
	               
	                    
	            
	               </table>
	            </Div>
	         </td>
	         <!--  <td style="padding-right: 10px"> -->	
	      </tr>
	  	</table>
	</Div>
  
  
  
  
  
	
	<div class = "cart" class="col-md-push-3" id="showcart" style="display:none;">

	
	<div class="col-md-12" style="font-family:'lucida sans'">
        <br />
        <div class="col-md-12">
		<table border=1 style="width:100%;" >
			<tr><img id="cartLogo" src="${pageContext.request.contextPath}/resources/images/icon_cart.png" />&nbsp;&nbsp;Your Cart</tr>
			<!--<tr><faintLine/></tr>
		
            <!--<h4><b>Your Cart</b></h4>-->
            <hr />

            <table id="cartTable" style="width:100%; align-items:left">
                
                <tbody id="tid" style="width:100%; align-items:left">
				
				</tbody>
            </table>
            <hr />
            <b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subtotal
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="subtotal"></span>
            </b>  <br />
            <button type="submit" name="Review Your Order" id="review_order"
                    class="btn btn-success btn-group-justified">
                Review Your Order
            </button></table>
        </div>
		 </div>
 		 
  	</div> 
	
	<div class = "cart" class="col-md-push-3" id="showcart1">
	<table border=1>
	
	<div class="col-md-12" style="font-family:'lucida sans'">
        <br />
        <div class="col-md-12">
		<table border=1 style="width:100%;">
			<tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="cartLogo" src="${pageContext.request.contextPath}/resources/images/icon_cart.png" />&nbsp;&nbsp;Your Stomach is Empty !</tr>
			<br/>
			<br/>
            <button type="submit" name="Feed Me" id="feed_me"
                    class="btn btn-success btn-group-justified">
                Feed Me 
            </button></table>
        </div>
		 </div>
 		  </table>
  	</div> 
	
	
	 <div class="col-md-12" style="color:black;display:none;" id="review">
	  <div class="col-md-6" id="account">
            <h4><b>Create Account</b></h4> <hr />
            <form action="" name="registration">

                <div class="form-group col-md-6">
                    <label>First name</label>
                    <input type="text" class="form-control" name="firstname" id="firstname">
                </div>
                <div class="form-group col-md-offset-6">
                    <label>Last name</label>
                    <input type="text" class="form-control" name="lastname" id="lastname">
                </div>
                <div class="form-group col-md-12">
                    <label>Username</label>
                    <input type="text" class="form-control" name="username" id="username">
                </div>
                <div class="form-group col-md-12">
                    <label>Email address:</label>
                    <input type="email" class="form-control" name="email" id="email">
                </div>
                <div class="form-group col-md-6">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>
                <div class="form-group col-md-offset-6">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" name="confirm_password" id="confirm_password">
                </div>

                <button class="btn col-md-offset-6" type="submit"> Register</button>
            </form>
      </div>
	 <!--<div id="showdiv2" style="display:none;padding-left:40px"> -->

            <div class="col-md-6" >


                <form class="creditly-card-form">

                    <div class="top-level-wrapper blue-theme-wrapper" id="payment">
                        <section class="creditly-wrapper blue-theme">
                            <div class="credit-card-wrapper" style="background-color:pink">
                                <h4 style="color:black"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment Method</b></h4> <hr/>
                                <div class="first-row form-group">
                                    <div class="col-sm-8 controls">
                                        <label class="control-label" style="color:black">Card Number</label>
                                        <input class="number credit-card-number form-control"
                                               type="text" name="number"
                                               pattern="\d*"
                                               inputmode="numeric" autocomplete="cc-number" autocompletetype="cc-number" x-autocompletetype="cc-number"
                                               placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
                                    </div>
                                    <div class="col-sm-4 controls">
                                        <label class="control-label" style="color:black">CVV</label>
                                        <input class="security-code form-control" ·
                                               inputmode="numeric"
                                               pattern="\d*"
                                               type="text" name="security-code"
                                               placeholder="&#149;&#149;&#149;">
                                    </div>
                                </div>
                                <div class="second-row form-group">
                                    <div class="col-sm-8 controls">
                                        <label class="control-label" style="color:black">Name on Card</label>
                                        <input class="billing-address-name form-control"
                                               type="text" name="name"
                                               placeholder="John Smith">
                                    </div>
                                    <div class="col-sm-4 controls">
                                        <label class="control-label" style="color:black">Expiration</label>
                                        <input class="expiration-month-and-year form-control"
                                               type="text" name="expiration-month-and-year"
                                               placeholder="MM / YY">
                                    </div>
                                </div>
                                <div class="card-type"></div>
                            </div>
                        </section>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="creditly-blue-theme-submit">Proceed to Pay</button>
                    </div>
                </form>
            </div>

       <!-- </div>-->
    </div>
 </div>


<div id="result"></div>
  
  

<div id="popup" title="popupTitle" >
  <p>test me</p>
  
</div>

    <div class="container-fluid col-md-12" id="popupclose">
        <div class="row">
            <div id="myModal1" class="modal fade" >
                <div class="modal-dialog" style="width:700px">
                    <div class="modal-content" class="col-md-12">

                        <div class="modal-header" class="col-md-12">
						
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">

                                &times;
                            </button>

                            <div class="modal-title">
							<span class="col-md-12">
							<div class="col-md-6"><span>
                                <div style="font-size:26px; font-weight:500; padding-bottom:none;" name="display1" id="display1"></div>

                                <div style="font-size:26px; font-weight:500; padding:none; color:blue;" name="display2" id="display2"></div></span>
                           <br/><p &nbsp&nbsp;&nbsp; style="font-size:14px" name="display3" id="display3"></p>
                              
							</div>
							<div class="col-md-6">
							<h4 style="height:200px;width:300px" id="display4" name="display4"></h4>
							</div></span>
							</div>
                        </div>
<br/>
						<div class="modal-body col-md-12" style="color:steelblue; padding-top:inherit; padding-bottom:inherit">
                        <div class="modal-body col-md-12" id="section_chk">
                            <br/>
							
							</div>
                             
                        
				<textarea placeholder="Special instructions" class="form-control" rows="5" cols="15" id="textarea1"></textarea>
				</div>
                        <div class="modal-footer btn-group btn-group-justified" id="addcart">
                            <span class="pull-left">
							 <button  type="button" id="qtyminus" field="quantity" class="glyphicon glyphicon-minus-sign btn btn-group-justified
                                        btn-danger" ></button>
                               
                                <input type="text" name="quantity" value="1" id="qty"/>
                                <button type="button" id="qtyplus" field="quantity" class="glyphicon glyphicon-plus-sign btn btn-group-justified btn-success" ></button> 
								&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" id="qtycart" field="quantity"
                                                                class="btn btn-success btn-group-justified col-md-push-3" data-dismiss="modal">
								
                                   
                                </button>
                           </span>
                        </div>
						
						<div class="modal-footer btn-group btn-group-justified" id="updatecart" style="display:none">
                             <span class="pull-left">
                                <button type="button" id="qtyminus2" field="item_qty" class="glyphicon glyphicon-minus-sign btn btn-group-justified
                                        btn-danger"></button>
                                <input type="text" name="item_qty" id="qty2" value="1">
                                <button type="button" id="qtyplus2" field="item_qty" class="glyphicon glyphicon-plus-sign btn btn-group-justified btn-success"></button>
                                &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" name="update to cart" id="update_qtycart" field="item_qty"
                                                                class="btn btn-success btn-group-justified col-md-push-5" data-dismiss="modal">
                                  
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