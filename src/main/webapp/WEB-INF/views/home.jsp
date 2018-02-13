<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!DOCTYPE html>
<html lang="en">

    <head>

        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Online Directory</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/form-elements.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/cover.css">
        
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-57-precomposed.png">
        <link rel="backgrounds" href="${pageContext.request.contextPath}/resources/assets/img/backgrounds/1.jpg">
    </head>

    <body>
    <!-- Start navbar -->
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Online Business Directory</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
             <li><a href="login">Login</a></li>
              <li><a href="signup">Signup</a></li>
              <li><a href="admin">Admin</a></li>
               <li><a href="editBusiness">Edit</a></li>
                <li><a href="upload">Upload</a></li>
                 <li><a href="image">Gallery</a></li>
            
            
          </ul>
        </div> 
      </div>
    </nav>
    <!-- End navbar -->
 <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="container">

          

          <div class="inner cover">
            <h1 class="cover-heading">Online Directory</h1>
            <p class="lead">A comprehensive informative website for you to explore new business.</p>
            <p class="lead">
            <form  action="search" method="get" class="login-form">
              <!--  <a href="#" class="btn btn-lg btn-default">Learn more</a>-->
              <input class="form-control mr-sm-2" name="searchkey" type="search" width="400px" placeholder="Search" aria-label="Search"><br/>
               <button class="btn btn-outline-success my-2 my-sm-0"   type="submit">Search</button>
               </form>
            </p>
          </div>

        </div>

      </div>

    </div>
       
    
      
    </body>

</html>