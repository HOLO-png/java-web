<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<style>
.register-photo {
	background: #f1f7fc;
	padding: 80px 0;
	display: flex;
	justify-content: center;
}

.register-photo .image-holder {
	display: table-cell;
	width: auto;
	background:
		url(https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80);
	background-size: cover
}

.register-photo .form-container {
	display: table;
	max-width: 900px;
	width: 90%;
	margin: 0 auto;
	box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
	height: 500px;
	margin-top: 100px;
}

.register-photo form {
	display: table-cell;
	width: 400px;
	background-color: #ffffff;
	padding: 40px 60px;
	color: #505e6c
}

@media ( max-width :991px) {
	.register-photo form {
		padding: 40px
	}
}

.register-photo form h2 {
	font-size: 24px;
	line-height: 1.5;
	margin-bottom: 30px
}

.register-photo form .form-control {
	background: transparent;
	border: none;
	color: #61acb3;
	border-bottom: 1px solid #dfe7f1;
	border-radius: 0;
	box-shadow: none;
	outline: none;
	color: inherit;
	text-indent: 0px;
	height: 40px
}

.register-photo form .form-check {
	font-size: 13px;
	line-height: 20px
}

.register-photo form .btn-primary {
	background: #61acb3;
	border: none;
	border-radius: 25px;
	padding: 11px;
	box-shadow: none;
	margin-top: 35px;
	text-shadow: none;
	outline: none !important
}

.register-photo form .btn-primary:hover, .register-photo form .btn-primary:active
	{
	background: #61acb3
}

.register-photo form .btn-primary:active {
	transform: translateY(1px)
}

.register-photo form .already {
	display: block;
	text-align: center;
	font-size: 12px;
	color: #6f7a85;
	opacity: 0.9;
	text-decoration: none
}
</style>
</head>
<body>

	<div class="register-photo">
		<div class="form-container">
			<div class="image-holder"></div>
			<form:form action="registerUser" modelAttribute="user" method="POST" id="formUp"  style="display: none;">
				<h2 class="text-center">
					<strong>Welcome back!</strong>
				</h2>
				<div class="form-group">
					<form:input cssClass="form-control" path="fullname"
						placeholder="FullName" />
				</div>
				<div class="form-group">
					<form:input path="username" placeholder="User Name" />
				</div>
				<div class="form-group">
					<form:input type="password" cssClass="form-control" path="password"
						placeholder="password" />
				</div>

				<div class="form-group">
					<button class="btn btn-success btn-block btn-info" type="submit">Sign Up</button>
				</div>
				<a class="already" href="#" id="signUp">Đăng ký</a>
			</form:form>
			<form:form action="login" modelAttribute="user" method="POST" id="formIn">
				<h2 class="text-center">
					<strong>Welcome back!</strong>
				</h2>
				<div class="form-group">
					<form:input path="username" placeholder="User Name" />
				</div>
				<div class="form-group">
					<form:input type="password" cssClass="form-control" path="password"
						placeholder="password" />
				</div>
				<div class="form-group">
					<button class="btn btn-success btn-block btn-info" type="submit">
						Login</button>
				</div>
				<a class="already" href="#" id="signIn">Đăng nhập</a>
			</form:form>
		</div>
	</div>

</body>
<script>
    const signUpButton = document.getElementById("signUp");
    const signInButton = document.getElementById("signIn");
    const formUp = document.getElementById("formUp");
    const formIn = document.getElementById("formIn");
   
    signUpButton.addEventListener("click", () => {
    	formUp.style.display = "none";
    	formIn.style.display = "table-cell";
    });

    signInButton.addEventListener("click", () => {
    	formUp.style.display = "table-cell";
    	formIn.style.display = "none";
    });
  </script>
</html>