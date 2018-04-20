<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script language="javascript">
    $(document).ready(function(){
        $('#checkbtn').on('click', function(){
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/checkSignup',
                data: {
                    "R_id" : $('#R_id').val()
                },
                success: function(data){
                	if($.trim(data) == 1) {
                        $('#checkMsg').html('<span style="color:red">사용불가능</span>');
                    }else if($.trim(data) == 0){
                    	if(R_id.value == '' || R_id.value == null){
                    		$('#checkMsg').html('');
                    	} else {
                        $('#checkMsg').html('<span style="color:blue">사용가능</span>');
                        document.getElementById('result0').textContent = '';
                    	}
                    }   
                }
            });   
        });       
    });
    $(document).ready(function(){
        $('#checkbtn2').on('click', function(){
        	var R_cardnum = card1.value +  "-" + card2.value +  "-" + card3.value +  "-" + card4.value;
        	document.getElementById("R_cardnum").value = R_cardnum;
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/checkCard',
                data: {
                	"R_card" : $("input[type=radio][name=R_card]:checked").val(),
                    "R_cardnum" : $('#R_cardnum').val()
                },
                success: function(data){
                	if($.trim(data) == 1) {
                        $('#checkMsg2').html('<span style="color:blue">사용가능</span>');
                        document.getElementById('result4').textContent = '';
                    }else if($.trim(data) == 0){                 	
                        $('#checkMsg2').html('<span style="color:red">사용불가능</span>');
                        document.getElementById('result4').textContent = '존재하지 않는 카드입니다';                   	
                    }   
                }
            });   
        });       
    });
	function Check() {
		var R_id = document.getElementById("R_id");
		var checkMsg = document.getElementById("checkMsg");
		var R_password = document.getElementById("R_password");
		var passcheck = document.getElementById("passcheck");

		var hp1 = document.getElementById("phone1");
		var hp2 = document.getElementById("phone2");
		var hp3 = document.getElementById("phone3");
		var R_phone = hp1.value + "-" + hp2.value + "-" + hp3.value;

		var card1 = document.getElementById("card1");
		var card2 = document.getElementById("card2");
		var card3 = document.getElementById("card3");
		var card4 = document.getElementById("card4");
		var R_cardnum = card1.value +  "-" + card2.value +  "-" + card3.value +  "-" + card4.value;
	
////////////////////////////////////////////////////////////////////////////////
		if (R_id.value == '' || R_id.value == null) {
			document.getElementById('result0').textContent = '아이디를 입력해주세요';
			focus.R_id;
			return false;
		}
		
		if (document.getElementById('checkMsg').textContent != "사용가능") {
			document.getElementById('result0').textContent = '중복확인을 체크해주세요';
			focus.R_id;
			return false;
		}
	
		////////////////////////////////////////////////////////////////////////////////		
		if (R_password.value == '' || R_password.value == null) {
			document.getElementById('result0').textContent = '';
			document.getElementById('result').textContent = '비밀번호를 입력해주세요';
			focus.R_password;
			return false;
		}
		if (passcheck.value == '' || passcheck.value == null) {
			document.getElementById('result').textContent = '비밀번호확인을 입력해주세요';
			focus.passcheck;
			return false;
		}
		if (R_password.value != passcheck.value) {
			document.getElementById('result').textContent = '비밀번호가 일치하지 않습니다';
			document.getElementById('result1').textContent = '';
			focus.R_password;
			return false;
		} else if (R_password.value == passcheck.value) {
			document.getElementById('result').textContent = '';
			document.getElementById('result1').textContent = '일치';
		}
		////////////////////////////////////////////////////////////////////////////////		

		if (R_name.value == '' || R_name.value == null) {
			document.getElementById('result2').textContent = '이름을 입력해주세요';
			focus.R_name;
			return false;
		}
		if (!isNaN(R_name.value)) {
			document.getElementById('result2').textContent = '이름을 정확히 입력해주세요';
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
			document.getElementById('result3').textContent = '휴대폰앞자리를 선택해주세요';
			return false;
		}
		if (hp2.value.length <= 3 || hp3.value.length != 4) {
			document.getElementById('result3').textContent = '휴대폰번호를 정확히 입력해주세요';
			focus.hp2;
			return false;
		}

		if (isNaN(hp2.value) || isNaN(hp3.value)) {
			document.getElementById('result3').textContent = '휴대폰번호는 숫자만 들어갈 수 있습니다';
			return false;
		}
		if (hp2.value.length > 3 || hp3.value.length == 4) {
			document.getElementById('result3').textContent = '';
			document.getElementById("R_phone").value = R_phone;
		}
		////////////////////////////////////////////////////////////////////////////////

		if (card1.value.length <= 3) {
			document.getElementById('result4').textContent = '카드번호를 정확히 입력해주세요';
			focus.card1;
			return false;
		}
		if (card2.value.length <= 3) {
			document.getElementById('result4').textContent = '카드번호를 정확히 입력해주세요';
			focus.card2;
			return false;
		}
		if (card3.value.length <= 3) {
			document.getElementById('result4').textContent = '카드번호를 정확히 입력해주세요';
			focus.card3;
			return false;
		}
		if (card4.value.length <= 3) {
			document.getElementById('result4').textContent = '카드번호를 정확히 입력해주세요';
			focus.card4;
			return false;
		}
		if (isNaN(card1.value) || isNaN(card2.value) || isNaN(card3.value)
				|| isNaN(card4.value)) {
			document.getElementById('result4').textContent = '카드번호는 숫자만 들어갈 수 있습니다';
			return false;
		}
		if (document.getElementById('checkMsg2').textContent != "사용가능") {
			document.getElementById('result4').textContent = '카드조회를 해주세요';
			return false;
		}
		if (card1.value.length > 3 || card2.value.length > 3
				|| card3.value.length > 3 || card4.value.length > 3) {
			document.getElementById('result4').textContent = '';
			document.getElementById("R_cardnum").value = R_cardnum;
			save();
		}
	}
	function save() {
		joinForm.submit();
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
	href="${pageContext.request.contextPath}/resources/css/joinform.css?version=1.2" />
</head>
<style>
</style>
<body>
	<div class="joinBox" valign="middle">
		<h1>회원가입</h1>
		<form action="${pageContext.request.contextPath}/joinAction" name="joinForm" method="POST" enctype="multipart/form-data">
			<input type="text" name="R_id" id="R_id"  placeholder="ID" required />
			<a href="#" id="checkbtn" class="button" >중복확인</a>			
			&nbsp
			<span id="checkMsg"></span><br>	 
			<span id="result0" style="font-size:10pt;color:#e22424;">${requestScope.result }</span>
			<input type="password" name="R_password" id="R_password" placeholder="Password" required />
			<input type="password" name="passcheck" id="passcheck" placeholder="PasswordCheck" required />
			<span id="result" style="font-size:10pt;color:#e22424;">${requestScope.result }</span>
			<span id="result1" style="font-size:10pt;color:#13af32;">${requestScope.result }</span><br><br>
			<input type="text" name="R_name" id="R_name" placeholder="Name" required />
			<input type="text" name="R_address" id="R_address" placeholder="Address" required />
			<span id="result2" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br><br>

			<label> Phone </label>
			<br>
			<select id="phone1"><option>선택</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
			</select> 
         -&nbsp  
         <input type="text" id="phone2" maxlength="4" style="width: 93px;"> 
         -&nbsp 
         <input type="text" id="phone3" maxlength="4" style="width: 93px;"><br>
			<input type="hidden" id="R_phone" name="R_phone">
			<span id="result3" style="font-size:10pt;color:#e22424;">${requestScope.result }</span><br>
			<label> Card </label>
			<br>
			<div class="R_card" id="R_card">
				<input type="radio" value="A" id="A" name="R_card" checked /> 
				<label for="A" class="radio">A</label> 
				<input type="radio" value="B" id="B" name="R_card" /> 
				<label for="B" class="radio">B</label> 
				<input type="radio" value="C" id="C" name="R_card" /> 
				<label for="C" class="radio">C</label>
			</div>
		<input type="text" id="card1" name="card1" maxlength="4" style="width: 56px;"> 
        -&nbsp 
        <input type="text" id="card2" name="card2" maxlength="4" style="width: 56px;">
        -&nbsp 
        <input type="text" id="card3" name="card3" maxlength="4" style="width: 56px;">
        -&nbsp 
        <input type="text" id="card4" name="card4" maxlength="4" style="width: 56px;"><br>
        <input type="hidden" id="R_cardnum" name="R_cardnum">
        <a href="#" id="checkbtn2" class="button" >카드조회</a>			
		
		<span id="checkMsg2"></span><br>	
		<span id="result4" style="font-size:12pt;color:#e22424;">${requestScope.result }</span>	
        
			<p>
				회원가입 클릭 시,  <br>
				<a href="${pageContext.request.contextPath}/service">서비스 약관</a>
				에 동의하는 것으로 처리됩니다.
			</p><br>
			<a href="javascript:Check()" class="button" >회원가입</a>
			
		</form>
	</div>
</body>
</html>