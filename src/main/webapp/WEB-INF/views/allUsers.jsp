<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Users</title>
</head>
<body>
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addUser">Add User</a>
	<br>
	<h1>Admin Panel</h1>
	<h3>List of all users</h3>
	${message}
	<br>
	<br>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>UserName</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.userName}</td>
					<td><a
						href="${pageContext.request.contextPath}/editUser/${user.id}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteUser/${user.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>

	<a href="Add-Movie">Add New Movie</a>
	<a href="home">Go back to Home</a>
</body>
</html>