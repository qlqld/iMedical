<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="default/myNavbar.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品頁面</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<script src="${contextRoot }/js/productToSoppingCart.js"></script>
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css">
	<!-- my javascript -->
	<link rel="stylesheet" href="${contextRoot}/css/my.index.css" />




</head>
<body>

<h1>商品頁面</h1>
	<!-- item=Control的GetMapping的put().content  -->
	<ul class="list-group list-group-horizontal">
		<c:forEach var="oneOfListCommodities"
			items="${listCommodities}">
			<li class="list-group-item">
				<a class="Auxiliar-list" href="${contextRoot }/ProducePage?commodityId=${oneOfListCommodities.commodityId}">
						<figure>
							<img src="${contextRoot }/img/${oneOfListCommodities.commodityPhoto }" alt="無商品圖片" width="300">
							<figcaption><c:out value="Name: ${oneOfListCommodities.commodityName }"></c:out></figcaption>
						</figure>
				</a> <!-- value=上方的var, Bean的值 --> 
				<c:out	value="金額: ${oneOfListCommodities.amount }"></c:out>
				<div>
					<span id="A${oneOfListCommodities.commodityId}" class="btn btn-primary addButton">
						加入購物車
						<input type="hidden" value="${oneOfListCommodities.commodityName}|${oneOfListCommodities.commodityPhoto}|${oneOfListCommodities.amount}">
<!-- 						value="品名|照片名|金額" -->
					</span>
				</div>
			</li>
		</c:forEach>
	</ul>
	
	<a href="${contextRoot }/ShoppingCartPage">購物車</a>
    <a href="${contextRoot }/EditCommodities">編輯商品</a>
    
    
    <script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>