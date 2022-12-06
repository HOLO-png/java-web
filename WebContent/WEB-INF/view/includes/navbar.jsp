<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header_section header_main">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="logo">
					<a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/logo.png"
						style=""></a>
				</div>
			</div>
			<div class="col-sm-9">
				<nav class="navbar navbar-expand-lg navbar-light">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNavAltMarkup"
						aria-controls="navbarNavAltMarkup" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<div class="navbar-nav w-100">
							<a class="nav-item nav-link text-light"
								href="<%=request.getContextPath()%>/home">Home</a> <a
								class="nav-item nav-link text-light"
								href="<%=request.getContextPath()%>/user/myOrder"
								style="flex: 1 0">Orders</a>
							<c:choose>
								<c:when test="${auth.isUser_role()}">
									<a class="nav-item nav-link last text-light"
										href="<%=request.getContextPath()%>/dashboard/showAdmin">Admin</a>
								</c:when>
							</c:choose>
							<a class="nav-item nav-link last text-light" href="#"><img
								src="${pageContext.request.contextPath}/resources/img/search_icon.png"></a>
							<a href="<%=request.getContextPath()%>/cart"
								class="nav-item nav-link last"><img
								src="${pageContext.request.contextPath}/resources/img/shop_icon.png">
								${carts.size() == null ? '0' : carts.size() }</a>
							<c:choose>
								<c:when test="${auth == null}">
									<a href="<%=request.getContextPath()%>/auth/login"
										class="nav-item nav-link last text-light">login</a>
								</c:when>
								<c:otherwise>
									<a href="<%=request.getContextPath()%>/auth/logout"
										class="nav-item nav-link last text-light">logout</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
</div>


