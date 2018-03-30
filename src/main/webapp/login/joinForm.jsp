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
</head>
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form,
	fieldset, input, textarea, p, blockquote, th, td {
	padding: 0;
	margin: 0;
}

ol, ul, li {
	list-style: none
}

:focus {
	outline: none
}

body {
	width: 100%;
	height: 100%;
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-moz-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-moz-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-webkit-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-webkit-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-o-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-o-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-ms-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-ms-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		linear-gradient(to bottom, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		linear-gradient(135deg, #670d10 0%, #092756 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D',
		endColorstr='#092756', GradientType=1);
}

input, textarea, select {
	font-family: 'Open Sans', sans-serif;
	font-size: 16px;
	color: #4c4c4c;
}

p {
	font-size: 12px;
	width: 300px;
	display: inline-block;
	margin-left: 18px;
}

h1 {
	font-size: 32px;
	font-weight: 300;
	color: #4c4c4c;
	text-align: center;
	padding-top: 10px;
	margin-bottom: 10px;
}

html {
	background-color: #ffffff;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.joinBox {
	margin: 0 auto;
	width: 380px;
	height: 790px;
	-webkit-border-radius: 8px/7px;
	-moz-border-radius: 8px/7px;
	border-radius: 8px/7px;
	background-color: #ebebeb;
	-webkit-box-shadow: 1px 2px 5px rgba(0, 0, 0, .31);
	-moz-box-shadow: 1px 2px 5px rgba(0, 0, 0, .31);
	box-shadow: 1px 2px 5px rgba(0, 0, 0, .31);
	border: solid 1px #cbc9c9;
}

form {
	margin: 0 30px;
}

hr {
	color: #a9a9a9;
	opacity: 0.3;
}

input[type=text], input[type=password] {
	width: 300px;
	height: 39px;
	-webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
	-moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px;
	border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
	background-color: #fff;
	-webkit-box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	-moz-box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	border: solid 1px #cbc9c9;
	margin-left: -5px;
	margin-top: 13px;
	padding-left: 10px;
}

select {
width:70px;
height: 39px;
-webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
	-moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px;
	border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
	background-color: #fff;
	-webkit-box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	-moz-box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	box-shadow: 1px 2px 5px rgba(0, 0, 0, .09);
	border: solid 1px #cbc9c9;
	margin-left: -5px;
	margin-top: 13px;
	padding-left: 10px;
}

input[type=radio] {
  visibility: hidden;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-top: 5px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}
a.button {
	font-size: 14px;
	font-weight: 100;
	color: white;
	padding: 6px 25px 0px 20px;
	margin: 10px 8px 20px 0px;
	display: inline-block;
	float: right;
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

a.button:hover {
	top: 3px;
	background-color: #2e458b;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
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
