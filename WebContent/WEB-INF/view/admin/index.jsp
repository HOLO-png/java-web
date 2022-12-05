<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1" />
<title>Dashboard</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styleAdmin.css">

</head>
<body>
	<%@include file="./includes/sidebar.jsp"%>

	<div class="main-content">
		<%@include file="navbar_admin.jsp"%>

		<main>
			<div class="page-header">
				<h1>Dashboard</h1>
			</div>

			<div class="page-content">
				<div class="analytics">
					<div class="card">
						<div class="card-head">
							<h2>USERS</h2>
						</div>
						<div class="card-content">							
							<span>${count_users}</span>
							<span class="las la-user"></span>
						</div>
					</div>
					<div class="card">
						<div class="card-head">
							<h2>PRODUCTS</h2>
						</div>
						<div class="card-content">							
							<span>${count_products}</span>
							<span class="las la-tshirt"></span>
						</div>
					</div>
					
					<div class="card">
						<div class="card-head">
							<h2>ORDERS</h2>
						</div>
						<div class="card-content">							
							<span>${All_orders.size()}</span>
							<span class="las la-truck"></span>
						</div>
					</div>
				</div>

				<div class="records table-responsive">

					<div>
						<table width="100%">
							<thead>
								<tr>
									<th>STT</th>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>User</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="order" items="${All_orders}">
									<c:url var="viewLinkOrder" value="/ad/viewOrder">
										<c:param name="receipt_id" value="${order.receipt_id}"></c:param>
									</c:url>
									<tr>
										<td>#${order.receipt_id}</td>
										<td>
											<div class="client">
												<img src="${order.product.image}" width="60" height="60"
													alt="" />
												<div class="client-info">
													<h4>${order.product.product_name}</h4>
													<small>....</small>
												</div>
											</div>
										</td>
										<td>${order.product.price}</td>
										<td>${order.quantity}</td>
										<td>${order.user.fullname}</td>
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

