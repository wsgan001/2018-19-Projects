<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Content-Aware Collaborative Filtering for Location Recommendation</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    

</head>

<body>

    <div id="wrapper">
<center><h2>Content-Aware Collaborative Filtering for Location Recommendation</h2></center>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
            </div>
            
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                       <ul class="nav" id="side-menu">
                       
                         <li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                       
                        <li>
                            <a href="UserHome.jsp"><i class="fa fa-table fa-fw"></i>Home</a>
                        </li>
                        
                         <li>
                            <a href="SearchLocation.jsp"><i class="fa fa-table fa-fw"></i>Search Location</a>
                        </li>
                        
                          <li>
                            <a href="FacebookToken.jsp"><i class="fa fa-table fa-fw"></i>Fetch Facebook Location</a>
                        </li>
                        <li>
                            <a href="FBLocation.jsp"><i class="fa fa-table fa-fw"></i>Current Location From FB</a>
                        </li>
                        <li>
                            <a href="LogoutController"><i class="fa fa-table fa-fw"></i>Logout</a>
                        </li>
                        
                    </ul>
                </div>
                
            </div>
           
        </nav>


         <div id="page-wrapper">
            <div class="row">
               <section class="colorlib-contact" data-section="contact">
                
                <h2 class="text-upper col-md-offset-0" ><b>Recommended Places:</b></h2><br>
                <a class="btn btn-lg btn-success col-md-offset-9"" href="Graph.jsp">Accuracy Graph</a><br><br>
 <form class="subscription-form">
  <div style="margin-left:140px;margin-right:140px">
  <table class="table table-bordered" style="color:black">
  <tr class="danger" style="color:black">
   <th>Location Image</th>
  <th> Location Name</th>
  <th> View Details</th>
 <!--  OR address like '%" + current + "%' AND -->
   </tr>
   <%
   String current = request.getParameter("current");
   HttpSession ss=request.getSession();
   ss.setAttribute("currentcity", current);
   String place="Place";
   Connection con=DBConnection.getConnection();
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select locationid,location,name from tbl_location where city='"+current+"' AND location='"+place+"' ORDER BY rank DESC");
   while(rs.next())
   {
  	 %>
  	 <TR>
 <td><center><img alt="Profile Pic" class="img-rectangle" src="profilepic2.jsp?id=<%=rs.getInt(1) %>"  width="150px" height="150px"/></center></td> 
  	 <td><%=rs.getString(3) %></td>
  	 <td><a href="ViewLocationDetails.jsp?id=<%=rs.getInt(1)%>&name=<%=rs.getString(3)%>"><b>View Details</b></a></td>
  	 </TR>
  	 
  <%} %> 
 
  </table>
  </div>
          
</form>
</section>
</div>
</div>

<div id="page-wrapper">
            <div class="row">
               <section class="colorlib-contact" data-section="contact">
                <h2 class="text-upper col-md-offset-0" ><b>Recommended Hotels:</b></h2><br>
 <form class="subscription-form">
  <div style="margin-left:140px;margin-right:140px">
  <table class="table table-bordered" style="color:black">
  <tr class="danger" style="color:black">
   <th>Location Image</th>
  <th> Location Name</th>
  <th> View Details</th>
   </tr>
   <%
   String current1 = request.getParameter("current");
   String place1="Hotel";
   Statement st1=con.createStatement();
   ResultSet rs1=st1.executeQuery("select locationid,location,name from tbl_location where city='"+current1+"' and location='"+place1+"' ORDER BY rank DESC");
   while(rs1.next())
   {
  	 %>
  	 <TR>
 <td><center><img alt="Profile Pic" class="img-rectangle" src="profilepic2.jsp?id=<%=rs1.getInt(1) %>"  width="150px" height="150px"/></center></td> 
  	 <td><%=rs1.getString(3) %></td>
  	 <td><a href="ViewLocationDetails.jsp?id=<%=rs1.getInt(1)%>"><b>View Details</b></a></td>
  	 </TR>
  	 
  <%} %> 
 
  </table>
  </div>
          
</form>
</section>
</div>
</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
