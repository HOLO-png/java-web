<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1" />
<title>Products</title>

<%@include file="./includes/header_admin.jsp"%>

</head>
<body>
	<%@include file="sidebar.jsp"%>
	<div class="main-content">
		<%@include file="navbar_admin.jsp"%>
		<main>
			<div class="page-header">
				<h1>Product</h1>
			</div>
			<div class="page-content">
				<a href="<%=request.getContextPath()%>/ad/showProductCreatePage">
					<button class="add-btn" style="margin-bottom: 15px">Add
						new product</button>
				</a>
				<div class="records table-responsive">
					<div>
						<table width="100%">
							<thead>
								<tr>
									<th>STT</th>
									<th>Image</th>
									<th>Name</th>
									<th>Price</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="product" items="${listProduct}">
									<c:url var="updateLink" value="/ad/updateProduct">
										<c:param name="product_id" value="${product.product_id}"></c:param>
									</c:url>

									<c:url var="deleteLink" value="/ad/deleteProduct">
										<c:param name="product_id" value="${product.product_id}"></c:param>
									</c:url>

									<tr>
										<td>${product.product_id}</td>
										<td><img src="${product.image}" width="80" height="80"
											alt="" /></td>
										<td>${product.product_name}</td>
										<td>${product.price}đ</td>
										<td>
											<div class="actions">
												<a href="${updateLink}"> <span class="las la-pen"></span>
												</a> <a href="${deleteLink}" style="color: red;"
													onclick="if(!confirm('Are you sure to detele?')) return false; ">
													<span class="las la-trash"></span>
												</a>
											</div>
										</td>
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
