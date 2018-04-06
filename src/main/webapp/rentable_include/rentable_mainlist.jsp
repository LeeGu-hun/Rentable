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
							src="${pageContext.request.contextPath}/resources/images/Desert.jpg"
							style="width: 100%; height: 70%;"> </a>
						<p class="itemsinfo">
							<em>${items.RP_itemname}</em><br> <em>
								${items.RP_startdate} ~ ${items.RP_enddate} </em> <br> <strong>${items.RP_price}</strong>
						</p></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>