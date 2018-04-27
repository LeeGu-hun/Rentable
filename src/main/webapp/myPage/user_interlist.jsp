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

.del {
	font-size: 12px;
	font-weight: 100;
	color: white;
	padding: 6px 25px 0px 20px;
	margin: 10px 10px 20px 10px;
	display: inline-block;
	float: center;
	text-decoration: none;
	width: 70px;
	height: 27px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #39484d;
	-webkit-box-shadow: 0 3px rgba(71, 92, 99, .75);
	-moz-box-shadow: 0 3px rgba(71, 92, 99, .75);
	box-shadow: 0 3px rgba(71, 92, 99, .75);
	transition: all 0.1s linear 0s;
	top: 0px;
	position: relative;
}
.del:hover {
	text-decoration: none;
	top: 3px;
	color:white;
	background-color: #475c63;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜 목록</title>
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
			</svg>&nbsp찜 목록</h3>
			<table style="background: #324044;opacity:0.85; width: 100%; height:50px;
				border: 1; border-style: solid; border-color: white;">
				<tr align="center" valign="middle" style="text-align: center; color: white; font-size: 17px;">
					<td width="15%" >상품 번호</td>
					<td width="50%" >상품명</td>
					<td width="25%" >일일 대여료</td>
					<td width="10%" >삭제</td>
				</tr>
			</table>
			
			<table style="width: 100%; border:1;height:40px; border-style: solid; border-color: white;">
				<c:forEach var="likelist" items="${likelist}">
				<tr align="center" valign="middle" height="35px" style="text-align: center; color: black; font-size: 16px;
				 border-bottom: 0.2px solid black;">
					<td width="15%" >${likelist.RL_itemnum}</td>
					<td width="50%">				
						<a style=" text-decoration: none;" href="<c:url value="/ProdDetail/${likelist.RL_itemnum}/${likelist.RL_stat}"/>">
						<span style="color:black;">${likelist.RL_itemname}</span>
						</a></td>
					<td width="25%" style="padding-left:30px; color:#ae0000;font-family: Tahoma,serif;" >${likelist.RL_price} 
					<span style="font-size: 12px;">원</span></td>
					<td width="10%" >
						<a href="<c:url value="/likeDelete/${likelist.RL_itemnum}"/>" class="del">삭제</a></td>
				</tr>
				</c:forEach>		
			</table>
		</form>
	</div>
</body>
</html>