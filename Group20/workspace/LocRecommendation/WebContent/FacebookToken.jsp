<!DOCTYPE html>
<%@page import="com.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Content-Aware Collaborative Filtering
for Location Recommendation</title>

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
<%
			String emailMsg = (String)session.getAttribute("emailMsg");
   			Object uId = session.getAttribute("userId");
			int userId = Integer.parseInt(uId.toString());	
            String name=(String)session.getAttribute("User");
			
		%>
    <div id="wrapper">
<center><h2>Content-Aware Collaborative Filtering
for Location Recommendation</h2></center>
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
            <div class="col-md-5 col-md-offset-3">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Enter Facebook Access Token</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="AddTokenController" method="post">
                            <fieldset>
                                <div class="form-group">
                                  <label>Enter Token</label>
                                    <input class="form-control" name="token" placeholder="Facebook Token" />
                                </div>
                            
                              
                                <br>
                               
                                <br>
                                <button type="submit" class="btn btn-lg btn-success btn-block">Add</button><br>
                               <a href="HowAccessToken.jsp"> How to Get Facebook Token ?</a>
                            </fieldset>
                        </form>
                        
                    </div>
                    </div>
                
            </div>
           



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
