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
<title>Create new item</title>
<%@include file="./includes/header_admin.jsp"%>
</head>
<body>

	<%@include file="sidebar.jsp"%>
	<div class="main-content">

		<%@include file="navbar_admin.jsp"%>
		<main>
			<div class="page-header">
				<h1>Create new Item</h1>
			</div>

			<div class="records table-responsive">
				<div class="container_form">
					<div class="form-create_product">
						<form class="form" action="postCreateProduct" method="POST">
							<div class="form-item">
								<label for="productName">Name</label> <input type="text"
									name="productName" class="productNameInput"
									placeholder="Product Name" required />
							</div>
							<div class="form-item">
								<label for="price">Price</label> <input type="text" name="price"
									class="priceInput" placeholder="Price" required>
							</div>
							<div class="form-item">
								<label for="image">Image</label> <input type="text" name="image"
									class="imageInput" placeholder="Url Image" required>
							</div>
							<div class="form-item">
								<label for="category">Category</label> <select name="categoryId"
									class="category">
									<option value="1" selected>--- Choose category ---</option>
									<c:forEach var="category" items="${listCategory}">

										<option value="${category.category_id}">${category.category_name}</option>
									</c:forEach>
								</select>
							</div>
							<button type="submit" value="Submit">Submit</button>
						</form>
					</div>
				</div>
			</div>
	</div>
	</main>
	</div>
</body>
</html>
