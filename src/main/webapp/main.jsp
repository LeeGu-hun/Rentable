<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Responsive Auto Show/Hide Toggle Menu Demo</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/category.css?version=1.11" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css?version=1.11" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/itemgoods.css?version=1.11" />

</head>

<body>
	<div id="wrap">
		<!-- header -->
		<div id="rent_head">
			<%@include file="/category/category.jsp"%>
		</div>
		<!-- body -->
		<div id="rent_body">
			<div id="rent_body_contents">
			<%@include file="/rentable_contents/rentable_body_contents.jsp"%>
			</div>
		</div>
		<!-- footer -->
		<div id="rent_footer">
			<div id="category_name"></div>
		</div>
	</div>
</body>
</html>
