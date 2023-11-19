<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="../default/myNavbar.jsp"></jsp:include>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<title>搜尋機構</title>

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

<div class="cotainer">
	<div class="row justify-content-center">
		<h3>搜尋機構</h3>	
	</div>
</div>
		
	<div class="container">
		<div class="row gx-5 justify-content-center">
			<form:form action="${contextRoot }/listname" >關鍵字:
				<input type="text" name="name" id="name"  value="${name }" />
			<br />
				<h5>機構類型</h5>
				<label><input type="radio" name="name" id="" value=""><span>全部</span></label>
				<label><input type="radio" name="name" id="name2" value="${name2 }"><span>長期照顧中心(養護中心)</span></label>
				<label><input type="radio" name="name" id="" value="a"><span>護理之家</span></label>
				<label><input type="radio" name="name" id="" value="a"><span>安養中心(安養院)</span></label>
				<label><input type="radio" name="name" id="" value="a"><span>住宿長照機構</span></label>
				<label><input type="radio" name="name" id="" value="a"><span>日間照顧中心</span></label>
			<div class="text-center"><input type="submit" value="搜尋"></div>
			</form:form>
	
		</div>
	</div>
	
	<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>