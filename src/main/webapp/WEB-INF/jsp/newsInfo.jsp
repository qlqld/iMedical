<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<jsp:include page="default/mySlideShow.jsp" />

				<section class="pt-5">
					<div class="container" id="newsInfoContainer">
						<div class="row justify-content-center h-100">
							<div class="col-8 h-100">
								<div class="mb-3" id="home">
									<span class="fa fa-home" aria-hidden="true"></span> <a
										href="http://localhost:8080/iMedical/">首頁</a><span> > 消息總覽</span>
								</div>
								<div class="h-100 col" id="newsMsgList">
									<ul>
										<c:forEach var="newsMsg" items="${newsMsgList}">
											<li><a href="${contextRoot}/newsInfoPage?id=${newsMsg.id}&page=1">
													<span class="newsDate">
														<fmt:formatDate pattern="yyyy/MM/dd" value="${newsMsg.date}" />
													</span>
													<span>${newsMsg.title}</span>
												</a></li>
										</c:forEach>
									</ul>
									<div id="newsInfoBtn">
										<div class="row justify-content-center">
											<c:if test="${currPage != 1}">
												<a href="?page=1">最前一頁</a>
												<span>|</span>
												<a href="?page=${currPage - 1}">上一頁</a>
											</c:if>
											<c:if test="${currPage > 1 && currPage < totalPage}">
												<span>|</span>
											</c:if>
											<c:if test="${currPage < totalPage}">
												<a href="?page=${currPage + 1}">下一頁</a>
												<span>|</span>
												<a href="?page=${totalPage}">最後一頁</a>
											</c:if>
											<span>|</span> <span>${currPage}/${totalPage}頁</span> <span>|</span>
											<span>共: ${totalMsg}筆</span>
											<span>|</span>
											<span>快速跳頁:</span>
											<select id="selectPage" name="selectPage">
												<c:forEach var="num" begin="1" end="${totalPage}">
													<c:choose>
														<c:when test="${num == currPage}">
															<option value="${num}" selected="selected">${num}</option>
														</c:when>
														<c:otherwise>
															<option value="${num}">${num}</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</select>

										</div>
									</div>
									<div class="d-flex justify-content-center mt-3 mb-3">
										<a href="javascript:window.location.href = 'http://localhost:8080/iMedical/'"
											title="回上一頁">
											<button type="button" class="btn btn-info">
												回首頁
											</button>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<jsp:include page="default/myFooter.jsp" />



				<script src="${contextRoot}/js/my.newsInfo.js"></script>
				<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
				<script src="${contextRoot}/js/my.index.js"></script>
				<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
					integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
					crossorigin=""></script>

			</body>

			</html>