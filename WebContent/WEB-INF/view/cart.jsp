<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyShop</title>
<%@include file="./includes/header.jsp"%>

</head>
<style>
a.btn-info {
	color: white !important;
}

.title {
	margin-bottom: 5vh;
}

.card {
	margin: auto;
	max-width: 950px;
	width: 90%;
	box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border-radius: 1rem;
	border: transparent;
}

@media ( max-width :767px) {
	.card {
		margin: 3vh auto;
	}
}

.cart {
	background-color: #fff;
	padding: 4vh 5vh;
	border-bottom-left-radius: 1rem;
	border-top-left-radius: 1rem;
}

@media ( max-width :767px) {
	.cart {
		padding: 4vh;
		border-bottom-left-radius: unset;
		border-top-right-radius: 1rem;
	}
}

.summary {
	background-color: #ddd;
	border-top-right-radius: 1rem;
	border-bottom-right-radius: 1rem;
	padding: 4vh;
	color: rgb(65, 65, 65);
}

@media ( max-width :767px) {
	.summary {
		border-top-right-radius: unset;
		border-bottom-left-radius: 1rem;
	}
}

.summary .col-2 {
	padding: 0;
}

.summary .col-10 {
	padding: 0;
}

.row {
	margin: 0;
}

.title b {
	font-size: 1.5rem;
}

.main {
	margin: 0;
	padding: 2vh 0;
	width: 100%;
}

.col-2, .col {
	padding: 0 1vh;
}

a {
	padding: 0 1vh;
}

.close {
	margin-left: auto;
	font-size: 0.7rem;
}

img {
	width: 3.5rem;
}

.back-to-shop {
	margin-top: 4.5rem;
}

h5 {
	margin-top: 4vh;
}

hr {
	margin-top: 1.25rem;
}

form {
	padding: 2vh 0;
}

select {
	border: 1px solid rgba(0, 0, 0, 0.137);
	padding: 1.5vh 1vh;
	margin-bottom: 4vh;
	outline: none;
	width: 100%;
	background-color: rgb(247, 247, 247);
}

input {
	border: 1px solid rgba(0, 0, 0, 0.137);
	padding: 1vh;
	margin-bottom: 4vh;
	outline: none;
	width: 100%;
	background-color: rgb(247, 247, 247);
}

input:focus::-webkit-input-placeholder {
	color: transparent;
}

.btn {
	background-color: #000;
	border-color: #000;
	color: white;
	width: 100%;
	font-size: 0.7rem;
	margin-top: 4vh;
	padding: 1vh;
	border-radius: 0;
}

.btn:focus {
	box-shadow: none;
	outline: none;
	box-shadow: none;
	color: white;
	-webkit-box-shadow: none;
	-webkit-user-select: none;
	transition: none;
}

.btn:hover {
	color: white;
}

a {
	color: black;
}

a:hover {
	color: black;
	text-decoration: none;
}

#code {
	background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253),
		rgba(255, 255, 255, 0.185)),
		url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
	background-repeat: no-repeat;
	background-position-x: 95%;
	background-position-y: center;
}
</style>
<body class="d-flex flex-column min-vh-100">
	<%@include file="navbar.jsp"%>

	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="bread">
						<span><a href="index.html">Home</a></span> / <span>Shopping
							Cart</span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="card">
		<div class="row">
			<div class="col-md-8 cart">
				<div class="title">
					<div class="row">
						<div class="col">
							<h4>
								<b>Shopping Cart</b>
							</h4>
						</div>
						<div class="col align-self-center text-right text-muted">
							${carts.size()} items</div>
					</div>
				</div>
				<div class="colorlib-product">
					<div class="container">
						<div class="row row-pb-lg">
							<div class="row border-top border-bottom">
								<c:choose>
									<c:when test="${carts != null && carts.size() > 0}">
										<c:forEach var="cart" items="${carts}">
											<c:url var="removeCartByIdProduct" value="/removeCart">
												<c:param name="productId" value="${cart.product.product_id}"></c:param>
											</c:url>
											<c:url var="buyProduct" value="/buyProduct">
												<c:param name="productId" value="${cart.product.product_id}"></c:param>
											</c:url>
											<div class="row main align-items-center">
												<div class="col-2">
													<img class="img-fluid" src="${cart.product.image}" />
												</div>
												<div class="col">
													<div class="row text-muted">Shirt</div>
													<div class="row">${cart.product.product_name}</div>
												</div>
												<div class="col"
													style="display: flex; align-items: center; justify-content: center;">
													<a
														href="<%=request.getContextPath()%>/quantityIncDec?action=dec&productId=${cart.product.product_id}">-</a>
													<input type="text" value="${cart.quantity}" readonly /> <a
														href="<%=request.getContextPath()%>/quantityIncDec?action=inc&productId=${cart.product.product_id}">+</a>
												</div>

												<div class="col one-eight text-center">
													<div class="display-tc">
														<span class="col text-xs font-medium">${cart.product.price * cart.quantity}₫</span>
													</div>
												</div>
												<div class="col one-eight text-center">
													<a href="${removeCartByIdProduct}" class="closed">X</a>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>

										<div class="product-cart d-flex">
											<div class="card-body cart">
												<div class="col-sm-12 empty-cart-cls text-center">
													<img src="https://i.imgur.com/dCdflKN.png" width="130"
														height="130" class="img-fluid mb-4 mr-3">
													<h3>
														<strong>Your Cart is Empty</strong>
													</h3>
													<h4>Add something to make me happy :)</h4>
													<a href="#" class="btn btn-primary cart-btn-transform m-3"
														data-abc="true">continue shopping</a>


												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-md-4 summary">
				<div>
					<h5>
						<b>Summary</b>
					</h5>
				</div>
				<hr>
				<div class="row">
					<div class="col" style="padding-left: 0;">ITEMS
						${carts.size()}</div>
					<div class="col text-right">${String.format("%.1f", TOTAL)}₫</div>
				</div>
				<form>
					<p>SHIPPING</p>
					<select><option class="text-muted">Standard-Delivery-
							5.00</option></select>
					<p>GIVE CODE</p>
					<input id="code" placeholder="Enter your code">
				</form>
				<div class="row"
					style="border-top: 1px solid rgba(0, 0, 0, .1); padding: 2vh 0;">
					<div class="col">TOTAL PRICE</div>
					<div class="col text-right">${String.format("%.1f", TOTAL)}₫</div>
				</div>
				<a class="btn btn-primary text-white"
					href="<%=request.getContextPath()%>/checkout">Check out</a>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
<!-- Bootstrap core JS-->
</html>
