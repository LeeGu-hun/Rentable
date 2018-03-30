<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MVC 게시판</title>
<script language="javascript">
	function addboard() {
		boardform.submit();
	}
</script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/category.css?version=1.22" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css?version=1.12" />
</head>
<body>
	<!-- header -->
	<div id="rent_head">
		<%@include file="/category/category.jsp"%>
	</div>
	<!-- body -->
	<div id="rent_body">
		<div id="rent_body_contents">
			<!-- 게시판 등록 -->
			<form:form enctype="multipart/form-data">
				<table>
					<tr align="center" valign="middle">
						<th colspan="5">상품 등록 페이지</th>
					</tr>
					<tr>
						<td><img src="${path}/images/${vo.productUrl}" width="700"
							height="400"></td>
						<td>
							<table style="height: 400px; width: 700px;">
								<tr>
									<td style="font-family: 돋음; font-size: 12" height="16">
										<div align="center">상품명</div>
									</td>
									<td><input name="BOARD_SUBJECT" type="text" size="50"
										maxlength="100" value="" /></td>
								</tr>
								<tr>
									<td style="font-family: 돋음; font-size: 12" height="16">
										<div align="center">카테고리</div>
									</td>
									<td><select  style="width:190px;height:25px;"><option >대분류</option>
											<option value="a">a</option>
											<option value="b">b</option>
											<option value="c">c</option>
									</select >&nbsp; <select style="width:190px;height:25px;"><option>소분류</option>
											<option value="a">a</option>
											<option value="b">b</option>
											<option value="c">c</option>
									</select></td>
								</tr>
								<tr>
									<td style="font-family: 돋음; font-size: 12" height="16">
										<div align="center">대여기간</div>
									</td>
									<td><input name="BOARD_NAME" type="date" style="width:175px;height:20px;"
										 /> &nbsp;~&nbsp; <input name="BOARD_NAME"
										type="date" style="width:175px;height:20px;"   /></td>
								</tr>
								<tr>
									<td style="font-family: 돋음; font-size: 12" height="16">
										<div align="center">일일 대여료</div>
									</td>
									<td><input name="BOARD_PASS" type="number" size="10"
										maxlength="10" value="" /> <input name="BOARD_PASS"
										type="button" size="10" maxlength="10" value="합리적인 대여료 계산기" />
									</td>

								</tr>
							</table>
						</td>

					</tr>

					<tr>
						<td style="font-family: 돋음; font-size: 12">
							<div align="left">
								상품 이미지 등록<input id="BOARD_FILE" name="BOARD_FILE" type="file" />
							</div>
						</td>
						
					</tr>
					
					<tr align="center" valign="middle">
						<td colspan="5">상품 상세 정보</td>
					</tr>

				</table>
				

				<table>
					<tr>
						<td> <textarea name="BOARD_CONTENT" cols="100"
								rows="15"></textarea><br><br></td>
					</tr>
				</table>
				<table border="1" style="border-color: green;">
					<tr align="center" valign="middle" >
						<th  colspan="5" style="font-family: 돋음; font-size: 12">
							※안심보장 서비스
						</th>
						<td><label>사용</label> <input name="BOARD_PASS" type="radio" />
							<label>사용 안함</label> <input name="BOARD_PASS" type="radio" /></td>
					</tr>
									</table>


				<table>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					
					
					<tr align="center" valign="middle">
	
						<td colspan="5"><input type="submit" value="등록" />&nbsp;&nbsp;
							<a href="javascript:history.go(-1)">[뒤로]</a></td>
					</tr>
					</table>
					





			</form:form>
			<!-- 게시판 등록 -->
		</div>
	</div>
	<!-- footer -->
	<div id="rent_footer">
		<div id="category_name"></div>
	</div>

</body>
<body>

</body>
</html>


