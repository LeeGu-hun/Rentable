<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript">
	function Check() {
		var id = document.getElementById("id");
		var pass = document.getElementById("pass");
		var passcheck = document.getElementById("passcheck");

		var hp1 = document.getElementById("phone1");
		var hp2 = document.getElementById("phone2");
		var hp3 = document.getElementById("phone3");
		var hp = hp1.value + "-" + hp2.value + "-" + hp3.value;
		alert(hp);
		var card1 = document.getElementById("card1");
		var card2 = document.getElementById("card2");
		var card3 = document.getElementById("card3");
		var card4 = document.getElementById("card4");
		
		if (id.value == '' || id.value == null) {
			alert('ID를 입력하세요');
			focus.id;
			return false;
		}

		if (pass.value == '' || pass.value == null) {
			alert('비밀번호를 입력하세요');
			focus.pass;
			return false;
		}

		if (passcheck.value == '' || passcheck.value == null) {
			alert('비밀번호확인란을 입력하세요');
			focus.passcheck;
			return false;
		}

		if (pass.value != passcheck.value) {
			alert("비밀번호와 비밀번호 확인란이 다릅니다.");
			focus.pass;
			return false;
		}

		if (hp2.value.length <= 3 || hp3.value.length != 4) {
			alert("휴대폰번호를 정확히 입력해주세요");
			focus.hp2;
			return false;
		}

		if (isNaN(hp2.value) || isNaN(hp3.value)) {
			alert("휴대폰번호는 숫자만 들어갈 수 있습니다.");
			return false;
		}

		if (hp2.value.length > 3 || hp3.value.length == 4) {
			document.getElementById("R_phone").value = hp;
		}
		if (card1.value.length <= 3) {
			alert("카드번호를 정확히 입력해주세요");
			focus.card1;
			return false;
		}
		if (card2.value.length <= 3) {
			alert("카드번호를 정확히 입력해주세요");
			focus.card2;
			return false;
		}
		if (card3.value.length <= 3) {
			alert("카드번호를 정확히 입력해주세요");
			focus.card3;
			return false;
		}
		if (card4.value.length <= 3) {
			alert("카드번호를 정확히 입력해주세요");
			focus.card4;
			return false;
		} else {
			save();
		}
	}

	function save() {
		var str = document.getElementById('join');
		str.submit();
		alert("가입이 완료되었습니다.")
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rentable</title>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600'
	rel='stylesheet' type='text/css'>
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/joinform.css?version=1.1" />
</head>
<style>
</style>
<body>
	<div class="joinBox">
		<h1>회원가입</h1>
		<form:form commandName="JoinCommand" method="POST">
			<input type="text" name="id" id="id" placeholder="ID" required />
			<input type="password" name="pass" id="pass" placeholder="Password"
				required />
			<input type="password" name="passcheck" id="passcheck"
				placeholder="PasswordCheck" required />
			<br>
			<br>
			<input type="text" name="name" id="name" placeholder="Name" required />
			<input type="text" name="address" id="address" placeholder="Address"
				required />
			<br>

			<label> Phone </label>
			<br>
			<select id="phone1"><option>선택</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
			</select> 
         -&nbsp  
         <input type="text" id="phone2" maxlength="4"
				style="width: 93px;"> 
         -&nbsp 
         <input type="text" id="phone3" maxlength="4"
				style="width: 93px;">
			<br>
			<br>
			<input type="hidden" id="R_phone" name="R_phone">
			<label> Card </label>
			<br>
			<div class="card">
				<input type="radio" value="None" id="a" name="card" checked /> <label
					for="a" class="radio">A</label> <input type="radio" value="None"
					id="b" name="card" /> <label for="b" class="radio">B</label> <input
					type="radio" value="None" id="c" name="card" /> <label for="c"
					class="radio">C</label>
			</div>
			<input type="text" id="card1" name="card1" maxlength="4" style="width: 56px;"> 
         -&nbsp 
         <input type="text" id="card2" name="card2" maxlength="4"
				style="width: 56px;">
         -&nbsp 
         <input type="text" id="card3" name="card3" maxlength="4"
				style="width: 56px;">
         -&nbsp 
         <input type="text" id="card4" name="card4" maxlength="4"
				style="width: 56px;">
			<br>
			<br>
			<p>
				By clicking Register, you agree on our <a href="#">서비스 약관</a>
			</p>
			<br>
			<br>
			<a href="#" class="button" onclick="javascript:Check();" id="join"
				name="join">회원가입</a>
		</form:form>
	</div>
</body>
</html>