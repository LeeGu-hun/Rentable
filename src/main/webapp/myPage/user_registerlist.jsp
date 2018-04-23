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

			<h2>등록 내역</h2>
			<table
				style="background: #2f3b3f;opacity:0.85; width: 100%; height:50px; border: 1; border-style: solid; border-color: #D5D5D5;">

				<tr>
					<td width="20%"
						style="text-align: center; color: white; font-size: 30px;">제품번호</td>


					<td width="80"
						style="text-align: center; color: white; font-size: 30px;">제품명</td>


				</tr>

			</table>
			<table style="width: 100%; border:1;height:40px; border-style: solid; border-color: #D5D5D5;">
				<c:forEach var="itemlist" items="${itemlist}">
				<tr align="center" valign="middle" bordercolor="#222" height="35px">
					<td width="20%"
						style="text-align: center; color: black; font-size: 20px;">${itemlist.RP_itemnum}</td>
					<td width="80%">				
						<a style="text-align: center; text-decoration: none; color: black; font-size: 20px;" 
						href="<c:url value="/ProdDetail/${itemlist.RP_itemnum}/${itemlist.ROI_stat}"/>">
									<em style="font-size: 20px">${itemlist.RP_itemname}</em></a></td>
				</tr>
				</c:forEach>		
		</table>

		</form>



	</div>
</body>
</html>