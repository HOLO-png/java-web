<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>MyShop</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/detail.css">
<%@include file="./includes/header.jsp"%>
<style>
.text-bold {
            font-weight: 800;
        }

        text-color {
            color: #0093c4;
        }

        /* Main image - left */
        .main-img img {
            width: 100%;
        }

        /* Preview images */
        .previews img {
            width: 100%;
            height: 140px;
        }

        .main-description .category {
            text-transform: uppercase;
            color: #0093c4;
        }

        .main-description .product-title {
            font-size: 2.5rem;
        }

        .old-price-discount {
            font-weight: 600;
        }

        .new-price {
            font-size: 2rem;
        }

        .details-title {
            text-transform: uppercase;
            font-weight: 600;
            font-size: 1.2rem;
            color: #757575;
        }

        .buttons .block {
            margin-right: 5px;
        }

        .quantity input {
            border-radius: 0;
            height: 40px;

        }


        .custom-btn {
            text-transform: capitalize;
            background-color: #0093c4;
            color: white;
            width: 150px;
            height: 40px;
            border-radius: 0;
        }

        .custom-btn:hover {
            background-color: #0093c4 !important;
            font-size: 18px;
            color: white !important;
        }

        .similar-product img {
            height: 400px;
        }

        .similar-product {
            text-align: left;
        }

        .similar-product .title {
            margin: 17px 0px 4px 0px;
        }

        .similar-product .price {
            font-weight: bold;
        }


        /* Small devices (landscape phones, less than 768px) */
        @media (max-width: 767.98px) {

            /* Make preview images responsive  */
            .previews img {
                width: 100%;
                height: auto;
            }

        }
</style>
</head>
<link rel="stylesheet" href="css/detail.css" />
<body>
	<%@include file="navbar.jsp"%>
	<c:url var="addCardLink" value="/addCart">
		<c:param name="productId" value="${product.product_id}"></c:param>
	</c:url>


	<div class="container my-5">
		<div class="row">
			<div class="col-md-5">
				<div class="main-img">
					<img class="img-fluid" src="${product.image}" alt="ProductS">
				</div>
			</div>
			<div class="col-md-7">
				<div class="main-description px-2">
					<div class="category text-bold">Category: Women</div>
					<div class="product-title text-bold my-3">
						${product.product_name}</div>

					<div class="price-area my-4">
						<p class="old-price mb-1">
							<del>$100</del>
							<span class="old-price-discount text-danger">(20% off)</span>
						</p>
						<p class="new-price text-bold mb-1">${product.price}₫</p>
						<p class="text-secondary mb-1">(Additional tax may apply on
							checkout)</p>

					</div>


					<div class="buttons d-flex my-5">
						<div class="block">
							<a class="btn shadow btn custom-btn" href="${addCardLink}">Add
								to cart</a>
						</div>

						<div class="block quantity">
							<input type="number" class="form-control" id="cart_quantity"
								value="1" min="0" max="5" placeholder="Enter email"
								name="cart_quantity">
						</div>
					</div>
				</div>

				<div class="product-details my-4">
					<p class="details-title text-color mb-1">Product Details</p>
					<p class="description">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Placeat excepturi odio recusandae aliquid ad
						impedit autem commodi earum voluptatem laboriosam?</p>
				</div>
				<div class="product-details my-4">
					<p class="details-title text-color mb-2">Material & Care</p>
					<ul>
						<li>Cotton</li>
						<li>Machine-wash</li>
					</ul>
				</div>
				<div class="product-details my-4">
					<p class="details-title text-color mb-2">Sold by</p>
					<ul>
						<li>Cotton</li>
						<li>Machine-wash</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<%@include file="footer.jsp"%>
</body>
<!-- Bootstrap core JS-->
</html>
