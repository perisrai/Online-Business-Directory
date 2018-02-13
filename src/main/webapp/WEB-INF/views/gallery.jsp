<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<div>
<form action="gallery" method="post">
		<c:if test="${not empty userimages}">
					<c:forEach items="${userimages}" var="user">
					<div class="col-md-9 col-sm-9 col-xs-12 listright">
								<div class=" listleft">
									<div class="list_img">
										<a href="https://bhetincha.com/nh-travels-and-tours"
											title="View details of NH Travels And Tours"
											class="list-logo-a"> <img
											src="${user.filePath }"
											class="list-logo img-responsive">
										</a>
									</div>
					
					</c:forEach>
				</c:if>
				</form>
</div>
</body>
</html>