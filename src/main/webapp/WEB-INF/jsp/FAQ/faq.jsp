<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<jsp:include page="../default/messageNavbar.jsp" />
<head>
<meta charset="UTF-8">
<link href="${contextRoot}/css/myStyle.css" rel="stylesheet" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet" />
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>

<title>常見問題</title>
</head>
<body>
	<div class="container">


		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${contextRoot}/">首頁</a></li>
				<li class="breadcrumb-item"><a href="${contextRoot}/faq">常見問題</a></li>
			</ol>
		</nav>
		<ol>
			<li><a href="${contextRoot}/faqQuestion">長期照顧特別扣除額</a></li>
			<li><a href="${contextRoot}/faqQuestiontwo">長照服務申請及評估</a></li>
			<li><a href="${contextRoot}/faqQuestionthree">長照機構法人</a></li>
			<li><a href="${contextRoot}/faqQuestionfour">長照服務法相關規定</a></li>
			<li><a href="${contextRoot}/faqQuestionfive">預防延緩失能與照護計畫</a></li>
			<li><a href="${contextRoot}/faqQuestionsix">其他</a></li>
		</ol>





	</div>
</body>
</html>