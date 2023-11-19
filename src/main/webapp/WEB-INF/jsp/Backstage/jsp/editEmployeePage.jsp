<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="default/myNavbar.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>編輯員工資料頁面</title>

<link href="${contextRoot}/css/backStage.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<h1>編輯員工列表</h1>




	<form:form action="editEmployee" modelAttribute="someEmployee" enctype="multipart/form-data"
		method="post">

		<form:input type="hidden" path="id"
			value="<%=request.getParameter(\"id\")%>" />
		<br>
		<div class="form-group">
			<label for="employeePhoto">編輯員工照片:</label>
			<img alt="圖片無法顯示" src="${contextRoot}/Backstage/downloadImage/${empId}"/>
			<input type="file" name="employeePic"
				class="form-control-sm" 
				aria-describedby="employeePhotoHelp" required="required"/>
		</div>
		<div class="form-group">
			<label for="account">編輯員工帳號:</label>
			<form:input type="text" path="employeeAccount"
				class="form-control-sm" id="account" aria-describedby="accountHelp" required="required"/>
		</div>
		<%-- 		<form:errors path="name" cssClass="error" /> --%>
		<!-- 		<span id="name.errors" class="error">此帳號已有人使用</span> -->

		
		
		
		<div class="form-group">
			<label for="password">編輯員工密碼:</label>
			<form:input type="password" path="employeePassword"
				class="form-control-sm" id="password"
				aria-describedby="passwordHelp" required="required"/>
		</div>
		<div class="form-group">
			<label for="name">編輯員工姓名:</label>
			<form:input type="text" path="employeeName" class="form-control-sm"
				id="name" aria-describedby="nameHelp" placeholder="ex: 王曉明" required="required"/>
		</div>
		<div class="form-group">
			<label for="phone">編輯員工電話號碼:</label>
			<form:input type="number" path="employeePhone"
				class="form-control-sm" id="phone" aria-describedby="phoneHelp" required="required"/>
		</div>

		<div class="form-group">
			<label for="email">編輯員工電子郵件:</label>
			<form:input type="email" path="employeeEmail" class="form-control-sm"
				id="email" aria-describedby="emailHelp"
				placeholder="xxxxx@gmail.com" required="required"/>
		</div>

		<div class="form-group">
			<label for="address">編輯員工地址:</label>
			<form:input type="text" path="employeeAddress"
				class="form-control-sm" id="address" aria-describedby="addressHelp" required="required"/>
		</div>
		<div class="form-group">
			<label for="birthday">編輯員工生日:</label>
			<form:input type="date" path="employeeBirthday"
				class="form-control-sm" id="birthday"
				aria-describedby="birthdayHelp" placeholder="ex: 1998/08/08" required="required"/>
		</div>

		<div class="form-group">
			<label for="level">編輯員工職等:</label>
			<form:input type="number" path="employeeLevel"
				class="form-control-sm" id="level" aria-describedby="levelHelp" required="required"/>
		</div>

		<div class="form-group">
			<label for="salary">編輯員工薪資:</label>
			<form:input type="number" path="employeeSalary"
				class="form-control-sm" id="salary" aria-describedby="salaryHelp" required="required"/>
		</div>

		<div class="form-group">
			<label for="onboard">編輯員工到職日期:</label>
			<form:input type="date" path="employeeOnboard"
				class="form-control-sm" id="onboard" aria-describedby="onboardHelp"
				placeholder="ex: 2020/03/04" required="required"/>
		</div>

		<form:button type="submit" class="btn btn-primary">送出</form:button>
	</form:form>



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