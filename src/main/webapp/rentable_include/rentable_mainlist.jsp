<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head></head>
<body>
	<div class="itemgoods">
		<div class="itemwrap">
			<ul class="itemlist_row">
				<c:forEach var="items" items="${mainlist}">
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
								</em> <br> <strong>${items.RP_price}1</strong>
							</p> </a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>