<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>
				<a href="/Buoi7-revert/customer/list">CRM - Customer
					Relationship Manager</a>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<input type="button" value="Add Customer"
				onClick="window.location.href='showFormAdd'; return false;"
				class="add=button" />
			<table border="1">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Update</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="tempCustomer" items="${customers}">
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomer.id}"></c:param>
						</c:url>
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id}"></c:param>
						</c:url>
						<tr>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
							<td><a href="${updateLink}">Update</a></td>
							<td><a href="${deleteLink}"
								onClick="if(!(confirm('Are you sure to delete?'))) return false">Delete</a></td>
						</tr>
						<br>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>