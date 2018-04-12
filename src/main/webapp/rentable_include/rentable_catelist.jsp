<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<style>
#ctglist {
	width: 95%;
	margin: auto;
	height: auto;
}

#ctglist>ul {
	list-style: none;
	margin: auto;
	width: 100%;
	box-shadow: 0px 0px 5px 0px rgba(102, 186, 255, 0.4);
	display: inline-block;
}

#ctglist>ul>li {
	width: 47%;
	magin:auto;
	float: left;
	background: white;
	height: 50px;
	border: 1px solid;
}
</style>

<body>
	<div class="itemgoods">
		<div id="ctglist">
		<p>${maincate}</p>
			<ul>
				<c:forEach var="subcate" items="${subcatelist}">
					<li><a
						href="${pageContext.request.contextPath}/category?maincate=${maincate}&subcate=${subcate.RP_catesub}">
							<em>${subcate.RP_catesub}</em> <span>${subcate.RP_subCount}</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>

		<div class="itemwrap">
			<ul class="itemlist_row">
				<c:forEach var="items" items="${maincatelist}">
					<li><a href="<c:url value="/ProdDetail/${items.RP_itemnum}"/>"><img
							alt=""
							src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
							style="width: 100%; height: 70%;">

							<p class="itemsinfo">
								<em>${items.RP_itemname}</em><br> <em> <fmt:parseDate
										var="dateString1" value="${items.RP_startdate}"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${dateString1}" pattern="yyyy.MM.dd" /> ~ <fmt:parseDate
										var="dateString2" value="${items.RP_enddate}"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${dateString2}" pattern="yyyy.MM.dd" />
								</em> <br> <strong>${items.RP_price}</strong>
							</p> </a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>