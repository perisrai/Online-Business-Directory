<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/footer.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/mainProfile.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Footer -->
	<link rel="stylesheet" href="css/demo.css">
	<link rel="stylesheet" href="css/footer.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/
bootstrap.min.cs">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Profile Page</title>
</head>
<body>
<form action="mainProfile">
<!-- Start navbar 
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
             <li><a href="upload">Upload</a></li>
              <li><a href="email">Contact</a></li>
            <li><a href="gallery">Gallery</a></li>
             <li><a href="email">Email</a></li>
            <li class="active"><a href="${pageContext.request.contextPath}/logout">Logout<span class="sr-only">(current)</span></a></li>
          </ul>
        </div> 
      </div>
    </nav>
    End navbar -->
    <footer class="footer-distributed">

			
<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d113048.06806097849!2d85.26713471285693!3d27.694054983362577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x39eb19977e8433e7%3A0x28a224452715853b!2sgoogle+maps+furniworld!3m2!1d27.6940726!2d85.337175!5e0!3m2!1sen!2snp!4v1517841565224" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-title">
					<h1 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">Company <span>Details</span></h1>
					<hr class="light">
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft" data-wow-offset="50" data-wow-delay="0.9s">
					
      
                </div>
                 <div class="block">
                <h3>Business Name</h3>
                <input type="text" name="bname" class="form-name form-control">
                </div>
                  <div class="block">
                <h3>Contact</h3>
                <input type="text" name="bcontact" class="form-contact form-control">
                </div>
                
                  <div class="block">
                <h3>Location</h3>
                <input type="text" name="blocation" class="form-location form-control">
                </div>
				                         
				                       
                
                <div class="block">
					<h2>Description</h2>
                   <textarea name="bdescription" placeholder="About yourself..." 
				                        				class="form-about-yourself form-control" id="bdescription"></textarea>
      
                </div>
                <div class="block">
                    <h2>Description</h2>
                    <p>Build an eco friendly and economically sustainable society by developing products that are environmental friendly and economic too.</p>
                </div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight" data-wow-offset="50" data-wow-delay="0.6s" align="center">
					<address>
						<p class="address-title">OUR ADDRESS</p>
						<span>Feel free to contact us at following address details. </span>
					</br>
						<p><i class="fa fa-phone"></i> +977- 9813223504</p>
						<p><i class="fa fa-envelope-o"></i> bagmyearth@gmail.com</p>
						<p><i class="fa fa-map-marker"></i> Baneshwor Height, kathmandu, Nepal</p>
						<p><i class="fa fa-globe"></i> www.uzal.com</p>
						<p><i class="fa fa-map-marker"></i> Opening Time: 10am-5pm</p>
						<p><i class="fa fa-map-marker"></i> Established: 1994</p>
					</address>
					<div class="social">
						<ul>
							<li><a href="https://www.facebook.com/bagmyearth/"><i class="fa fa-facebook"></i></a></li>
							<li><a href="http://www.instagram.com/myearthecobags"><i class="fa fa-instagram"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

<div class="footer-left">

				<!-- <h3>Company<span>logo</span></h3> -->


					<strong>Online Business Directory</strong>
				
				<p class="footer-links">
					<a href="home">Home</a>
					.
					<a href="#">Blog</a>
					·
					<a href="#">Pricing</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Faq</a>
					·
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Online Business Directory &copy; 2018</p>
			</div>
			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>NCIT, Balkumari</span>lalitpur,Nepal</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>9852642999</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="#">support@company.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Search as per location , category
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
</form>

</body>
</html>