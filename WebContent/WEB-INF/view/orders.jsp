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
</style>
<body class="d-flex flex-column min-vh-100">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid my-5  d-flex  justify-content-center">
		<div class="card card-1">
			<div class="card-header bg-white">
				<div
					class="media flex-sm-row flex-column-reverse justify-content-between  ">
					<div class="col my-auto">
						<h4 class="mb-0">
							Thanks for your Order,<span class="change-color">Hoang
								Long</span> !
						</h4>
					</div>
					<div class="col-auto text-center  my-auto pl-0 pt-sm-4">
						<img class="img-fluid my-auto align-items-center mb-0 pt-3"
							src="https://i.imgur.com/7q7gIzR.png" width="115" height="115">
						<p class="mb-4 pt-0 Glasses">Glasses For Everyone</p>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="row justify-content-between mb-3">
					<div class="col-auto">
						<h6 class="color-1 mb-0 change-color">Receipt</h6>
					</div>
					<div class="col-auto  ">
						<small>Receipt Voucher : 1KAU9-84UIL</small>
					</div>
				</div>
				<c:choose>
					<c:when test="${orders.size() > 0 && orders != null}">
						<c:forEach var="order" items="${orders}">
							<c:url var="deleteMyOrderLink" value="/user/deleteMyOrder">
								<c:param name="productId" value="${order.receipt_id}"></c:param>
							</c:url>
							<div class="row">
								<div class="col">
									<div class="card card-2">
										<div class="card-body">
											<div class="media">
												<div class="sq align-self-center ">
													<img
														class="img-fluid  my-auto align-self-center mr-2 mr-md-4 pl-0 p-0 m-0"
														src="${order.product.image}" width="135" height="135" />
												</div>
												<div class="media-body my-auto text-right">
													<div class="row  my-auto flex-column flex-md-row">
														<div class="col my-auto">
															<h6 class="mb-0">Hoàng Long</h6>
														</div>
														<div class="col-auto my-auto">
															<small>${order.product.product_name}</small>
														</div>
														<div class="col my-auto">
															<small>Size : M</small>
														</div>
														<div class="col my-auto">
															<small>Qty : ${order.quantity}</small>
														</div>
														<div class="col my-auto">
															<h6 class="mb-0">${order.product.price}</h6>
														</div>
														<div class="col my-auto">
															<a class="btn btn-sm btn-danger text-white"
																href="${deleteMyOrderLink}"
																onclick="if(!confirm('Are you sure to detele?')) return false; ">Cancel</a>
														</div>
													</div>
												</div>
											</div>
											<hr class="my-3 ">
											<div class="row">
												<div class="col-md-3 mb-3">
													<small> Track Order <span><i
															class=" ml-2 fa fa-refresh" aria-hidden="true"></i></span></small>
												</div>
												<div class="col mt-auto">
													<div class="progress my-auto">
														<div class="progress-bar progress-bar  rounded"
															style="width: 62%" role="progressbar" aria-valuenow="25"
															aria-valuemin="0" aria-valuemax="100"></div>
													</div>
													<div class="media row justify-content-between ">
														<div class="col-auto text-right">
															<span> <small class="text-right mr-sm-2"></small>
																<i class="fa fa-circle active"></i>
															</span>
														</div>
														<div class="flex-col">
															<span> <small class="text-right mr-sm-2">Out
																	for delivary</small><i class="fa fa-circle active"></i></span>
														</div>
														<div class="col-auto flex-col-auto">
															<small class="text-right mr-sm-2">Delivered</small><span>
																<i class="fa fa-circle"></i>
															</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:when>

					<c:otherwise>
						<tr>
							<td scope="col" colspan="5">Đơn hàng của bạn hiện đang trống</td>
						</tr>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
<!-- Bootstrap core JS-->
</html>
