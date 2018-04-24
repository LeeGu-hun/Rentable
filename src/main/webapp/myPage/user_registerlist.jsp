<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<title>등록 내역</title>
<script type="text/javascript">
	
</script>
</head>

<body>
	<div style="margin: 0 auto; width:92%;" align="left" >
		<form>
			<h3>
			<svg class="heart" viewBox="0 0 32 29.6">
  				<path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
				c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
			</svg>&nbsp등록 내역</h3>
			<table style="background: #324044;opacity:0.85; width: 100%; height:50px;
				border: 1; border-style: solid; border-color: white;">
				<tr align="center" valign="middle" style="text-align: center; color: white; font-size: 17px;">
					<td width="15%" >제품번호</td>
					<td width="85%" >제품명</td>
				</tr>
			</table>
			
			<table style="width: 100%; border:1;height:40px; border-style: solid; border-color: white;">
				<c:forEach var="itemlist" items="${itemlist}">
				<tr align="center" valign="middle" height="60px" style="text-align: center; color: black; font-size: 16px;
				 border-bottom: 0.2px solid black;">
					<td width="15%" >${itemlist.RP_itemnum}</td>
					<td width="85%">				
						<a style="text-decoration: none;" href="<c:url value="/ProdDetail/${itemlist.RP_itemnum}/${itemlist.ROI_stat}"/>">
							<span style="color:black;">${itemlist.RP_itemname}</span>
						</a>
					</td>
				</tr>
				</c:forEach>		
			</table>
		</form>
	</div>
</body>
</html>