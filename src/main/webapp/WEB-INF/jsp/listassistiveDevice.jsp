<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<jsp:include page="default/myNavbar.jsp" />
<head>
<meta charset="UTF-8">
<title>查看資料</title>
</head>
<body>
	<div class="container">
	<h3>查看所有資料</h3>
	<table class="table">
		<tr>
			<th>id</th>
			<th>姓名</th>
			<th>年齡</th>
			<th>電話</th>
			<th>地址</th>
			<th>輔具</th>
			<th>編輯</th>
			<th>刪除</th>
		</tr>
		<c:forEach var="andAssistiveDevice" items="${assistiveDeviceList }">
			<tr>
				<td>${andAssistiveDevice.id }</td>
				<td>${andAssistiveDevice.name }</td>
				<td>${andAssistiveDevice.gender}</td>
				<td>${andAssistiveDevice.telephone }</td>
				<td>${andAssistiveDevice.address }</td>
				<td>${andAssistiveDevice.assistiveDevice }</td>
				<td><a href="${contextRoot}/editAssistiveDevice/${andAssistiveDevice.id}">編輯</a></td>
				<td><a href="${contextRoot}/deleteDevice/${andAssistiveDevice.id}">刪除</a> </td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>