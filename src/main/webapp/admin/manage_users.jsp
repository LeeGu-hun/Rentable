<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<style>
.heart {
	fill: red;
	position: relative;
	top: 5px;
	width: 30px;
	animation: pulse 1s ease infinite,
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>빌린 내역</title>
<script type="text/javascript">
	
</script>
</head>

<body>
	<div style="margin: 0 auto; width: 92%;" align="left">
		<h3>&nbsp회원 관리</h3>
		<table style="width: 100%">
			<tr align="center" valign="middle"
				style="text-align: center; color: white; font-size: 17px; background: #324044; opacity: 0.85; width: 100%; height: 50px; border: 1; border-style: solid; border-color: white;">
				<td width="20%">회원ID</td>
				<td width="15%">이름</td>
				<td width="10%">카드</td>
				<td width="25%">가입일</td>
				<td width="15%">상태</td>
				<td width="20%">보기</td>
			</tr>
			<c:forEach var="items" items="${userlist}">
				<tr align="center" valign="middle" height="60px"
					style="text-align: center; color: black; font-size: 16px; border-bottom: 0.2px solid black;">
					<td width="20%">${items.r_id}</td>
					<td width="15%"><span style="color: black;">${items.r_name}</span></td>
					<td width="10%">${items.r_card}</td>
					<td width="25%"
						style="padding-left: 20px; color: #ae0000; font-family: Tahoma, sans-serif;">
						${items.r_regdate}</td>
					<c:choose>
						<c:when test="${items.r_stat == 'block'}">
							<td width="15%"><font color="red">정지</font></td>
						</c:when>
						<c:otherwise>
							<td width="15%">정상</td>
						</c:otherwise>
					</c:choose>
					<td width="15%">보기</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>