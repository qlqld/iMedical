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
<link href="${contextRoot}/css/backStage.css" rel="stylesheet" type="text/css" />

<title>編輯會員頁面</title>
</head>
<body>
<h1>編輯會員列表</h1>



<form:form action="editMember" modelAttribute="someMember"
		method="post">
		
		<form:input type="hidden" path="id" value="<%=request.getParameter(\"id\") %>" />
		<br>

		<div class="form-group">
			<label for="account">編輯會員帳號:</label>
			<form:input type="text" path="memberAccount"
				class="form-control-sm" id="account" aria-describedby="accountHelp" required="required"/>
		</div>
<%-- 		<form:errors path="name" cssClass="error" /> --%>
<!-- 		<span id="name.errors" class="error">此帳號已有人使用</span> -->
		<div class="form-group">
			<label for="password">編輯會員密碼:</label>
			<form:input type="password" path="memberPassword"
				class="form-control-sm" id="password" aria-describedby="passwordHelp" required="required"/>
		</div>
		<div class="form-group">
			<label for="name">編輯會員姓名:</label>
			<form:input type="text" path="memberName" class="form-control-sm"
				id="name" aria-describedby="nameHelp" placeholder="ex: 王曉明" required="required"/>
		</div>
		<div class="form-group">
			<label for="phone">編輯會員電話號碼:</label>
			<form:input type="number" path="memberPhone" class="form-control-sm"
				id="phone" aria-describedby="phoneHelp" required="required"/>
		</div>
		
		<div class="form-group">
			<label for="lineid">編輯會員line ID:</label>
			<form:input type="text" path="memberLineId" class="form-control-sm"
				id="lineid" aria-describedby="lineidHelp" required="required"/>
		</div>
		
		<div class="form-group">
			<label for="address">編輯會員地址:</label>
			<form:input type="text" path="memberAddress" class="form-control-sm"
				id="address" aria-describedby="addressHelp" required="required"/>
		</div>		
				
		
		<div class="form-group">
			<label for="email">編輯會員電子郵件:</label>
			<form:input type="email" path="memberEmail" class="form-control-sm"
				id="email" aria-describedby="emailHelp" placeholder="xxxxx@gmail.com" required="required"/>
		</div>		

		<div class="form-group">
			<label for="birthday">編輯會員生日:</label>
			<form:input type="text" path="memberBirthday" class="form-control-sm"
				id="birthday" aria-describedby="birthdayHelp" placeholder="ex: 1998/08/08" required="required"/>
		</div>		
	
		
		<div class="form-group">
			<label for="gender">編輯會員性別:</label>
			<form:input type="text" path="memberGender"  class="form-control-sm"
				id="gender" aria-describedby="onboardHelp" placeholder="ex: 男/女" required="required"/>
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