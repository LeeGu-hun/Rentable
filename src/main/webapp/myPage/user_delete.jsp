<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script language="javascript">
	function Check() {
		var R_id = document.getElementById("R_id");	
		var R_password = document.getElementById("R_password");	
		var R_password2 = document.getElementById("R_password2");	
////////////////////////////////////////////////////////////////////////////////
		if (R_password2.value == '' || R_password2.value == null) {
			document.getElementById('result').textContent = '비밀번호를 입력해주세요';
			focus.R_password2;
			return false;		
		}
		if(R_password.value != R_password2.value){
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
		if(R_password.value == R_password2.value){
			save();			
		}
	}
	function save() {	
		user_delete.submit();
		alert("탈퇴가 완료되었습니다.");
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rentable</title>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600'
	rel='stylesheet' type='text/css'>
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_modify.css?version=1.2" />
</head>
<style>
</style>
<body>
	<div class="modifyBox" align="center" >
		<div align="left" style="width:380px;">
		<h1>회원탈퇴</h1>
		<form action="${pageContext.request.contextPath}/deleteAction" name="user_delete" method="POST" enctype="multipart/form-data">
			<input type="text" name="R_id" id="R_id" value="${userInfo.r_id}" readonly/><br>
			<input type="hidden" name="R_password" id="R_password" value="${userInfo.r_password}" /><br>
			<input type="password" name="R_password2" id="R_password2" placeholder="Password" required /><br>
			<span id="result" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br>
			
				<tr align="center" valign="middle">
					<td colspan="5"><font size=2>
					<a href="javascript:Check()" class="button" > 회원탈퇴</a>&nbsp;&nbsp;
					</font></td><br>
				</tr>
		</form><br><br><br><br>
		</div>
	</div>
</body>
</html>