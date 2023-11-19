<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="default/myNavbar.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理表單頁面</title>
<link href="${contextRoot}/css/backStage.css" rel="stylesheet"
	type="text/css" />

</head>
<body>


	<div
		style="width: 100%; text-align: center; padding-top: 0px; background-color: rgba(255, 255, 255, 0.69);">
		<img alt="圖片" src="${contextRoot}/img/header4.png" style="width: 40%;">
	</div>

	<div
		style="border: 2px groove; border-radius: 2em; padding: 30px 30px 30px 30px; margin-left: 200px; margin-right: 200px; text-align: center;">
		<h1>管理全部表單</h1>


		<table class="table table-hover table-bordered">
			<tr
				style="border: 3px solid grey; font-style: oblique; border-radius: 3em; margin: 30px 30px 30px 30px;">
				<th>申請表單id</th>
				<th>主要使用者姓名</th>
				<th>主要使用者年齡</th>
				<th>主要使用者居住區域</th>
				<th>申請人會員ID</th>
			</tr>



			<c:forEach var="list" items="${page.content}">
				<tr>
					<td>${list.id}</td>
					<td>${list.userName}</td>
					<td>${list.userAge}</td>
					<td>${list.livingArea}</td>
					<td>${list.member.id}</td>
					<td><a
						href="${contextRoot}/Backstage/editAssistiveDevice?id=${list.id}">編輯</a>
					</td>
					<td><a
						href="${contextRoot}/Backstage/deleteAssistiveDevice?id=${list.id}"
						onclick="return confirm('確認刪除嗎?')">刪除</a></td>
				</tr>

			</c:forEach>






		</table>

		<div class="row justify-content-center" style="text-align: center;">
			<div class="col-9">
				<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
					<c:choose>
						<c:when test="${page.number!=pageNumber-1 }">
							<a
								href="${contextRoot}/Backstage/getAllAssistiveDeviceApplicationForm?p=${pageNumber}">
								<c:out value="${pageNumber}"></c:out>
							</a>
						</c:when>
						<c:otherwise>
							<c:out value="${pageNumber}"></c:out>
						</c:otherwise>


					</c:choose>
					<c:if test="${pageNumber != page.totalPages}"></c:if>

				</c:forEach>
			</div>
		</div>
	</div>




	<footer class="main-footer">
		<div class="container">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.01
			</div>
			<strong>Copyright © 2022-2025 <a href="">iMedical</a>.
			</strong> All rights reserved.
		</div>

	</footer>






</body>
</html>