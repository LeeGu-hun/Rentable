<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script language="javascript">
	function Check() {
		var R_password = document.getElementById("R_password");
		var R_password = document.getElementById("passcheck");


		var hp1 = document.getElementById("phone1");
		var hp2 = document.getElementById("phone2");
		var hp3 = document.getElementById("phone3");
		var R_phone = hp1.value + "-" + hp2.value + "-" + hp3.value;

		var R_card = document.getElementById("R_card");
		
		var card1 = document.getElementById("card1");
		var card2 = document.getElementById("card2");
		var card3 = document.getElementById("card3");
		var card4 = document.getElementById("card4");
		var R_cardnum = card1.value +  "-" + card2.value +  "-" + card3.value +  "-" + card4.value;
	
////////////////////////////////////////////////////////////////////////////////

		if (R_password.value == '' || R_password.value == null) {
			document.getElementById('result').textContent = '비밀번호를 입력해주세요';
			focus.R_password;
			return false;
		}
		if (passcheck.value == '' || passcheck.value == null) {
			document.getElementById('result').textContent= '비밀번호확인을 입력해주세요';
			focus.passcheck;
			return false;
		}
		if (R_password.value != passcheck.value) {
			document.getElementById('result').textContent= '비밀번호가 일치하지 않습니다';
			focus.R_password;
			return false;
		} else if(R_password.value == passcheck.value){
			document.getElementById('result').textContent= '';
			document.getElementById('result1').textContent= '일치';
		} 
////////////////////////////////////////////////////////////////////////////////		

		if (!isNaN(R_name.value)) {
			document.getElementById('result2').textContent= '이름을 정확히 입력해주세요';
			return false;
		}
		if (R_address.value == '' || R_address.value == null) {
			document.getElementById('result2').textContent = '주소를 입력해주세요';
			focus.R_address;
			return false;
		}
		if (R_address.value != null) {
			document.getElementById('result2').textContent = '';

		}
////////////////////////////////////////////////////////////////////////////////

		if (isNaN(hp1.value)) {
			document.getElementById('result3').textContent= '휴대폰앞자리를 선택해주세요';
			return false;
		}
		if (hp2.value.length <= 3 || hp3.value.length != 4) {
			document.getElementById('result3').textContent= '휴대폰번호를 정확히 입력해주세요';
			focus.hp2;
			return false;
		}

		if (isNaN(hp2.value) || isNaN(hp3.value)) {
			document.getElementById('result3').textContent= '휴대폰번호는 숫자만 들어갈 수 있습니다';
			return false;
		}
		if (hp2.value.length > 3 || hp3.value.length == 4) {
			document.getElementById('result3').textContent = '';
			document.getElementById("R_phone").value = R_phone;
		}
////////////////////////////////////////////////////////////////////////////////
		
		if (card1.value.length <= 3) {
			document.getElementById('result4').textContent= '카드번호를 정확히 입력해주세요';
			focus.card1;
			return false;
		}
		if (card2.value.length <= 3) {
			document.getElementById('result4').textContent= '카드번호를 정확히 입력해주세요';
			focus.card2;
			return false;
		}
		if (card3.value.length <= 3) {
			document.getElementById('result4').textContent= '카드번호를 정확히 입력해주세요';
			focus.card3;
			return false;
		}
		if (card4.value.length <= 3) {
			document.getElementById('result4').textContent= '카드번호를 정확히 입력해주세요';
			focus.card4;
			return false;
		}
		if (isNaN(card1.value) || isNaN(card2.value) || isNaN(card3.value) || isNaN(card4.value)) {
			document.getElementById('result4').textContent= '카드번호는 숫자만 들어갈 수 있습니다';
			return false;
		}
		if(card1.value.length>3 || card2.value.length>3 || card3.value.length>3 || card4.value.length>3){
			document.getElementById('result4').textContent = '';
			document.getElementById("R_cardnum").value = R_cardnum;
			save();
		} 
	}
	function save() {	
		userModify.submit();
		alert("수정이 완료되었습니다.");
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
	href="${pageContext.request.contextPath}/resources/css/user_modify.css?version=1.4" />
</head>
<style>
</style>
<body>
	<div class="modifyBox" align="center" >
		<div align="left" style="width:380px;">
		<h1>회원수정</h1>
		<form action="${pageContext.request.contextPath}/userAction" name="userModify" method="POST" enctype="multipart/form-data">
			<input type="text" name="R_id" id="R_id" placeholder="" value="${userInfo.r_id}" readonly/><br><br>
			<input type="password" name="R_password" id="R_password" placeholder="Password" required /><br><br>
			<input type="password" name="passcheck" id="passcheck" placeholder="PasswordCheck" required /><br><br>
			<span id="result" style="font-size:10pt;color:#e22424;">${requestScope.result }</span>
			<span id="result1" style="font-size:10pt;color:#13af32;">${requestScope.result }</span><br><br>
			<input type="text" name="R_name" id="R_name" placeholder="Name" required value="${userInfo.r_name}" /><br><br>
			<input type="text" name="R_address" id="R_address" placeholder="Address" required value="${userInfo.r_address}" /><br><br>
			<span id="result2" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br><br>

			<label> Phone </label>
			<br>
			<select id="phone1" required value="${phone1}">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
			</select> 
         -&nbsp  
         <input type="text" id="phone2" maxlength="4" style="width: 93px;" value="${phone2}"> 
         -&nbsp 
         <input type="text" id="phone3" maxlength="4" style="width: 93px;" value="${phone3}"><br>
			<input type="hidden" id="R_phone" name="R_phone">
			<span id="result3" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br>
			<label> Card </label>
			<br>
			<select id="R_card" name="R_card">
				<option id="R_card" name="R_card">${userInfo.r_card}</option>
				<option value="A"id="R_card" name="R_card">A</option>
				<option value="B"id="R_card" name="R_card">B</option>
				<option value="C"id="R_card" name="R_card">C</option>
			</select><br>			
		<input type="text" id="card1" name="card1" maxlength="4" style="width: 56px;" value="${card1}"> 
        -&nbsp 
        <input type="text" id="card2" name="card2" maxlength="4" style="width: 56px;" value="${card2}">
        -&nbsp 
        <input type="text" id="card3" name="card3" maxlength="4" style="width: 56px;" value="${card3}">
        -&nbsp 
        <input type="text" id="card4" name="card4" maxlength="4" style="width: 56px;" value="${card4}">
        <input type="hidden" id="R_cardnum" name="R_cardnum">
		<span id="result4" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br><br>

				<tr align="center" valign="middle">
					<td colspan="5"><font size=2>
					<a href="javascript:Check()" class="button" >수정</a>&nbsp;&nbsp;
					</font></td><br><br><br><br><br>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>