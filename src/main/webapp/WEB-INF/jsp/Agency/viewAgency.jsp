<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../default/myNavbar.jsp"></jsp:include>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<title>機構介紹</title>

<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css">
	<!-- my javascript -->
	<link rel="stylesheet" href="${contextRoot}/css/my.index.css" />

<style type="text/css">
body{
	background-image: url("${contextRoot}/img/AgencyImg/aI02.jpg");
 	background-attachment: scroll; 
	background-position: center;
	background-size: cover;
	background-repeat: no repeat;
	background-opacity: 0;
	
}

.row{
	justify-content: center;
}
</style>
</head>

<body>

<br>
<br>
<div class="cotainer">
	<div class="row justify-content-center mb-3 ">
		<h1>機構介紹</h1>
	</div>
</div>

<!-- 	<div class="container"> -->
<!-- 	<table class="table width-100px" > -->
<!-- 		<tr> -->
<!-- 			<th>id</th> -->
<!-- 			<th>機構環境圖片</th> -->
<!-- 			<th>機構名稱</th> -->
<!-- 			<th>機構類型</th> -->
<!-- 			<th>機構電話</th> -->
<!-- 			<th>機構地址</th> -->
<!-- 			<th>服務時間</th> -->
<!-- 			<th>房型</th> -->
<!-- 			<th>床數</th> -->
<!-- 			<th>服務對象</th> -->
<!-- 			<th>政府輔助項目</th> -->
<!-- 			<th>醫療服務</th> -->
<!-- 			<th>專業照顧</th> -->
<!-- 			<th>特色服務</th> -->
<!-- 		</tr> -->
<!-- 	</table> -->
<!-- 	</div> -->
	
	<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>