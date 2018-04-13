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
		<form >
			
					<h2 >등록 내역</h2>
					<table style="background:  #2980b9; width: 100%; border:1; border-style: solid; border-color: #D5D5D5;">
				
				<tr >
					<td width="3%" style="text-align: center;  color: white;  font-size: 30px;">No.</td>
					
												
					<td width="97" style="text-align: center; color: white; font-size: 30px;">제품명</td>
					
					
				</tr>		

			</table>
				<div id="itemlist">
				
		<div>
			<ul  style="list-style:none; border: 1px;" >
				<c:forEach var="itemlist" items="${itemlist}">
				
					<li >
					
						<em style="color: green;font-size:20px;margin-left:12px; background-color:pink; border: 1;border-radius: 100%">${itemlist.RP_itemnum}</em>
						<a style="margin-left: 650px ;text-decoration:none;color: black; " href="<c:url value="/ProdDetail/${itemlist.RP_itemnum}"/>">
						 <em style="font-size: 20px">${itemlist.RP_itemname}</em></a> <br> 
						</li>
						
				</c:forEach>
			</ul>
		</div>
	</div>

		</form>



	</div>
</body>
</html>