<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="nav_wrapper">
		<!--<a class="menu-link" href="#menu"></a>-->

		<div class="spinner-master">
			<input type="checkbox" id="spinner-form" /> <label
				for="spinner-form" class="spinner-spin">
				<div class="spinner diagonal part-1"></div>
				<div class="spinner horizontal"></div>
				<div class="spinner diagonal part-2"></div>
			</label>
		</div>
		<a href="#search_box" class="btn" id="search">&#9740;</a>
		<nav id="menu" class="menu">
			<ul class="dropdown">
				<li><a href="#cateitemlist" title="Link">카테고리</a>
					<ul>
						<c:forEach items="${category}" var="cate">
							<li><a href="../category?maincate=${cate.maincate_code}">${cate.maincate_value}</a>
						</c:forEach>
						<li>
					</ul></li>
				<li><a href="#Link" title="Link">지역카테</a>
					<ul>
						<li><a href="#Link" title="Link ">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
					</ul></li>
				<li><a href="item/iteminsert.jsp" title="Link">물품등록</a></li>
				<c:set var="stat" value="${sessionScope.userInfo.r_stat}" />
				<c:choose>
					<c:when test="${stat eq 'normal'}">
						<li><a href="login/loginForm.jsp" title="Link">개인정보</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login/loginForm.jsp" title="Link">로그인</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
		<form class="search_box" id="search_box" action="/search/">
			<input name="search_criteria" placeholder="Search here" value=""
				type="text"> <input class="search_icon" value="Search"
				type="submit">
		</form>
	</div>




	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/category.js?version=1.11"></script>
</body>
</html>