<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
.btn01 {
	font-size: 20px;
	font-weight: 100;
	color: white;
	text-decoration: none;
	width: 58px;
	height: 27px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #3a57af;
	-webkit-box-shadow: 0 3px rgba(58, 87, 175, .75);
	-moz-box-shadow: 0 3px rgba(58, 87, 175, .75);
	box-shadow: 0 3px rgba(58, 87, 175, .75);
	transition: all 0.1s linear 0s;
	top: 0px;
	position: relative;
}

.btn01:hover {
	top: 3px;
	background-color: #2e458b;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background: #2f3b3f; color: #cac9cc; margin: 150px 0 0 0">
	<h1>
		<span style="font-size: 18pt; text-align: center;">
			<h1>회원가입이 완료되었습니다</h1><br>
			<h5>고객님의 회원가입을 진심으로 축하드립니다</h5>
			<h5>렌터블은 언제나 고객님의 입장에서 생각하며</h5>
			<h5>보다 나은 서비스를 제공하기 위해 최선을 다해서 노력하겠습니다</h5>
			<h5>감사합니다</h5>
		</span><span style="font-size: 18pt;"></span>
	</h1>
	<div>
		<br>
	</div>

	<div style="text-align: center;">
		<a href="${pageContext.request.contextPath}" class="btn01">메인으로</a>&nbsp&nbsp
		<a href="${pageContext.request.contextPath}/loginForm" class="btn01" title="Link">로그인</a>
	</div>
</body>
</html>