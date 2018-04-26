<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>MVC 게시판</title>
<style>

#iteminsertDiv {
   width: 1200px;
   margin: 0 auto;
   padding-top: 10px;
}
@media screen and ( max-width : 768px ) {
   #iteminsertDiv {
      width: auto;
   }
  
}
#iteminsertDiv2 {
   width: 1200px;
   margin: 0 auto;
   padding-top: 10px;
}
@media screen and ( max-width : 768px ) {
   #iteminsertDiv2 {
      width: auto;
   }
  
}
#iteminsertDiv3 {
   width: 1200px;
   margin: 0 auto;
   padding-top: 10px;
}
@media screen and ( max-width : 768px ) {
   #iteminsertDiv3 {
      width: auto;
   }
  
}
#iteminsertDiv4 {
   width: 1200px;
   margin: 0 auto;
   padding-top: 10px;
}
@media screen and ( max-width : 768px ) {
   #iteminsertDiv4 {
      width: auto;
   }
  
}
#iteminsertDiv5 {
   width: 1200px;
   margin: 0 auto;
   padding-top: 10px;
}
@media screen and ( max-width : 768px ) {
   #iteminsertDiv5 {
      width: auto;
   }
  
}
</style>
<script language="javascript">
	function addboard() {
		boardform.submit();
	}
	function display1(box) {
		indivisual1.style.display = 'block';
		company1.style.display = 'none';
	}

	function display2(box) {
		indivisual1.style.display = 'none';
		company1.style.display = 'block';
	}

	window.onload = display1
</script>
<script>
	function itemChange() {

		var clothing = [ "남성패션", "여성패션", "베이비패션", "가방", "신발", "악세서리", "잡화",
				"기타" ];
		var furniture = [ "침실가구", "주방가구", "거실가구", "옷장/수납장", "의자/책상/책장", "인테리어",
				"사무용가구", "기타" ];
		var living = [ "주방용품", "생활용품", "반려동물용품", "청소용품", "문구", "기타" ];
		var digital = [ "계절가전", "pc", "pc주변기기", "게임", "휴대폰", "음향기기", "TV",
				"카메라", "차량용디지털기기", "주방용가전", "사무기기", "기타" ];
		var sports = [ "스포츠의류", "캠핑", "골프", "자전거", "헬스", "요가", "낚시", "구기",
				"검도", "수용", "스키", "기타스포츠" ];
		var book = [ "도서", "음반", "dvd", "기타" ];

		var selectItem = $("#RP_catemain").val();

		var changeItem;

		if (selectItem == "clothing") {
			changeItem = clothing;
		} else if (selectItem == "furniture") {
			changeItem = furniture;
		} else if (selectItem == "living") {
			changeItem = living;
		} else if (selectItem == "digital") {
			changeItem = digital;
		} else if (selectItem == "sports") {
			changeItem = sports;
		} else if (selectItem == "book") {
			changeItem = book;
		}

		$('#RP_catesub').empty();

		for (var count = 0; count < changeItem.length; count++) {
			var option = $("<option>" + changeItem[count] + "</option>");
			$('#RP_catesub').append(option);
		}

	}
	function save() {
		var RP_itemname = document.getElementById("RP_itemname");

		if (RP_itemname.value == '' || RP_itemname.value == null) {
			document.getElementById('result').textContent = '아이디를 입력해주세요';
			focus.RP_itemname;
			return false;
		}

		insertForm.submit();
		alert("등록이 완료되었습니다.");
	}
</script>
<script type="text/javascript">
	$(function() {
		$("#imgInp,#imgInp2,#imgInp3").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>
<body>
	<div  id="iteminsertDiv" style="margin: 0 auto; width:93%;" align="left"  >

	<form action="${pageContext.request.contextPath}/itemInsertAction" name="insertForm" enctype="multipart/form-data" method="POST">
			<div align="center" valign="middle" style="border-bottom: 1px solid #d7d7d7;"><h3>상품 등록 페이지</h3></div>
		<div id="iteminsertDiv2">

			<div  style="border-bottom: 1px solid #d7d7d7; width:50%; height:400px; float: left; " >
			<div ><img id="blah" src="#" alt="이미지를 등록하세요"
					width="87%" height="100%" /></div></div>
	
			
				<div style="float: left;   ">
					<div style="border-bottom: 1px solid #d7d7d7; border-left:1px solid #d7d7d7; height:90px; ">

								<h4  align="center">상품명</h4>

						
						<div  align="center"><input  id="RP_itemname" name="RP_itemname" type="text"
								style="width:70%; height: 25px;"  maxlength="100" required /> </div>	
					
					</div>
					
						
						
								
							<div style="border-bottom: 1px solid #d7d7d7; border-left:1px solid #d7d7d7;height:90px; ">

									<h4  align="center">카테고리</h4>

						
					<div  align="center">		<select id="RP_catemain" name="RP_catemain"
								onchange="itemChange()" style="width: 190px; height: 25px;"
								required>
									<option>대분류</option>
									<option value="clothing">의류&잡화</option>
									<option value="furniture">가구</option>
									<option value="living">생활</option>
									<option value="digital">디지털&가전</option>
									<option value="sports">스포츠&레저</option>
									<option value="book">도서&음반</option>
									<fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd" />
							</select>&nbsp; <select id="RP_catesub" name="RP_catesub"
								style="width: 190px; height: 25px;">
									<option>소분류</option>
							</select>
							</div>
					
					</div>
					
								<div style="border-bottom: 1px solid #d7d7d7; border-left:1px solid #d7d7d7;height:90px; ">
	
									<h4  align="center">대여 가능기간</h4>

						
						<div  align="center">	<input type="date" name="RP_startdate" required
								style="width: 175px; height: 20px;" /> &nbsp;~&nbsp; <input
								name="RP_enddate" type="date"
								style="width: 175px; height: 20px;" required /></div>
					</div>
						
										<div style="border-bottom: 1px solid #d7d7d7; border-left:1px solid #d7d7d7;height:90px; ">

									<h4  align="center">일일 대여료</h4>

						
						<div  align="center">	<input name="RP_price" type="number" maxlength="10"
								required />
								<button type="button" class="btn btn-info btn-lg" style="background: #2f3b3f;opacity:0.85;width:40%;height:10% "
									data-toggle="modal" data-target="#myModal">안심보장 서비스</button></div>
					</div>
					</div>

			</div>
			
			<div style="margin-top: 400px">
							<label><input id="imgInp" name="RP_img1" type="file"
					style="border-radius: 5px; width: 75px; height: 30px; padding: 3px; margin: 1px; border: 1px solid #999; 
					background: url() repeat-x 0px 0px; font-size: 12px; font-weight: bold; color: #000; vertical-align: bottom; 
					cursor: pointer;" /></label>
				<label><input id="imgInp2" name="RP_img2" type="file"
					style="border-radius: 5px; width: 75px; height: 30px; padding: 3px; margin: 1px; border: 1px solid #999; 
					background: url() repeat-x 0px 0px; font-size: 12px; font-weight: bold; color: #000; vertical-align: bottom; 
					cursor: pointer;" /></label>	
				<label><input id="imgInp3" name="RP_img3" type="file"
					style="border-radius: 5px; width: 75px; height: 30px; padding: 3px; margin: 1px; border: 1px solid #999; 
					background: url() repeat-x 0px 0px; font-size: 12px; font-weight: bold; color: #000; vertical-align: bottom; 
					cursor: pointer;" /></label>	
			</div>
			
			<div align="center" ><h4>상품 상세 정보</h4> </div>
			
	
		
		
				<div id="#iteminsertDiv5"><textarea name="RP_detail" style="width: 100%;" rows="15" ></textarea></div>
					
	




				
        <div>  <a href="javascript:save()"
					style="border-radius: 5px; width: 80px; height: 30px; padding: 3px; margin: 1px; border: 1px solid #999; 
					background: url() repeat-x 0px 0px; font-size: 12px; font-weight: bold; color: #000; vertical-align: bottom; 
					cursor: pointer;">등록</a>&nbsp;&nbsp;
					<a href="javascript:history.go(-1)"
					style="border-radius: 5px; width: 80px; height: 30px; padding: 3px; margin: 1px; border: 1px solid #999; 
					background: url() repeat-x 0px 0px; font-size: 12px; font-weight: bold; color: #000; vertical-align: bottom; 
					cursor: pointer;">뒤로</a>
			
		

			<span id="result" style="font-size: 10pt; color: #e22424;">${requestScope.result}</span>
		
		</div>
		<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
		
		
		

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 class="modal-title" align="center">&nbsp안심보장 서비스&nbsp</h3><br>
				<div style="margin-left: 10px;">
					<span style="color: red; font-size: 17px">안심보장 서비스란?</span><br><br> 
					<span style="font-size: 13px">
					→ 수익의 일부를 수수료로 내고 미 반납사고 시에 제품 금액의 일정 부분을 보상해주는 제도 <br>
					</span>
				</div>
					
			</div>			
			
			<div class="modal-body">
				<div align="center" valign="middle" >
					<div class="RP_guarantee" >
						<label style="font-weight: bold;">사용</label> 
						<input type="radio" onClick="display1()" name="RP_guarantee" checked="checked" /> 
						<label style="font-weight: bold;">&nbsp 미사용</label> 
						<input name="RP_guarantee" value="0" type="radio" onclick="display2()" />
					</div>		
				</div>
		
				<div id="indivisual1">
					
					<div class="RP_guarantee" style="margin-left: 10px;">
						<label style="font-weight: bold;">●&nbsp<span style="color: #FFD700;">7.2%</span> : 최대  60% 보상</label> 
						<input name="RP_guarantee" value="60" type="radio"/><br>
						<label style="font-weight: bold;">●&nbsp<span style="color: #c0c0c0;">5.9%</span> : 최대  45% 보상</label> 
						<input name="RP_guarantee" type="radio" value="45" /><br>
						<label style="font-weight: bold;">●&nbsp<span style="color: #a0522d;">4.6%</span> : 최대  30% 보상</label> 
						<input name="RP_guarantee" type="radio" value="30" />				
					</div>
						
					
					<div id="company1" style="display: none">
						<span>'사용안함' 을 선택하셨습니다.</span>
					</div>
				</div>			
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" style="color: black;">확인</button>
			</div>

		</div>
	</div>
	</form>
	</div>

</body>

</html>
