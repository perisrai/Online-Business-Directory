<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form modelAttribute="user" action ="userForm" method="post">
		<table border="1">
		<tr>
			<td><form:label path="busername">Business Name</form:label></td>
			<td><form:input path="busername"/></td>		
		</tr>
		<tr>
			<td><form:label path="blocation">Location</form:label></td>
			<td><form:input path="blocation"/></td>		
		</tr>
		<tr>
			<td><form:label path="bcontact">Contact</form:label></td>
			<td><form:input path="bcontact"/></td>		
		</tr>
		
		<tr>
					<td colspan="2"><input type="submit" value="Save"></td>		
		</tr>
		


		</table>
	</form>


</body>
</html>