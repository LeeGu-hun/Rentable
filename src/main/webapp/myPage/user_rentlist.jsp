<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대여 내역</title>
<script type="text/javascript">
</script>
</head>

<body>
	<div style="margin: 0 auto" align="left">
		<!-- 게시판 수정 -->
		<form:form commandName="boardCommand" method="post" name="modifyform"
			enctype="multipart/form-data">
			<input type="hidden" id="R_id" name="R_id">
			<table cellpadding="0" cellspacing="0" width="100%">
				<div>
					<span><h2>빌린 내역</h2></span>
				</div>
				<tr align="center" valign="middle" bordercolor="#222">
					<td width="20%">제품명</td>
					<td width="20%">제품 현황</td>
					<td width="20%">남은 기간</td>
					<td width="20%">수익</td>
					<td width="20%">수령확인</td>
				</tr>			
			</table>
		</form:form>
	</div>
</body>
</html>