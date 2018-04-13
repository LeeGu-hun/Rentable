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

			<h2>찜 목록</h2>
			<table
				style="background: #2980b9; width: 100%; border: 1; border-style: solid; border-color: #D5D5D5;">



				<tr align="center" valign="middle" bordercolor="#222">

					<td width="80%"style="text-align: center; color: white; font-size: 30px;">제품명</td>
					<td width="20%"style="text-align: center; color: white; font-size: 30px;">가격</td>


				</tr>
			</table>
			<div id="likelist">
				
		<div>
			<ul  style="list-style:none; border: 1px;" >
				<c:forEach var="likelist" items="${likelist}">
				
					<li >
					
						<em style="color: green;font-size:20px;margin-left:12px; background-color:pink; border: 1;border-radius: 100%">${likelist.RL_itemnum}</em>
						<a style="margin-left: 450px ;text-decoration:none;color: black; " href="<c:url value="/ProdDetail/${likelist.RL_itemnum}"/>">
						 <em style="font-size: 20px">${likelist.RL_itemname}</em></a><em style="font-size: 20px;margin-left: 450px ;">${likelist.RL_price}</em>
						 <em style=""><a href="<c:url value="/likeDelete/${likelist.RL_itemnum}"/>">삭제</a></em> <br> 
						</li>
						
				</c:forEach>
			</ul>
		</div>
	</div>
			
			
		</form>
	</div>
</body>
</html>