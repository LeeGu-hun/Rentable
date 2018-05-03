<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Responsive Auto Show/Hide Toggle Menu Demo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?version=1.15" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css?version=1.15" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/itemgoods.css?version=1.15" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/category.css?version=1.15" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/chat.css?version=1.15" />
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/sockjs-0.3.4.js"></script>
</head>
<style>
@media screen and ( max-width : 1200px ) {
	#rent_body_contents {
		width: 99%;
	}
}
</style>

<body onbeforeunload="win_close();">
	<div id="wrap">
		<!-- header -->
		<div id="rent_head">
			<div style="float: left; width: 15%; height: 100px;">
				<a href="${pageContext.request.contextPath}"
					style="width: 100%; height: 100%;"> <img alt=""
					src="${pageContext.request.contextPath}/resources/images/rentable.jpg"
					style="width: 100%; height: 100%;">
				</a>
			</div>
			<div style="float: left; width: 85%; height: 100px;">
				<%@include file="/category/category.jsp"%>
			</div>

		</div>
		<!-- body -->
		<div id="rent_body">
			<div id="rent_body_contents">
				<div id="container">
					<%@include file="/rentable_contents/rentable_body_contents.jsp"%>
				</div>
			</div>
		</div>
		<!-- footer -->
		<div id="rent_footer">
			<%@include file="/rentable_include/rentable_footer.jsp"%>
		</div>
	</div>

</body>
</html>
