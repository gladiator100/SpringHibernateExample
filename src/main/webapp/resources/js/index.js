function clearfields() {
	
            $("#check0").removeAttr('checked');
			$("#check1").removeAttr('checked');
			$("#check2").removeAttr('checked');
			$("#radio0").removeAttr('checked');
			$("#radio1").removeAttr('checked');
			$("#radio2").removeAttr('checked');
            $("#textarea1").val("");
            $("#qty").val("1");
			$("#qty2").val("1");
			$("#display4").val("");
			
        }
function calculate(){
    theTotal = 0;
  
    $("#cartTable #tid td:nth-child(3)").each(function () {
        var val1 = $(this).text();
		var val2 = JSON.parse(val1);
        theTotal += (val2);
    });
    $("#subtotal").html("$"+ theTotal);
}
$(document).ready(function() {
	sum=0;
	
	 $("#choose_restaurant").css("display", "block");
       $("#choose_restaurant").text("Choose Restaurants from Below:");
   
$("input#address").suggest();

	$('#menus').hide();
		
	$('a').on('click', function(e) {
		
		var id = $(this).attr('href');
				
		$.ajax({
      		url: "http://localhost:8080/delivery/rests/menus",
      		type: "GET",
      	    data: { "id" : id},
      		success: function(data){
            	// var d = JSON.parse(data);
				//alert(data);
				//console.log(data);
            	var array =  data;
        		$('#table_menus tr').not(':first').not(':last').remove();
				$("#choose_restaurant").css("display", "none");
				$("#choose_menu").css("display", "block");
				 var select_rest=$("#select_rest td #tryme").text();
				$("#choose_menu").html('<a href="http://localhost:8080/delivery/rests/all" style="text-decoration:none; color:black">&nbsp;&nbsp;&nbsp;&nbsp;<i class="left"></i><b>'+select_rest+'</b></a>');
						var html = '';		
						
						$.each(data, function(key, value) { 
							
							html += '<tr class="btn" data-toggle="modal" data-target="#myModal1" id="dataTable1" valueid="'+value['id']+'" style="white-space:pre-line;text-align:left;border: 1px solid #dadada;">'+
							'<td><label><img style="width:100px;height:70px;" src= "/delivery/resources/images/'+value['menuImage']+'"/></label></td>'+
							'&nbsp();&nbsp();<td style="padding-left: 20px;" id="tryme" value=' + value['id']+'>'+ 
							'<h4><label style="margin-bottom:0px;">' + value['name'] + '</label></h4><label style="font-weight:lighter;">' + value['description']  + 
							'<label></td>&nbsp();&nbsp();<td style="padding-left: 10px;padding-right:10px; padding-bottom:40px;"><h4>'+
							'<label>$' + value['price']+ '</label></h4></td></tr><br/>';
							});
							
				$("#table_menus").on('click', '#dataTable1', function () {
				$("#addcart").css("display", "block");
				$("#updatecart").css("display", "none");
				
             
				var image=$(this).find('label:eq(0)').html();
				var dishname=$(this).find('label:eq(1)').text();
				var description=$(this).find('label:eq(2)').text();
				var dishprice=$(this).find('label:eq(4)').text();

				var img=$(image).attr('src');
				
				
				$("#display1").text(dishname);
                $("#display2").text(dishprice);
			    $("#display3").text(description);
				$("#display4").empty().append('<img style="height:200px;width:300px" src='+img+'/>');
				var price = $("#display2").text().replace("$", "");
				
			    $("#qtycart").text("Add to cart-$" + price);
		});						
				$('#table_menus').last().append(html);
				$('#restaurants').hide();
            	$('#menus').show();
            		// code here
      		},
      		error: function(passParams){
           			alert("inside error " + passParams);
      		}
			//clearfields();
		});

		
	
	
	$("input#address").suggest({
  label : "Formatted address", 
  street_number_input : {
    id : "number",
    label : "Street number"
  },
  street_name_input : {
    id : "street",
    label : "Street"
  },
  zip_input : {
    id : "zip",
    label : "Zip code"
  },
  town_input : {
    id : "town",
    label : "Town"
  },
  department_input : {
    id : "department",
    label : "Department"
  },

    region_input : {
    id : "region",
    label : "Region"
  },

  country_input : {
    id : "country",
    label : "Country"
  }
});
	
	 
	    e.preventDefault();
	
	

		$.ajax({
      		url: 'http://localhost:8080/delivery/rests/sections',
      		type: "GET",
      	    data: { "id" : 1},
      		success: function(data){
            	
        			var html = '';
						var j=0;
						$.each(data, function(key, value) { 
						if(value['type']=="C")
						{
							var j=0;
						    html = "<br/><label id='labelc"+j+"'>"+ value['name'] +'</label>';
							 $('#section_chk').append(html);
							  var array =  value['items'];
							for(i=0;i<array.length;i++)
								{ 
									var tblRow2 = "<td><input type='checkbox' id='check"+i+"' value='"+array[i]['value']+"'" + array[i]['name'] + "/>&nbsp;&nbsp;" + array[i]['name']+"&nbsp;&nbsp;&nbsp;&nbsp;</td>"
									  $(tblRow2).appendTo("#section_chk");  
								}
								j++;
						}
						if(value['type']=="R")
						{
							var j=0;
						    html = "<br/><label id='labelr"+j+"'>"+ value['name'] +'</label>';
							 $('#section_chk').append(html);
							  var array =  value['items'];
							for(i=0;i<array.length;i++)
								{ 
									var tblRow2 = "<td><input type='radio' name='radbutton' id='radio"+i+"' value='"+array[i]['value']+"'" + array[i]['name'] + "/>&nbsp;&nbsp;" + array[i]['name']+"&nbsp;&nbsp;&nbsp;&nbsp;</td>"
									  $(tblRow2).appendTo("#section_chk");  
								}
								j++;
						}
				});
					
      		},
      		error: function(passParams){
           			alert("inside error " + passParams);
      		}
		});
		theTotal= $("#subtotal").text();
		
if(theTotal==0)
{
	$("#showcart1").css("display", "block");
	$("#showcart").css("display", "none");
}
    
	});
	
	$("#qtyplus").click(function (e) {
    
            e.preventDefault();

            fieldName = $(this).attr('field');
            var currentVal = parseInt($('input[name=' + fieldName + ']').val());
            if (!isNaN(currentVal)) {
                $('input[name=' + fieldName + ']').val(currentVal + 1);
            } else {
                $('input[name=' + fieldName + ']').val(0);
            }
            fieldName = $(this).attr('field');
            var quantity = parseInt($('input[name=' + fieldName + ']').val());
            var cost;
			var price = $("#display2").text().replace("$", "");
            cost = (quantity * price);
            $("#qtycart").text("Add to cart - $" + cost);

        });
	
	$("#qtyminus").click(function (e) {
            e.preventDefault();

            fieldName = $(this).attr('field');
            var currentVal = parseInt($('input[name=' + fieldName + ']').val());
            if (!isNaN(currentVal) && currentVal > 0) {
                $('input[name=' + fieldName + ']').val(currentVal - 1);
            } else {
                $('input[name=' + fieldName + ']').val(0);
            }
            fieldName = $(this).attr('field');
            var quantity = parseInt($('input[name=' + fieldName + ']').val());
            var cost;
			var price = $("#display2").text().replace("$", "");
            cost = (quantity * price);
            $("#qtycart").text("Add to cart - $" + cost);
        });
	
		var arr = new Array();
        var count = 1;
        
	 $("#qtycart").click(function () {
		  
            var data1 = ($("#display1").text());
            fieldName = $(this).attr('field');
            var quantity = parseInt($('input[name=' + fieldName + ']').val());
            var cost;
			var price = $("#display2").text().replace("$", "");
            cost = (quantity * price);
			var description= $("#display3").text();
			var image=$("#display4").html();
			var instructions=$("#textarea1").val();
			
			var check0=$("#check0").is(":checked");
			if(check0==true)
			{  
		  check0= $('#check0:checked').val();
			}
			else{
			check0="";
			}
			var check1=$("#check1").is(":checked");
			if(check1==true)
			{ 
		 check1=$('#check1:checked').val();
			}
			else{
			check1="";
			}
			var check2=$("#check2").is(":checked");
			if(check2==true)
			{  
		  check2= $('#check2:checked').val();
			}
			else{
			check2="";
			}
			
			var radio0=$("#radio0").is(":checked");
			if(radio0==true)
			{ 
		 radio0=$('#radio0:checked').val();
			}
			else{
			radio0="";
			}
			var radio1=$("#radio1").is(":checked");
			if(radio1==true)
			{ 
		 radio1=$('#radio1:checked').val();
			}
			else{
			radio1="";
			}
			
			var radio2=$("#radio2").is(":checked");
			if(radio2==true)
			{ 
		 radio2=$('#radio2:checked').val();
			}
			else{
			radio2="";
			}
			
			
            $("#showcart").css("display", "block");
            $("#showcart1").css("display", "none");
			
            $('#cartTable tbody').append("<tr id=changerow"+count+">" + "<td><button class='change btn', id='change'>" + quantity + "</button></td>" +
                 "<td><button class='change btn', id='change'>&nbsp;&nbsp;" + data1 + "</button></td>" +
                 "<td><button class='change btn', id='change'>" + cost + "</button></td><td>" +
				 "<button class='btn delete-item($index)', id='cancel'> X </button>" + "</td>" +
				 "<td style='display: none' id='change'>" + price + "</td>" +
				 "<td style='display: none' id='change'>" + description + "</td>" +
				 "<td style='display: none' id='change'>" + image + "</td>" +
				 "<td style='display: none' id='change'>" + instructions + "</td>" +
				 "<td style='display: none' id='change'>" + check0 + "</td>" +
				 "<td style='display: none' id='change'>" + check1 + "</td>" +
				 "<td style='display: none' id='change'>" + check2 + "</td>" +
				 "<td style='display: none' id='change'>" + radio0 + "</td>" +
				 "<td style='display: none' id='change'>" + radio1 + "</td>" +
				 "<td style='display: none' id='change'>" + radio2 + "</td>" +"</tr>");


          calculate();
	
if(theTotal==0)
	{   
		$("#showcart").css("display", "none");
		$("#showcart1").css("display", "block");
	}
           
			
            clearfields();
			 count++;
        });
		amt="";
		ID="";
		 $('#showcart').on('click', '#change', function () {
             clearfields();
			 
                $("#myModal1").modal('show');
				
				$("#addcart").css("display", "none");
				$("#updatecart").css("display", "block");
		
				var par = $(this).parent().parent();
				ID =$(this).closest('tr').attr('id');
		
				var quantity = par.children("td:nth-child(1)");
                var ditem = par.children("td:nth-child(2)");
                var dcost = par.children("td:nth-child(3)");
				var price = par.children("td:nth-child(5)");
                var description = par.children("td:nth-child(6)");
                var image = par.children("td:nth-child(7)");
				var instructions = par.children("td:nth-child(8)");
				var check0 = par.children("td:nth-child(9)");
                var check1 = par.children("td:nth-child(10)");
                var check2 = par.children("td:nth-child(11)");
				var radio0 = par.children("td:nth-child(12)");
				var radio1 = par.children("td:nth-child(13)");
				var radio2 = par.children("td:nth-child(14)");

				
				 var item_name = $(ditem).text();
                 var item_qty = $(quantity).text();
                var amt = $(dcost).text();
				 var price = $(price).text();
               //var amount=(price*item_qty);
			    var description = $(description).text();
                var image = $(image).html();
				var instructions = $(instructions).text();
				
                var chk0 =$(check0).html();
				var chk1 =$(check1).html();
				var chk2 =$(check2).html();
				var rad0 =$(radio0).html();
				var rad1 =$(radio1).html();
				var rad2 =$(radio2).html();
			
				
				$("#display1").text(item_name);
                $("#qty2").val(item_qty);
                $("#display2").text('$'+price);
                $("#display3").text(description);
				$("#display4").empty().append(image);
				$("#textarea1").text(instructions);
				
				$('#check0').prop('checked', chk0);
				$('#check1').prop('checked', chk1);
				$('#check2').prop('checked', chk2);
				$('#radio0').prop('checked', rad0);
				$('#radio1').prop('checked', rad1);
				$('#radio2').prop('checked', rad2);
				$("#update_qtycart").text("Update to cart - $" + amt);
				
               $("#update_qtycart").click(function () {
				var cost= $("#update_qtycart").text().replace("Update to cart - $", "");
				  cost1=JSON.parse(cost);
				
				var item_qty1= $("#qty2").val();
				var item_name1= $("#display1").text();
				var price1 = $("#display2").text().replace("$", "");
				var price=JSON.parse(price1);
                var description1= $("#display3").text();
				var image1= $("#display4").html();
				var instructions1= $("#textarea1").val();
				var cost3=(price*item_qty1);
				var check0=$("#check0").is(":checked");
			if(check0==true)
			{  
		  check0= $('#check0:checked').val();
			}
			else{
			check0="";
			}
			var check1=$("#check1").is(":checked");
			if(check1==true)
			{ 
		 check1=$('#check1:checked').val();
			}
			else{
			check1="";
			}
			var check2=$("#check2").is(":checked");
			if(check2==true)
			{  
		  check2= $('#check2:checked').val();
			}
			else{
			check2="";
			}
			
			var radio0=$("#radio0").is(":checked");
			if(radio0==true)
			{ 
		 radio0=$('#radio0:checked').val();
			}
			else{
			radio0="";
			}
			var radio1=$("#radio1").is(":checked");
			if(radio1==true)
			{ 
		 radio1=$('#radio1:checked').val();
			}
			else{
			radio1="";
			}
			
			var radio2=$("#radio2").is(":checked");
			if(radio2==true)
			{ 
		 radio2=$('#radio2:checked').val();
			}
			else{
			radio2="";
			}
				$('#'+ID).html("<td><button class='change btn', id='change'>" + item_qty1 + "</button></td>" +
                 "<td><button class='change btn', id='change'>&nbsp;&nbsp;" + item_name1 + "</button></td>" +
                 "<td><button class='change btn', id='change'>" + cost1 + "</button></td><td>" +
				 "<button class='btn delete-item($index)', id='cancel'> X </button>" + "</td>" +
				 "<td style='display: none' id='change'>" + price + "</td>" +
				 "<td style='display: none' id='change'>" + description1 + "</td>" +
				 "<td style='display: none' id='change'>" + image1 + "</td>" +
				 "<td style='display: none' id='change'>" + instructions1 + "</td>"+
				 "<td style='display: none' id='change'>" + check0 + "</td>" +
				 "<td style='display: none' id='change'>" + check1 + "</td>" +
				 "<td style='display: none' id='change'>" + check2 + "</td>" +
				 "<td style='display: none' id='change'>" + radio0 + "</td>" +
				 "<td style='display: none' id='change'>" + radio1 + "</td>" +
				 "<td style='display: none' id='change'>" + radio2 + "</td>" );
			   
			 calculate();
				  });
		if(theTotal==0)
	{   
		$("#showcart").css("display", "none");
		$("#showcart1").css("display", "block");
	}
	});
		
		 $('#showcart').on('click', '#cancel', function (i,d) {

                var par = $(this).parent().parent(); //tr
                var ditem = par.children("td:nth-child(1)");
                var dquantity = par.children("td:nth-child(2)");
                var dprice =par.children("td:nth-child(3)");

				var par = $(this).parent().parent();
				var ID =$(this).closest('tr').attr('id');
		
                var amount=$(dprice).text();
				//alert(amount);
               
				$('#'+ID).empty();
		 calculate();
   if(theTotal==0)
	{   
		$("#showcart").css("display", "none");
		$("#showcart1").css("display", "block");
	}
            });
		 
$("#qtyplus2").click(function (e) {
    
            e.preventDefault();

            fieldName = $(this).attr('field');
            var currentVal = parseInt($('input[name=' + fieldName + ']').val());
            if (!isNaN(currentVal)) {
                $('input[name=' + fieldName + ']').val(currentVal + 1);
            } else {
                $('input[name=' + fieldName + ']').val(0);
            }
            fieldName = $(this).attr('field');
            var quantity = parseInt($('input[name=' + fieldName + ']').val());
            var cost;
			var price = $("#display2").text().replace("$", "");
            cost = (quantity * price);
            $("#update_qtycart").text("Update to cart - $" + cost);

        });
	
	$("#qtyminus2").click(function (e) {
            e.preventDefault();

            fieldName = $(this).attr('field');
            var currentVal = parseInt($('input[name=' + fieldName + ']').val());
            if (!isNaN(currentVal) && currentVal > 0) {
                $('input[name=' + fieldName + ']').val(currentVal - 1);
            } else {
                $('input[name=' + fieldName + ']').val(0);
            }
            fieldName = $(this).attr('field');
            var quantity = parseInt($('input[name=' + fieldName + ']').val());
            var cost;
			var price = $("#display2").text().replace("$", "");
            cost = (quantity * price);
            $("#update_qtycart").text("Update to cart - $" + cost);
        });
		$("#review_order").click(function (e) {
			$("#address").css("display", "none");
			$("#date_time").css("display", "none");
			$("#restAndCartContainer").css("display", "none");
			$("#choose_menu").css("display", "none");
			$("#picture").css("display", "none");
			$("#review").css("display", "block");
			$("#showdiv2").css("display", "block");	
		});
		$("form[name='registration']").validate({
                rules: {
                    firstname: "required",
                    lastname: "required",
                    username: "required",
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                    },
                    confirm_password: {
                        required: true,
                        minlength: 5,
                        equalTo: "#password"
                    }
                },

                messages: {
                    firstname: "Please enter your firstname",
                    lastname: "Please enter your lastname",
                    username: "Please enter your username",
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                    confirm_password: {
                        required: "Should be same as password"

                    },
                    email: "Please enter a valid email address"
                },

                submitHandler: function (form) {
                    form.submit();
                }
            });
});
	
	


	