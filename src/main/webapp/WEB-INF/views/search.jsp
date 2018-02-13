<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/profile.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/businessInfo.css">
</head>
<body>
	<div id="search-results">
		<div class="listwrap">
		<c:if test="${not empty users}">
					<c:forEach items="${users}" var="user">
			<div class="list">				
						<div class=" row table-row sp-starter">
							<span class="sp-badge sp-badge-starter tooltip-trg" title=""></span>


							<div class="col-md-9 col-sm-9 col-xs-12 listright">
								<div class=" listleft">
									<div class="list_img">
										<a href="https://bhetincha.com/nh-travels-and-tours"
											title="View details of NH Travels And Tours"
											class="list-logo-a"> <img
											src="https://bhetincha.com/files/thumb/18249/200/200/fit"
											class="list-logo img-responsive">
										</a>
									</div>
									<div class="list_cat">Travel And Tours</div>
								</div>
								<div class="list_brief">
									<div class="list_title">
										<a href="https://bhetincha.com/nh-travels-and-tours"
											title="View details of NH Travels And Tours">${user.bname}<i
											class="verifiedicon" title="Verified"> <img
												src="https://bhetincha.com/static/doko_blue/images/verifiedbig.png"></i>
										</a>
									</div>
									<div class="list_desc">
										<div style="color: #000;">
											<strong>Deals in</strong> : travel, nepal tour, tours, travel
											and tour, travels and…
										</div>
									</div>
									<div class="list_info">
										<div class="row">
											<div class="col-md-12">
												<div class="list-info-item">
													<i class=" fa fa-user"></i> Shyam Panday [9840311014]
												</div>
											</div>
											<div class="col-md-12">
												<div class="list-info-item">
													<a data-toggle="modal" href="#" class="gmap-link"
														data-lat="27.714914" data-lng="85.290405"
														data-placement="right"
														title="View this address on Google Map"
														onclick="return doko.v0SrtIHNCU(this, { title: 'Address Map - NH Travels And Tours', showsubmit: false, method: 'gmap', widerwidth : true, gmap: { show: true, height: '400px', width: '100%', bubble: '', markertitle: '' }})"><i
														class="fa fa-map-marker"></i></a> Bijeshwori, Swoyambhu,
													Kathmandu
												</div>
												<span style="float: right;"> <a
													style="color: green; text-decoration: underline;"
													href="${pageContext.request.contextPath}/profile/${user.bid}"
													title="View Profie of NH Travels And Tours"> View
														Profile </a></span>
											</div>
										</div>
									</div>
								</div>
								<!-- eo hover overlay -->
							</div>
				




				<div class="col-md-3 col-sm-3 col-xs-12 listcontact">
					<div class="list_info">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-6">
								<div class="list-info-item">
									<a href="tel:${user.bcontactno}"> <i class="fa fa-phone"></i>
										${user.bcontactno}
									</a>
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-6 hidden-xs ">
								<div class="list-info-item">
									<a href="mailto:nhtravelsandtours@gmail.com"><i
										class="fa fa-envelope"></i>Email</a>
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-6">
								<div class="list-info-item">
									<span class="hidden-xs"> <a
										href="http://nhtraveller.com/" target="_blank"><i
											class="fa fa-globe"></i>Website</a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- eo right -->
				<div class="clear"></div>
			</div>
		</div>
		<!--blue bar col end-->
		
			</c:forEach>
				</c:if>

		
	</div>
	<!-- <div class="sp-load-more text-center"> <a href="#" class="" title="Load more result" data-url="search/?q=hotel&amp;_qt=A&amp;l=3&amp;_lt=Kathmandu&amp;t=0&amp;freelstidarr=%5B%221803%22%2C%2275328%22%2C%2249743%22%5D&amp;fncfl=0&amp;lftcfl=0&amp;fnbsl=0&amp;lftbsl=0&amp;fnssl=0&amp;lftsfl=0" onclick="return doko.BuSfw16AlL(this, {container: '#search-results', rc : '.sp-load-more'})"> <span id="l-more">Load More <i class="fa fa-angle-down fa-lg"></i></span> </a>
	</div> <!-- eo panel -->
</body>
</html>