<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">List of Employees</h1>

	<div align="center">
		<table border="1" cellpadding="5">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>
			<c:forEach var="employees" items="${employees}">
				<tr>
					<td>${employees.id}</td>
					<td>${employees.firstName}</td>
					<td>${employees.lastName}</td>
					<td>${employees.departmentMail}</td>
					<td> 
					<input type="button" onclick="location.href='${employees.id}/delete'" value="Delete">
					</td>
				</tr>
			</c:forEach>
		</table>
			<input style="padding: 15px 16px; margin:4px 10px; font-size: 20px; text-align: center;" type="button" onclick="location.href='/'" value="Back">
	</div>
</body>
</html>