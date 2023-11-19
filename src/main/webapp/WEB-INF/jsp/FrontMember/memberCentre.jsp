<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <jsp:include page="../index.jsp"></jsp:include> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
<title>iMedical會員中心</title>
</head>

<body>

	<br>
	<div class="card" style="width: 50rem;">
		<h2>歡迎來到~iMedical長照醫療網的會員中心 ^^ </h2>
		
		<div class="card-header">會員基本資料</div>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">收藏機構</li>
			<li class="list-group-item" ><a href="${contextRoot }/list">輔具申請資料</a></li>
<!-- 			<li class="list-group-item">訂單</li> -->
		</ul>
		
	</div>


<!-- Css版 -->

	<!-- 	<div class="list-group"> -->
	<!-- 		<h2> 歡迎來到~iMedical長照醫療網的會員中心 ^^ </h2> -->
	<!-- 		<a href="#" class="list-group-item list-group-item-action active" -->
	<!-- 			aria-current="true">會員基本資料</a> <a href="#" -->
	<!-- 			class="list-group-item list-group-item-action">收藏機構</a> <a href="#" -->
	<!-- 			class="list-group-item list-group-item-action">參訪記錄</a> <a href="#" -->
	<!-- 			class="list-group-item list-group-item-action">收藏輔具</a> <a -->
	<!-- 			class="list-group-item list-group-item-action disabled">詢問記錄</a> -->
	<!-- 	</div> -->
</body>
</html>