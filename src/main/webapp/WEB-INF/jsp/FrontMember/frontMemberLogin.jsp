<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value=" ${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("img/loginBackground.png");
	background-position: center;
	background-color: #cccccc;
	height: 450px;
	background-position: center top;
	background-repeat: repeat;
	background-size: cover;
	/* 	max-height: 100%; */
	/* 	max-width: 100%; */
	/* 	position: absolute; */
	/* 	top: 0; */
	/* 	bottom: 50; */
	/* 	left: 0; */
	/* 	right: 0; */
}
</style>
<meta charset="UTF-8">
<script src=" ${contextRoot}/js/jquery-3.6.0.min.js"></script>

<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet" />
<link href="${contextRoot}/css/menberCss.css" rel="stylesheet" />
<link href="${contextRoot}/js/bootstrap.bundle.min.js " rel="stylesheet" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>iMedical會員登入頁面</title>
</head>
<body>

	<div class="jumbotron jumbotron-fluid" style="height: 80px">
		<div class="container">
			<h1 class="display-4" style="height: 80px">
				<img alt="icon" id="icon"
					src="${contextRoot}/img/幸福家庭及孝親集團logo_MemberLogin.png" width="150"
					height="90" />iMedical會員登入
			</h1>
			<p class="lead"></p>
		</div>
	</div>
	
	<div class="card border-dark "
		style="max-width: 20rem; margin: 10px auto 10px auto;">
		<div class="card-header">會員登入</div>
		<div class="card-body text-dark">
			<p class="card-text">
			<form action="memberpost" method="post">
				<div class="main-box large-padding size-500-350 middle-align">

					<label for="username" style=""><b>帳號:</b></label> <input
						type="text" placeholder="Enter Username" name="username"
						required="required" > <br /> <br /> <label
						for="password"><b>密碼:</b></label> <input type="password"
						placeholder="Enter Password" name="password" required="required"
						>
					<p style="color: red">
						<b>${loginError}</b>
					</p>
<!-- 					//記住帳號 -->
					<div class="custom-control custom-checkbox">
  						<input type="checkbox" class="custom-control-input" id="customCheck1" name="remember-me">
  						<label class="custom-control-label" for="customCheck1">記住帳號</label>
					</div>
<!-- 					為了通過csrf防護 類似驗證碼 -->
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<!-- // -->
					<button class="btn-primary" type="submit" style="margin: 10px auto 10px 95px; font-size: 20px; background-color: #5664fc; color: white; border-radiuss: 25%; color: white; border-radius: 25px;">登入</button>
					<p style="color: red">
						<b>${logoutMessage}</b>
					</p>
				</div>
			</form>
			<!-- 				<input class="btn-primary" type="button" value="註冊" style="margin: 10px auto 10px 95px; " />  -->
				<a href="${contextRoot}/FrontMember/goAddMember"
					style="margin: 10px auto 10px 100px; font-size: 25px; background-color: #5664fc; color: white; border-radius: 25%; color: white;">註冊</a>
			
			
		</div>
		
</body>
</html>