<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<script type="text/javascript">
	function additemlogin() {
		var r_id = document.getElementById("r_id");

		var iteminsert = document.getElementById("iteminsert");

		if (r_id.value == '' || r_id.value == null) {
			alert("로그인 이후 사용할수있습니다");
			return false;
		} else {
			iteminsert.href = "${pageContext.request.contextPath}/ProdInsert"
		}
	}
</script>

<body>

	<div class="nav_wrapper">

		<div class="spinner-master">

			<input type="checkbox" id="spinner-form" /> <label
				for="spinner-form" class="spinner-spin">

				<div class="spinner diagonal part-1"></div>

				<div class="spinner horizontal"></div>

				<div class="spinner diagonal part-2"></div>

			</label>

		</div>


		<nav id="menu" class="menu" >

			<ul class="dropdown">

				<li><a href="#cateitemlist" title="Link">카테고리</a>

					<ul>

						<c:forEach items="${category}" var="cate">

							<li><a
								href="${pageContext.request.contextPath}/category?maincate=${cate.maincate_value}">${cate.maincate_value}</a>
						</c:forEach>

						<li>
					</ul></li>

				<c:set var="stat" value="${sessionScope.userInfo.r_stat}" />

				<c:choose>

					<c:when test="${stat eq 'normal'}">

						<li><a id="iteminsert" onclick="additemlogin()" title="Link">물품등록</a>
							<input type="hidden" id="r_id"
							value="${sessionScope.userInfo.r_id}"></li>


						<li><a href="#Link" title="Link">마이페이지</a>

							<ul>


								<li><a
									href="${pageContext.request.contextPath}/user_interlist">찜
										목록</a></li>

								<li><a
									href="${pageContext.request.contextPath}/user_registerlist">등록
										내역</a></li>

								<li><a
									href="${pageContext.request.contextPath}/user_loanlist">빌려준
										내역</a></li>

								<li><a
									href="${pageContext.request.contextPath}/user_rentlist">빌린
										내역</a></li>
								<li><a
									href="${pageContext.request.contextPath}/user_modify">개인정보수정</a></li>

								<li><a
									href="${pageContext.request.contextPath}/user_delete">회원탈퇴</a></li>

							</ul></li>

						<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>

					</c:when>

					<c:when test="${stat eq 'admin'}">

						<li><a href="login/loginForm.jsp" title="Link">관리자메뉴</a>

							<ul>

								<li><a
									href="${pageContext.request.contextPath}/user_manage">회원관리</a></li>

								<li><a href="${pageContext.request.contextPath}/sale_manage">물품관리</a></li>

							</ul></li>
						<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
					</c:when>

					<c:otherwise>

						<li><a href="${pageContext.request.contextPath}/loginForm"
							title="Link">로그인</a></li>

					</c:otherwise>

				</c:choose>

			</ul>

		</nav>

		<form class="search_box" id="search_box"
			action="${pageContext.request.contextPath}/category">
			<input name="keyword" id="keyword" placeholder="Search here" value=""
				type="text"> <input class="search_icon" value="Search"
				type="submit">
		</form>

	</div>

	<script
		src="${pageContext.request.contextPath}/resources/js/category.js?version=1.14"></script>



</body>

</html>