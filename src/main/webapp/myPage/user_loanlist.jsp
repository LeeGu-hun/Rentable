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
		<form>
		
			<h2>빌려준 내역</h2>
			<table style="background:  #2980b9; width: 100%; border:1; border-style: solid; border-color: #D5D5D5;">
				
					
				
				<tr align="center" valign="middle" bordercolor="#222">
				<td width="20%" style="text-align: center;  color: white;  font-size: 30px;">주문번호</td>
					<td width="20%"style="text-align: center;  color: white;  font-size: 30px;">제품 현황</td>
					<td width="20%"style="text-align: center;  color: white;  font-size: 30px;">남은 기간</td>
					<td width="20%"style="text-align: center;  color: white;  font-size: 30px;">수익</td>
					<td width="20%"style="text-align: center;  color: white;  font-size: 30px;">제품 현황</td>
				</tr>			
			</table>
		</form>
	</div>
</body>
</html>