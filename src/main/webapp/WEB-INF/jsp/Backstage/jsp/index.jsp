<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="default/myNavbar.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
body{
/*  background-color: rgba(253, 248, 235, 0.25); */
  background-image: 
                   url("${contextRoot}/img/bgIMG2.png");
  background-repeat: no-repeat;
  background-position: center;   
  background-size: contain;  
  background-color: rgba(0, 0, 0, 0.25);
            
}
</style>


<title>iMedical長照醫療網後台管理</title>
</head>
<body>



	
	<div class="content-wrapper" style="min-height: 621px; ">
		<div class="container">

			<section class="content-header">
				<h1>
					後臺管理首頁 <small>iMedical</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${contextRoot}/"><i class="fa fa-dashboard">點擊連結前台首頁Home</i> </a></li>
					
					<li class="active"></li>
				</ol>
			</section>

			<section class="content">
				<div class="callout callout-info" style="background-color:rgb(240, 207, 41) ; border-radius: 30px; padding: 30px 30px 30px 30px; margin-bottom: 35px;">
					<h4>歡迎來到iMedical後台管理頁面!</h4>
					<p>在這裡可以......輕鬆管理會員、員工、訂單、前台網頁...等資料</p>
				</div>
				<!-- <div class="callout callout-danger" style="background-color: threedhighlight;">
					<h4>在此輸入訊息</h4>
					<p>在此輸入訊息</p>
				</div>
				<div class="box box-default" style="background-color: threedhighlight;">
					<div class="box-header with-border">
						<h3 class="box-title">在此輸入訊息</h3>
					</div>
					<div class="box-body">在此輸入訊息</div>

				</div> -->

			</section>

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