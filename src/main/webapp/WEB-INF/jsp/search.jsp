<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">Search Employees.</h1>
	<div align="center" style="outline: blue; border: medium;">
	<p style="text-align: center; font-size: 20px">${message}</p>
		<form:form method="post" action="/search" modelAttribute="employee">
			<p>
				First Name:
				<form:input path="firstName" placeholder="Enter First Name" />
			</p>
			<p>
				Last Name:
				<form:input path="lastName" placeholder="Enter Last Name" />
			</p>
			<p>
				Email Address:
				<form:input path="departmentMail" placeholder="Enter Email Address" />
			</p>
			<p>
				<form:button
					style="padding: 15px 16px; margin:4px 10px; font-size: 20px; text-align: center;"
					value="Save">Search</form:button>
				<input
					style="padding: 15px 16px; margin: 4px 10px; font-size: 20px; text-align: center;"
					type="button" onclick="location.href='/'" value="Back">
			</p>
		</form:form>
	</div>
</body>
</html>