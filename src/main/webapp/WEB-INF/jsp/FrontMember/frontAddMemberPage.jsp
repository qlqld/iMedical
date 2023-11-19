<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:include page="frontMemberLogin.jsp"></jsp:include> --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script src=" ${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/ajaxAccountCheck.js"></script>
<!-- 為了通過csrf防護 -->
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<!-- 為了通過csrf防護 -->
<meta charset="UTF-8">
<title>註冊會員頁面</title>
</head>
<body>

<h1>註冊會員</h1>

<form:form action="addMember" modelAttribute="memberBean"
		method="post">
		
		<form:input type="hidden" path="id" />
		<br>

		<div class="form-group">
			<label for="account">新增會員帳號:</label>
			<form:input type="text" path="memberAccount"
				class="form-control-sm" id="account" aria-describedby="accountHelp"  value="aaaa"/>
		</div>
		<div id="message">
			可以判斷密碼長度或非法字元
		</div>
<%-- 		<form:errors path="name" cssClass="error" /> --%>
<!-- 		<span id="name.errors" class="error">此帳號已有人使用</span> -->
		<div class="form-group">
			<label for="password">新增會員密碼:</label>
			<form:input type="password" path="memberPassword"
				class="form-control-sm" id="password" aria-describedby="passwordHelp" value="bbb"/>
		</div>
		
<!-- 		新增權限 -->
		<div>
			<form:input path="memberAuthority" type="hidden" value="normal,ROLE_menber"/>
		</div>
		
		<div class="form-group">
			<label for="name">新增會員姓名:</label>
			<form:input type="text" path="memberName" class="form-control-sm"
				id="name" aria-describedby="nameHelp" placeholder="ex: 王曉明" value="陳晴芳"/>
		</div>
		<div class="form-group">
			<label for="phone">新增會員電話號碼:</label>
			<form:input type="number" path="memberPhone" class="form-control-sm"
				id="phone" aria-describedby="phoneHelp" value="0966688599"/>
		</div>
		
		<div class="form-group">
			<label for="lineid">新增會員Line ID:</label>
			<form:input type="text" path="memberLineId" class="form-control-sm"
				id="lineid" aria-describedby="LineIdHelp" value="aa15246"/>
		</div>		
		
		
		<div class="form-group">
			<label for="address">新增會員地址:</label>
			<form:input type="text" path="memberAddress" class="form-control-sm"
				id="address" aria-describedby="addressHelp" value="701台南市東區大學路1號" />
		</div>
		<div class="form-group">
			<label for="email">新增會員電子郵件:</label>
			<form:input type="email" path="memberEmail" class="form-control-sm"
				id="email" aria-describedby="emailHelp" placeholder="xxxxx@gmail.com" value="bbb123@gmail.com"/>
		</div>		

		<div class="form-group">
			<label for="birthday">新增會員生日:</label>
			<form:input type="date" path="memberBirthday" class="form-control-sm"
				id="birthday" aria-describedby="birthdayHelp" placeholder="ex: 1998/08/08" value="1998/08/08" />
		</div>		
		
		<div class="form-group">
			<label for="gender">新增會員性別:</label>
			<form:input type="text" path="memberGender" class="form-control-sm"
				id="gender" aria-describedby="genderHelp" value="女"/>
		</div>		
		
				
		<form:button type="submit" class="btn btn-primary" href="/FrontMember/addMember">送出</form:button>
	</form:form>



</body>
</html>