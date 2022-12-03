
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="./includes/header.jsp"%>
</head>

<body class="main-layout">

	<div id="page">
		<div class="header_section"
			style="background-image: url(${pageContext.request.contextPath}/resources/img/banner.png)">
			<%@include file="navbar.jsp"%>
			<%@include file="carousel.jsp"%>
		</div>

		<div class="layout_padding collection_section">
			<div class="container">
				<h1 class="new_text">
					<strong>New Collection</strong>
				</h1>
				<p class="consectetur_text">consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation</p>
				<div class="collection_section_2">
					<div class="row">
						<div class="col-md-6">
							<div class="about-img">
								<button class="new_bt">New</button>
								<div class="shoes-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/shoes-img1.png">
								</div>
								<p class="sport_text">Men Sports</p>
								<div class="dolar_text">
									$<strong style="color: #f12a47;">90</strong>
								</div>
								<div class="star_icon">
									<ul>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
									</ul>
								</div>
							</div>
							<button class="seemore_bt">See More</button>
						</div>
						<div class="col-md-6">
							<div class="about-img2">
								<div class="shoes-img2">
									<img
										src="${pageContext.request.contextPath}/resources/img/shoes-img2.png">
								</div>
								<p class="sport_text">Men Sports</p>
								<div class="dolar_text">
									$<strong style="color: #f12a47;">90</strong>
								</div>
								<div class="star_icon">
									<ul>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										<li><a href="#"><img
												src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="collection_section">
			<div class="container">
				<h1 class="new_text">
					<strong>Racing Boots</strong>
				</h1>
				<p class="consectetur_text">consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation</p>
			</div>
		</div>
		<div class="collectipn_section_3 layuot_padding">
			<div class="container">
				<div class="racing_shoes">
					<div class="row">
						<div class="col-md-8">
							<div class="shoes-img3">
								<img
									src="${pageContext.request.contextPath}/resources/img/shoes-img3.png">
							</div>
						</div>
						<div class="col-md-4">
							<div class="sale_text">
								<strong>Sale <br> <span style="color: #0a0506;">JOGING</span>
									<br>SHOES
								</strong>
							</div>
							<div class="number_text">
								<strong>$ <span style="color: #0a0506">100</span></strong>
							</div>
							<button class="seemore">See More</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="collection_section layout_padding">
			<div class="container">
				<h1 class="new_text">
					<strong>New Arrivals Products</strong>
				</h1>
				<p class="consectetur_text">consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation</p>
			</div>
		</div>
		<div class="layout_padding gallery_section">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center ">

						<c:choose>
							<c:when test="${auth == null}">
								<h2>Best Sellers</h2>
							</c:when>
							<c:otherwise>
								<h2>Welcome - ${auth.fullname}</h2>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div
				style="display: flex; flex-wrap: wrap; border-bottom: 1px solid grey">
				<div class="row" style="padding: 0 200px; align-items: baseline;">

					<c:forEach var="tempProduct" items="${products}">
						<c:url var="detailLink" value="/detail">
							<c:param name="productId" value="${tempProduct.product_id}"></c:param>
						</c:url>
						<c:url var="addCardLink" value="/addCart">
							<c:param name="productId" value="${tempProduct.product_id}"></c:param>
						</c:url>
						<div class="col-sm-4">
							<div class="best_shoes">
								<p class="best_text">${tempProduct.product_name}</p>
								<div class="shoes_icon">
									<img src=${tempProduct.image}>
								</div>
								<div class="star_text">
									<div class="left_part">
										<ul>
											<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
											<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
											<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
											<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
											<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/star-icon.png"></a></li>
										</ul>
									</div>
									<div class="right_part">
										<div class="shoes_price" style="font-size: 17pt;">
											<span style="color: #ff4e5b;">${tempProduct.price} đ</span>
										</div>
									</div>
									<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
										<div class="text-center">
											<a class="btn btn-outline-dark mt-auto" href="${addCardLink}">Add
												to cart</a> <a class="btn btn-outline-secondary mt-auto"
												href="${detailLink}">Detail</a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>

		<%@include file="footer.jsp"%>
	</div>

</body>
</html>