<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Customer</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Realationship Manager</h2>
		</div>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>

		<div id="container">
			<h3>Save Customer</h3>
			<form:form action="saveCustomer" modelAttribute="customer"
				method="POST">
				<form:hidden path="id" />
				<table>
					<tbody>
						<tr>
							<td><label>Firts Name:</label> <form:input path="firstName" /></td>

						</tr>
						<tr>
							<td><label>last Name:</label> <form:input path="lastName" /></td>
						</tr>
						<tr>
							<td><label>Email:</label> <form:input path="email" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="save" class="save" /></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>

	</div>
</body>
</html>