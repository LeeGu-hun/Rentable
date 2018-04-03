<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
<p>메인</p>
<div class="itemgoods">
		<div class="itemwrap">
			<ul class="itemlist_row">
				<c:forEach var="items" items="${mainlist}">
					<li>${items.RP_itemname}</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>