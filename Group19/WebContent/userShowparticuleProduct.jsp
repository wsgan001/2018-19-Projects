<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="com.project.daoFactory.DaoFactory"%>
<%@page import="com.project.dao.BookDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.beans.UserBeans"%>
<html>
<head>
<title>Mining Algorithm to archive High utility item set using TKO with TKU | User Show Book Details  </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<script src="js/simpleCart.min.js"> </script>
<script src="js/amcharts.js"></script>	
<script src="js/serial.js"></script>	
<script src="js/light.js"></script>	
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
   <!--pie-chart--->
<script src="js/pie-chart.js" type="text/javascript"></script>

  
  
 
</head> 

<%

int userId=0;
String userName=null;

UserBeans userBeans=(UserBeans)session.getAttribute("userSessionInfomation");

userName=userBeans.getUser_name();

userId=userBeans.getId();

%>

<%
ResultSet rs=(ResultSet)session.getAttribute("usershowBookViewSession");

%>

<%
BookDao bookDao=DaoFactory.getInstancesBook();

ResultSet rs2=null;

%>
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
			<!-- top_bg -->
						<div class="top_bg">
						
						
						
							
								<div class="header_top">
									<div class="top_right">
										<ul>
											<!-- <li><a href="contact.html">help</a></li>| -->
											<li><a href="contactUs.jsp">Contact</a></li>|
											
										</ul>
									</div>
									<div class="top_left">
										<h2><span></span> Call us : 032 2352 782</h2>
									</div>
										<div class="clearfix"> </div>
								</div>
							
						</div>
					<div class="clearfix"></div>
				<!-- /top_bg -->
				</div>
				<div class="header_bg">
						
							<div class="header">
								<div class="head-t">
									<div class="logo">
										<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""> </a>
									</div>
										<!-- start header_right -->
									<div class="header_right">
									
								<!-- 	<div class="search">
										<form>
											<input type="text" value="" placeholder="search...">
											<input type="submit" value="">
										</form>
									</div> -->
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					
				</div>
					<!-- //header-ends -->
				
				<!--content-->
			<div class="content">
<div class="women_main">
	<!-- start content -->


	<div class="row single">
				<div class="det">
				  <div class="single_left">
					<div class="grid images_3_of_2">
						<div class="flexslider">
							        <!-- FlexSlider -->
										<script src="js/imagezoom.js"></script>
										  <script defer="" src="js/jquery.flexslider.js"></script>
										<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">

										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  });
										});
										</script>
									<!-- //FlexSlider-->

							   <%while(rs.next()){
					//id, brand_name, product_name, SKU, SRP, gross_weirth, net_weigth, recylared, low_fat, units_pre, Case_pre, shelf_heigth, shelf_width, shelf_depth %>
							
						  <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 1200%; transition-duration: 0.6s; transform: translate3d(-864px, 0px, 0px);"><li data-thumb="books/<%=rs.getInt(2) %>.jpg" class="clone" aria-hidden="true" style="width: 288px; float: left; display: block;">
								   <div class="thumb-image"> <img src="books/<%=rs.getInt(2) %>.jpg" data-imagezoom="true" class="img-responsive" draggable="false"> </div>
								</li>
								
								
								<li data-thumb="books/<%=rs.getInt(2) %>.jpg" style="width: 288px; float: left; display: block;" class="flex-active-slide">
								   <div class="thumb-image"> <img src="books/<%=rs.getInt(2) %>.jpg" data-imagezoom="true" class="img-responsive" draggable="false"> </div>
								</li>
								
							  </ul></div><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>
				  </div>
				 
				  <div class="desc1 span_3_of_2">
					<h3><%=rs.getString(3) %></h3>
					<span class="brand"> Product Name  : <a href="#"><%=rs.getString(3) %> </a></span>
					<br>
					<span class="code">SKU  <%=rs.getString(4) %></span>
					
					
						<span class="code">SRP  <%=rs.getString(5) %></span>
					
						<div class="price">
							<span class="text">gross_weirth:</span>
							<span class="price-new"><%=rs.getString(15) %></span> 
							
						</div>
						
						
						<%
						
						rs2=bookDao.bookInfomationGet(rs.getString(3), rs.getString(6));
						
						while(rs2.next()){
							
							//id, book_name, book_author, book_infomation, book_category
						
						%>
							<span class="code">Book Information: <%=rs2.getString(4)%></span>
							
							<%}
							%>
						
					<%-- 	<div class="btn_form">
						<a href="UserProductOrderController?bookId=<%=rs.getInt(2)%>&userId=<%=rs.getInt(7)%>">buy</a>
					</div> --%>
					
					<div class="btn_form">
						<a href="UserProductFinalOrderController?bookId=<%=rs.getInt(2)%>&userId=<%=rs.getInt(7)%>">buy</a>
					</div>
					
					
					
					<div class="btn_form">
						 <a href="BookAddToCardController?book_id=<%=rs.getInt(2)%>">Add to card</a>  
					</div>
					<%
				  }
					%>
					
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
          	 
			
	       </div>		
	  </div>

	<!-- end content -->
	<div class="foot-top">
	
	
				
	
</div>
<jsp:include page="footer.jsp"></jsp:include>
</div>

</div>
			<!--content-->
		</div>
</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                               <div class="menu">
									<ul id="menu" >
										<li><a href="UserCheckSessionController"><i class="fa fa-tachometer"></i> <span>Home</span></a></li>
										
										<li><a href="UserViewProfileController?userId=<%=userId%>"><i class="fa fa-tachometer"></i> <span><%=userName %></span></a></li>
										 <li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span>Select Brands </span> <span class="fa fa-angle-right" style="float: right"></span></a>
										   <ul id="menu-academico-sub" >
										   
											<li id="menu-academico-avaliacoes" ><a href="userSelectProductByCategoryController">By Brands </a></li>
											
																					
										  </ul>
										</li>
										
										<li><a href="UserSelectProductForSearchingController"><i class="fa fa-tachometer"></i> <span>Search Brands </span></a></li>
										
									<li><a href="userChangePassword.jsp"><i class="fa fa-tachometer"></i> <span>Change Password</span></a></li>
									
								    <li><a href="UserLogoutController"><i class="fa fa-tachometer"></i> <span>Logout</span></a></li>
							       
									
								  </ul>
									
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->
   <!-- real-time -->
<script language="javascript" type="text/javascript" src="js/jquery.flot.js"></script>
	<script type="text/javascript">

	$(function() {

		// We use an inline data source in the example, usually data would
		// be fetched from a server

		var data = [],
			totalPoints = 300;

		function getRandomData() {

			if (data.length > 0)
				data = data.slice(1);

			// Do a random walk

			while (data.length < totalPoints) {

				var prev = data.length > 0 ? data[data.length - 1] : 50,
					y = prev + Math.random() * 10 - 5;

				if (y < 0) {
					y = 0;
				} else if (y > 100) {
					y = 100;
				}

				data.push(y);
			}

			// Zip the generated y values with the x values

			var res = [];
			for (var i = 0; i < data.length; ++i) {
				res.push([i, data[i]])
			}

			return res;
		}

		// Set up the control widget

		var updateInterval = 30;
		$("#updateInterval").val(updateInterval).change(function () {
			var v = $(this).val();
			if (v && !isNaN(+v)) {
				updateInterval = +v;
				if (updateInterval < 1) {
					updateInterval = 1;
				} else if (updateInterval > 2000) {
					updateInterval = 2000;
				}
				$(this).val("" + updateInterval);
			}
		});

		var plot = $.plot("#placeholder", [ getRandomData() ], {
			series: {
				shadowSize: 0	// Drawing is faster without shadows
			},
			yaxis: {
				min: 0,
				max: 100
			},
			xaxis: {
				show: false
			}
		});

		function update() {

			plot.setData([getRandomData()]);

			// Since the axes don't change, we don't need to call plot.setupGrid()

			plot.draw();
			setTimeout(update, updateInterval);
		}

		update();

		// Add the Flot version string to the footer

		$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
	});

	</script>
<!-- /real-time -->
<script src="js/jquery.fn.gantt.js"></script>
    <script>

		$(function() {

			"use strict";

			$(".gantt").gantt({
				source: [{
					name: "Sprint 0",
					desc: "Analysis",
					values: [{
						from: "/Date(1320192000000)/",
						to: "/Date(1322401600000)/",
						label: "Requirement Gathering", 
						customClass: "ganttRed"
					}]
				},{
					name: " ",
					desc: "Scoping",
					values: [{
						from: "/Date(1322611200000)/",
						to: "/Date(1323302400000)/",
						label: "Scoping", 
						customClass: "ganttRed"
					}]
				},{
					name: "Sprint 1",
					desc: "Development",
					values: [{
						from: "/Date(1323802400000)/",
						to: "/Date(1325685200000)/",
						label: "Development", 
						customClass: "ganttGreen"
					}]
				},{
					name: " ",
					desc: "Showcasing",
					values: [{
						from: "/Date(1325685200000)/",
						to: "/Date(1325695200000)/",
						label: "Showcasing", 
						customClass: "ganttBlue"
					}]
				},{
					name: "Sprint 2",
					desc: "Development",
					values: [{
						from: "/Date(1326785200000)/",
						to: "/Date(1325785200000)/",
						label: "Development", 
						customClass: "ganttGreen"
					}]
				},{
					name: " ",
					desc: "Showcasing",
					values: [{
						from: "/Date(1328785200000)/",
						to: "/Date(1328905200000)/",
						label: "Showcasing", 
						customClass: "ganttBlue"
					}]
				},{
					name: "Release Stage",
					desc: "Training",
					values: [{
						from: "/Date(1330011200000)/",
						to: "/Date(1336611200000)/",
						label: "Training", 
						customClass: "ganttOrange"
					}]
				},{
					name: " ",
					desc: "Deployment",
					values: [{
						from: "/Date(1336611200000)/",
						to: "/Date(1338711200000)/",
						label: "Deployment", 
						customClass: "ganttOrange"
					}]
				},{
					name: " ",
					desc: "Warranty Period",
					values: [{
						from: "/Date(1336611200000)/",
						to: "/Date(1349711200000)/",
						label: "Warranty Period", 
						customClass: "ganttOrange"
					}]
				}],
				navigate: "scroll",
				scale: "weeks",
				maxScale: "months",
				minScale: "days",
				itemsPerPage: 10,
				onItemClick: function(data) {
					alert("Item clicked - show some details");
				},
				onAddClick: function(dt, rowId) {
					alert("Empty space clicked - add an item!");
				},
				onRender: function() {
					if (window.console && typeof console.log === "function") {
						console.log("chart rendered");
					}
				}
			});

			$(".gantt").popover({
				selector: ".bar",
				title: "I'm a popover",
				content: "And I'm the content of said popover.",
				trigger: "hover"
			});

			prettyPrint();

		});

    </script>
		   <script src="js/menu_jquery.js"></script>
</body>
</html>