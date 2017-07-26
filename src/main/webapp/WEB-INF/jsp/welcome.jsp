<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">
		Welcome to Employee Database!<br>Please Continue!
	</h1>
	<p style="text-align: center; font-size: 20px">${message}</p>
	<div align="center">
		<input
			style="padding: 15px 32px; font-size: 20px; text-align: center;"
			type="button" onclick="location.href='/create'"
			value="Add Emmployees"> <input
			style="padding: 15px 32px; font-size: 20px; text-align: center;"
			type="button" onclick="location.href='/search'"
			value="Search Employees"> <input
			style="padding: 15px 32px; font-size: 20px; text-align: center;"
			type="button" onclick="location.href='/getAll'"
			value="View All Employees">
	</div>
</body>
</html>