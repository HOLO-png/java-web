<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1" />
<title>Modern Admin Dashboard</title>
<%@include file="./includes/header_admin.jsp"%>
</head>
<body>
	<input type="checkbox" id="menu-toggle" />

	<%@include file="sidebar.jsp"%>
	<div class="main-content">

		<%@include file="navbar_admin.jsp"%>
		<main>
		<div class="page-header">
			<h1>Update Product</h1>
			<small>Admin / Update Product</small>
		</div>

		<div class="records table-responsive">
			<div class="container_form">
				<div class="form-create_product">

					<form class="form" action="updateProduct" method="POST">
						<input type="hidden" name="product_id"
							value="${product.product_id}" />
						<div class="form-group form-item">
							<label for="productName">Product Name</label> <input type="text"
								name="productName" value="${product.product_name}"
								class="productNameInput" placeholder="Product Name" required />
						</div>
						<div class="form-group form-item">
							<label for="price">Price</label> <input type="text" name="price"
								value="${product.price}" class="priceInput" placeholder="Price"
								required>
						</div>
						<div class="form-group form-item">
							<label for="image">Url Image</label> <input type="text"
								name="image" value="${product.image}" class="imageInput"
								placeholder="Url Image" required>
						</div>
						<div class="form-group form-item">
							<label for="category">Category</label> <select name="categoryId"
								class="category">

								<c:forEach var="category" items="${listCategory}">

									<option value="${category.category_id}"
										${category.category_id == product.category_id ? selected:null}>${category.category_name}</option>
								</c:forEach>
							</select>
						</div>
						<input type="submit" value="Submit" class="btn">
					</form>
				</div>
			</div>

		</div>
	</div>
	</main>
	</div>
</body>
</html>
