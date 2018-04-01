<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
		<form action="/">		
			<input type="text" name="id" id="id" placeholder="ID" required />
			<input type="password" name="pass" id="pass" placeholder="Password" required />
			<input type="password" name="passcheck" id="passcheck" placeholder="Password" required /><br><br>
			<input type="text" name="name" id="name" placeholder="Name" required />
			<input type="text" name="address" id="address" placeholder="Address" required /><br>
			<input type="text" name="addressDetail" id="addressDetail" placeholder="Address Detail" required /><br><br>
			
			<label> Phone </label><br>
			<select name="phone1"><option>선택</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
			</select> 
			-&nbsp  
			<input type="text" name="phone2" maxlength="4" style="width: 93px;"> 
			-&nbsp 
			<input type="text" name="phone3" maxlength="4" style="width: 93px;"><br><br>
			
			<label> Card </label><br>
			<div class="card">
				<input type="radio" value="None" id="a" name="card" checked />
				<label for="a" class="radio">A</label> 
				<input type="radio" value="None" id="b" name="card" /> 
				<label for="b" class="radio">B</label>
				<input type="radio" value="None" id="c" name="card" /> 
				<label for="c" class="radio">C</label>
			</div>			
			<input type="text" name="card1" maxlength="4" style="width: 56px;"> 
			-&nbsp 
			<input type="text" name="card2" maxlength="4" style="width: 56px;">
			-&nbsp 
			<input type="text" name="card3" maxlength="4" style="width: 56px;">
			-&nbsp 
			<input type="text" name="card4" maxlength="4" style="width: 56px;"><br><br>
			<p>
				By clicking Register, you agree on our 
				<a href="#">서비스 약관</a>
			</p><br><br>
			<a href="#" class="button">회원가입</a>
		</form>
	</div>
</body>
</html>
