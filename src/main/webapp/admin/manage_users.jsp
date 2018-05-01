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
<script>
	function myFunction(data, stat) {
		$('#myModal').modal();
		$(".modal-body").empty();
		if (stat == 'normal') {
			$(".modal-body").append(
					"<span>" + data + " 님을 정지 하시겠습니까?" + "</span>");
			$('#userStat').on('click', function() {
				$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/userProd',
					data : {
						"R_id" : data,
						"R_name" : stat,
					},
					success : function(data1) {

					}
				});
			});
		} else {
			$(".modal-body").append(
					"<span>" + data + " 님을 정지 해제 하시겠습니까?" + "</span>");
			$('#userStat').on('click', function() {
				$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/userProd',
					data : {
						"R_id" : data,
						"R_name" : stat,
					},
					success : function(data1) {

					}
				});
			});
		}
	}
</script>
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
				<td width="15%">회원ID</td>
				<td width="15%">이름</td>
				<td width="10%">카드사</td>
				<td width="20%">잔여금액</td>
				<td width="8%">빌린갯수</td>
				<td width="8%">등록갯수</td>
				<td width="16%">아이디상태</td>
			</tr>
			<c:forEach var="items" items="${userlist}" varStatus="count">
				<tr align="center" valign="middle" height="60px"
					style="text-align: center; color: black; font-size: 16px; border-bottom: 0.2px solid black;">
					<td width="15%"><a
						onclick="javascript:myFunction('${items.r_id}','${items.r_stat}');">${items.r_id}</a></td>
					<td width="15%"><span style="color: black;">${items.r_name}</span></td>
					<td width="10%">${items.r_card}</td>
					<td width="20%"
						style="padding-left: 20px; color: #ae0000; font-family: Tahoma, sans-serif;">
						${items.r_cash}</td>
					<td width="12%">${items.borrow}</td>
					<td width="12%">${items.renting}</td>
					<c:choose>
						<c:when test="${items.r_stat == 'block'}">
							<td width="14%"><font color="red">정지</font></td>
						</c:when>
						<c:otherwise>
							<td width="14%">정상</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content" style="z-index: 11;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">선택 옵션</h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="userStat">승인</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>