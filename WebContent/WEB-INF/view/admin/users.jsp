<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1" />
<title>Users</title>

<%@include file="./includes/header_admin.jsp"%>

</head>
<body>
	<%@include file="sidebar.jsp"%>

	<div class="main-content">
		<%@include file="navbar_admin.jsp"%>

		<main>
			<div class="page-header">
				<h1>User</h1>
			</div>

			<div class="page-content">
				<div class="records table-responsive">
					<div>
						<table width="100%">
							<thead>
								<tr>
									<th>STT</th>
									<th>User</th>
									<th>User Name</th>
									<th>Role</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${listUser}">
									<tr>
										<td>${user.user_id}</td>
										<td>
											<div class="client-info">
												<h4>${user.fullname}</h4>
											</div>
										</td>
										<td>${user.username}</td>
										<td>${user.isUser_role() == true ? "Admin" : "User"}</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>
