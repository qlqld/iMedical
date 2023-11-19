<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
		<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>公告消息</title>

			<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
			<link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css">
			<!-- my javascript -->
			<link rel="stylesheet" href="${contextRoot}/css/my.index.css" />
			<link rel="stylesheet" href="${contextRoot}/css/my.newsInfo.css" />
			<link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
					integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
					crossorigin="" />
		</head>

		<body>
			<!-- header block-->
			<jsp:include page="default/myNavbar.jsp" />

			<section class="pt-5 mb-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-8">
							<div class="mb-3"><span class="fa fa-home" aria-hidden="true"></span> <a href="http://localhost:8080/iMedical/">首頁</a> > <span>最新公告</span></div>
							<div class="mb-4">
								<h4>最新公告: ${newsMsg.title}</h4>
								<hr/>
								<h4>更新日期: ${newsMsg.date}</h4>
							</div>
							<div id="text">
								<p>${newsMsg.text}</p>
							</div>
							<div class="d-flex justify-content-center mt-3 mb-3">
								<a href="javascript:history.back()" title="回上一頁">
									<button type="button" class="btn btn-info">
										回上一頁
									</button>
								</a>	
							</div>
						</div>
					</div>
				</div>
			</section>
			<jsp:include page="default/myFooter.jsp"/>
				


			<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
			<script src="${contextRoot}/js/my.index.js"></script>
			<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
					integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
					crossorigin=""></script>
		</body>

		</html>