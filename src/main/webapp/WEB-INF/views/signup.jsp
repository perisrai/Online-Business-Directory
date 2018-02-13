<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
       String bname = request.getParameter("bname");
   session.setAttribute("bname", bname);
         String address2 = request.getParameter("Address2");
     session.setAttribute("address2", address2);
  String blocation = request.getParameter("blocation");
     session.setAttribute("blocation", blocation);
     String description =
    	      request.getParameter("description");
    	      session.setAttribute("description", description);
     %>
    
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login &amp; Register Templates</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/form-elements.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
        

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-57-precomposed.png">
 <link rel="backgrounds" href="${pageContext.request.contextPath}/resources/assets/img/backgrounds/1.jpg">
    </head>

    <body>

     
      
                   
                        
                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>
                        	
                        <div class="col-sm-5">
                        	
                        	<div class="form-box">
                        		<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>REGISTER YOUR BUSINESS</h3>
	                            		
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-pencil"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <form role="form" action="signup" method="post" class="registration-form">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="bname">Business name</label>
				                        	<input type="text" name="bname" placeholder="Type your Business Name" class="businessname form-control" id="bname">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="bcontactno">Contact no</label>
				                        	<input type="text" name="bcontactno" placeholder="Valid mobile number eg. 9841...." class="contactno form-control" id="bcontactno">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="bemail">Email</label>
				                        	<input type="text" name="bemail" placeholder="Your email address" class="email form-control" id="bemail">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="blocation">Address</label>
				                        	<input type="text" name="blocation" placeholder="Your Address" class="address form-control" id="blocation">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="bdescription">About yourself</label>
				                        	<textarea name="bdescription" placeholder="About yourself..." 
				                        				class="form-about-yourself form-control" id="bdescription"></textarea>
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="busername">Username</label>
				                        	<input type="text" name="busername" placeholder="Type your username" class="username form-control" id="busername">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="bpassword">Password</label>
				                        	<input type="password" name="bpassword" placeholder="Create a new password" class="password form-control" id="bpassword">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="bcpassword">Confirm Password</label>
				                        	<input type="password" name="bcpassword" placeholder="Confirm your password" class="cpassword form-control" id="bcpassword">
				                        </div>
				                       
				                         <div class="form-group">
				                         	<label class="container">
				                        	<input type="checkbox">
 											 <span class="checkmark"></span>I agree to User Agreement and Privacy Policy of our website.
 											</label>
				                 			</div>
				                 			<button type="submit" class="btn">Sign me up!</button>
				                 			
				             			
				                    </form>
			                    </div>
                        	</div>
                        	
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>

        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
        				<p>Made by Anli Zaimi at <a href="http://azmind.com" target="_blank"><strong>AZMIND</strong></a> 
        					having a lot of fun. <i class="fa fa-smile-o"></i></p>
        			</div>
        			
        		</div>
        	</div>
        </footer>

        <!-- Javascript -->
        <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>