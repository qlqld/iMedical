<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="default/myNavbar.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextRoot}/css/backStage.css" rel="stylesheet"
	type="text/css" />

<title>管理會員頁面</title>
</head>
<body>


	<div
		style="width: 100%; text-align: center; padding-top: 0px; background-color: rgba(255, 255, 255, 0.69);">
		<img alt="圖片" src="${contextRoot}/img/header4.png" style="width: 40%; ">
	</div>


	<div
		style="width: 100%; text-align: center; margin-top: 20px; margin-bottom: 30px;">
		<form action="../Backstage/searchMember">
			<input name="id" type="search" required="required"
				style="border-radius: 10px; width: 50%;" placeholder="輸入會員id">
			<input type="submit" value="查詢"
				style="border-style: groove; border-radius: 5px; color: blue;">
		</form>
	</div>


	<div
		style="border: 2px groove; border-radius: 2em; padding: 30px 30px 30px 30px; margin-left: 200px; margin-right: 200px; text-align: center;">


		<h1>管理全部會員</h1>

		<table class="table table-hover table-bordered">
			<tr
				style="border: 3px solid grey; font-style: oblique; border-radius: 3em; margin: 30px 30px 30px 30px;">

				<th>會員id</th>
				<th>會員帳號</th>
				<th>會員密碼</th>
				<th>會員姓名</th>
				<th>會員電話</th>
				<th>會員lineID</th>
				<th>會員地址</th>
				<th>會員信箱</th>
				<th>會員生日</th>
				<th>會員性別</th>
			</tr>



			<c:forEach var="list" items="${page.content}">
				<tr>
					<td>${list.id}</td>
					<td>${list.memberAccount}</td>
					<td>${list.memberPassword}</td>
					<td>${list.memberName}</td>
					<td>${list.memberPhone}</td>
					<td>${list.memberLineId}</td>
					<td>${list.memberAddress}</td>
					<td>${list.memberEmail}</td>
					<td>${list.memberBirthday}</td>
					<td>${list.memberGender}</td>
					<td><a
						href="${contextRoot}/Backstage/editMember?id=${list.id}">編輯</a></td>
					<td><a
						href="${contextRoot}/Backstage/deleteMember?id=${list.id}">刪除</a></td>
				</tr>

			</c:forEach>

		</table>

		<div class="row justify-content-center" style="text-align: center;">
			<div class="col-9">
				<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
					<c:choose>
						<c:when test="${page.number!=pageNumber-1 }">
							<a href="${contextRoot}/Backstage/getAllMember?p=${pageNumber}">
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