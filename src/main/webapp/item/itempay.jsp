<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko-KR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Rent</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css?version=1.12" />

<script type="text/javascript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script language=javascript
	src="http://plugin.inicis.com/pay61_secuni_cross.js"></script>

<!-- 이니시스 표준결제 js -->
<script language="javascript" type="text/javascript"
	src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>


<link type="text/css" rel="stylesheet" href="../js/jquery-ui.css" />
<link rel="stylesheet" href="../css/common.css">
<link href='../data/design/favicon/2cda991e3a85ae7f773b66c485130660.ico'
	type='image/x-icon' rel='shortcut icon' />
</head>



<!-- <body onload="javascript:enable_click()" onFocus="javascript:focus_control()" > -->
<body onload="INIStdPay.allowpopup();">
	<div id="div_popup_box" style="display: none;">
		<div id="div_popup_close">X</div>
		<div id="div_popup">
			<iframe name="div_popup_ifm" id="div_popup_ifm" src=""
				frameborder="0" scrolling="no" style="width: 100%; height: 100%;"></iframe>
		</div>
	</div>

	<div id="shop_wrap">
		<!-- shop_wrap start -->


		<!-- 스티일시트(디지인) 시작 (여기서 수정하시면 됩니다.) -->
		<style>
#top_bg_area {
	width: 100%;
}

#header_wrapper {
	width: 1200px;
	margin: 0 auto;
	height: 30px;
}

#header_left {
	width: 200px;
	width: 180px;
	float: left;
	padding-top: 7px;
}

#header_left li {
	padding: 0 5px 0 5px;
}

#header_gnb {
	padding-top: 7px;
	overflow: hidden;
	text-align: right;
}

#header_gnb ul li {
	padding: 0 5px 0 5px;
	text-align: right;
}

#header_gnb ul li:last-child {
	padding-right: 0px;
}

#header_log_search {
	width: 1200px;
	margin: 0 auto;;
	height: 80px;
}

#header_log {
	width: 200px;
	float: left;
	padding: 7px 0 7px;
}

#header_best {
	width: 200px;
	float: right;
	padding: 27px 0 7px;
	text-align: right;
}

#header_best ul li {
	display: inline-block;
	padding: 0 5px 0 5px;
	text-align: right;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.25em;
}

#header_best ul li:last-child {
	padding-right: 0px;
}

#header_search {
	overflow: hidden;
	padding: 17px 0 7px;
	text-align: center;
}
</style>
		<!-- 스티일시트(디지인) 끝 -->


		<!-- 배경색, 글자색 시작 끝 -->
		<style>
#top_bg_area {
	background-color: #FF0A26
}
</style>
		<style>
#top_bg_area li a {
	color: #FFFFFF
}
</style>
		<!-- 배경색, 글자색 끝 -->

		<!-- 스티일시트(디지인) 시작 (여기서 수정하시면 됩니다.) -->
		<style>
#header_category {
	display: block;
	width: 100%;
	height: 50px;
	background-color: #242424
}

#goods_category {
	width: 100%;
	height: 100%;
	float: left;
	text-align: center;
}

#goods_category li {
	display: inline-block;
	padding: 17px 10px 0 10px;
	text-align: right;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.25em;
	color: #ffffff
}

#goods_category a {
	color: #ffffff;
	text-decoration: none;
}

/* 메뉴 네비 */
.sub_menu {
	width: 1200px;
	margin: 0 auto;;
	float: center;
	background: #f9f9f9;
	position: relative;
	z-index: 2000;
	border-bottom: 1px solid #d7d7d7;
	border-top: 1px solid #d7d7d7;
	height: 0px;
	text-align: center;
}

.all_cate_ul {
	float: left;
	width: 120px;
	min-height: 80px;
	text-align: left;
}

.all_cate1 {
	width: 100%;
	padding: 5px 0 5px;
	color: #808080;
	font-weight: bold;
}

.all_cate2 {
	width: 100%;
	padding: 2px 0 2px 10px;
	color: #808080;
}

.all_cate3 {
	width: 100%;
	padding: 2px 0 2px 20px;
	color: #c0c0c0;
}
</style>
		<!-- 스티일시트(디지인) 끝 -->
		<div class="line_1px"></div>
		<!-- 전체 상품분류 자바스크립트 시작 -->
		<script type="text/javascript">
			function category_all_show() {
				if ($(".sub_menu").css("height") == '0px') {
					$(".sub_menu").show("slide", {
						direction : "down"
					}, 500);
					;
					$(".sub_menu").animate({
						"height" : "390px"
					}, "slow");
				} else {
					$(".sub_menu").animate({
						"height" : "0px"
					}, "slow");
					$(".sub_menu").hide("slide", {
						direction : "up"
					}, 1000);
					;
				}

			}
		</script>
		<!-- 전체 상품분류 자바스크립트 끝 -->
		<!-- 스티일시트(디지인) 시작 (여기서 수정하시면 됩니다.) -->
		<style>
#order_list {
	width: 1200px;
	margin: 0 auto;;
	padding-top: 10px;
}

#order_form {
	width: 1200px;
	margin: 0 auto;;
	padding-top: 10px;
}

.form_div {
	width: 100%;
	padding-top: 10px;
}

.order_title {
	padding: 20px 0 20px 5px;
	width: 99.4%;
	text-align: left;
	border: 1px solid #cbcdce;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.2em;
	color: #3e3e3e;
}

.form_title {
	padding: 20px 0 10px 5px;
	width: 100%;
	text-align: left;
	border: 0px;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.2em;
	color: #3e3e3e;
}

.goods_name {
	float: left;
	text-align: left;
	line-height: 160%;
	padding: 5px;
	width: 100%;
	color: #525252;
}

.goods_option {
	float: left;
	width: 100%;
	text-align: left;
	line-height: 160%;
	padding: 5px 5px 5px 15px;
	color: #a0a0a0;
}

.order_list-tb th {
	border-top: 1px solid #dddddd;
	border-bottom: 1px solid #dddddd;
	text-align: center;
}

.order_list-tb th {
	display: table-cell;
	height: 40px;
	letter-spacing: -1px;
	vertical-align: middle;
	border-bottom: 2px solid #dddddd;
	padding: 2px 2px 2px 2px;
}

.order_list-tb td {
	border-bottom: 1px solid #dddddd;
	padding: 5px 5px 5px 5px;
}

.order_list-tb td {
	height: 30px;
	letter-spacing: -1px;
	vertical-align: middle;
}

.order_list-tb {
	width: 100%;
}

.order_list-tb caption {
	font-weight: bold;
	text-align: left;
}

.order_form_left {
	float: left;
	width: 20%;
	padding: 5px 0 5px;
	text-align: left;
}

.order_form_right {
	float: right;
	padding: 5px 0 5px;
	overflow: hidden;
	text-align: right;
}

.list_bottom_left {
	float: left;
	width: 20%;
	padding: 5px 0 5px;
	text-align: left;
}

.list_bottom_right {
	float: right;
	padding: 5px 0 5px;
	overflow: hidden;
	text-align: right;
}

.order_tot_delivery {
	padding-top: 10px;
	width: 100%;
	height: 35px;
	text-align: right;
	font-weight: bold;
	border: 1px solid #cbcdce;
}

.goods_order_total {
	width: 100px;
	color: #0080ff;
	font-size: 1.0em;
	font-weight: bold;
}

.goods_order_delivery {
	width: 100px;
	color: #535353;
	font-size: 1.0em;
	font-weight: bold;
}

.order_total {
	width: 100px;
	color: #ff8000;
	font-size: 1.55em;
	font-weight: bold;
}

.coupon_price {
	width: 50px;
	height: 23px;
	border: 0px;
	text-align: center;
	color: #0080ff;
	font-weight: bold;
	font-size: 1.1em;
	background-color: transparent;
}

.payment_sub {
	width: 100%;
	padding-top: 5px;
}

.guide_area {
	display: inline-block;
	width: 100%;
	padding: 10px 0px 30px;
	text-align: center;
}

.btn_area {
	display: inline-block;
	width: 100%;
	padding: 10px 0px 30px;
	text-align: center;
}

.order_btn_buy {
	border-radius: 2px;
	width: 165px;
	height: 35px;
	border: 1px solid #ff3945;
	background: #ff444f;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.2em;
	color: #ffffff;
	cursor: pointer;
}

.order_btn_shopping {
	border-radius: 2px;
	width: 164px;
	height: 35px;
	border: 1px solid #333333;
	background: #343230;
	font-family: 'Jeju Gothic', 'dotum', serif;
	font-size: 1.2em;
	color: #ffffff;
	cursor: pointer;
}

.button_60x25 {
	display: inline-block;
	border-radius: 2px;
	width: 80px;
	padding: 0px;
	border: 1px solid #b3b3b3;
	cursor: pointer;
	text-align: center;
}
</style>
		<!-- 스티일시트(디지인) 끝 -->


		<form action="CompPay" method="POST">

			<!-- 주문 상품 정보 시작 -->
			<div id="order_list">

				<div class="order_title">| SHOPPING ORDER</div>

				<div id="goods_order_list">
					<table class="order_list-tb">
						<caption>목록</caption>
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">상품정보</th>
								<th scope="col"></th>
								<th scope="col"></th>
								<th scope="col">기간</th>
								<th scope="col"></th>
								<th scope="col">합계</th>
							</tr>
						</thead>
						<tbody>

							<tr class="bg0">
								<td class="td_100"><input type="hidden" name="nos[]"
									value="28"> <input type="hidden" name="cartnos[]"
									value="362147159296"> <img
									src='../resources/images/Desert.jpg'
									style="width: 100%; max-width: 760px; vertical-align: middle">
								</td>
								<td class="td_large50">
									<div class="goods_name">${prodBean.RP_itemname}</div>
								</td>
								<td class="td_50_right"></td>

								<td class="td_50_right"></td>
								<input type="hidden" id="stdate" name="stdate" value="${stdate}">
								<input type="hidden" id="eddate" name="eddate" value="${eddate}">
								<td class="td_80_right">${stdate}~${eddate}</td>
								<td class="td_50_right"></td>
								<input type="hidden" id="allPrice" name="allPrice" value="${allPrice}">
								<td class="td_50_right">${allPrice}</td>
							</tr>

						</tbody>
					</table>


					<div class="guide_area"></div>
				</div>
			</div>
			<!-- 주문 상품 정보 끝 -->


			<!-- 주문서  시작 -->
			<div id="order_form">

				<div class="form_div">
					<div class="form_title">주문자 정보 (ORDER)</div>
					<div>
						<span style="color: #FF3366;"> * </span>표시가 있는 부분은 필수 입력 사항입니다.
					</div>

					<table class="person-tb">
						<caption></caption>
						<tbody>
							<tr>
								<th scope="row"><label for="order_name">주문하시는 분</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" id="order_name" name="order_name"
									required class="input_box" value="${usersInfo.getR_name()}">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="order_tel1">연락처</label></th>
								<td><input type="text" name="order_tel1" id="order_tel1"
									value="" class="input_box50" maxlength="4">- <input
									type="text" name="order_tel2" id="order_tel2" value=""
									class="input_box50" maxlength="4">- <input type="text"
									name="order_tel3" id="order_tel3" value="" class="input_box50"
									maxlength="4"></td>
							</tr>
							<tr>
								<th scope="row"><label for="order_hp1">핸드폰</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" name="order_hp1" id="order_hp1"
									value="${phone1}" required class="input_box50" maxlength="4">-
									<input type="text" name="order_hp2" id="order_hp2"
									value="${phone2}" required class="input_box50" maxlength="4">-
									<input type="text" name="order_hp3" id="order_hp3"
									value="${phone3}" required class="input_box50" maxlength="4">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="order_addr1">주소</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" name="order_addr1" id="order_addr1"
									value="${usersInfo.getR_address()}" required class="input_box"
									size="60"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="form_div">
					<div class="order_form_left"></div>
					<div class="order_form_right">
						<input type="checkbox" name="order_same" id="order_same"
							onclick="order_info_same();">주문자 정보와 동일
					</div>
					<div class="form_title">배송지 정보 (DELIVERY)</div>

					<table class="person-tb">
						<caption></caption>
						<tbody>
							<tr>
								<th scope="row"><label for="delivery_name">받으시는 분</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" id="delivery_name"
									name="delivery_name" required class="input_box" value="">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="delivery_tel1">일반전화</label></th>
								<td><input type="text" name="delivery_tel1"
									id="delivery_tel1" value="" class="input_box50" maxlength="4">-
									<input type="text" name="delivery_tel2" id="delivery_tel2"
									value="" class="input_box50" maxlength="4">- <input
									type="text" name="delivery_tel3" id="delivery_tel3" value=""
									class="input_box50" maxlength="4"></td>
							</tr>
							<tr>
								<th scope="row"><label for="delivery_hp1">핸드폰</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" name="delivery_hp1"
									id="delivery_hp1" value="" required class="input_box50"
									maxlength="4">- <input type="text" name="delivery_hp2"
									id="delivery_hp2" value="" required class="input_box50"
									maxlength="4">- <input type="text" name="delivery_hp3"
									id="delivery_hp3" value="" required class="input_box50"
									maxlength="4"></td>
							</tr>
							<tr>
								<th scope="row"><label for="delivery_addr1">주소</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" name="delivery_zip1"
									id="delivery_zip1" value="" required class="input_box" size="9"
									maxlength="5" readonly>
									<button type="button" class="button_small"
										onclick="execDaumPostcode();" readonly>주소 검색</button> <br>
									<input type="text" name="delivery_addr1" id="delivery_addr1"
									value="" required class="input_box" size="60"></td>
							</tr>
							<tr>
								<th scope="row"><label for="order_contents">요구 사항</label></th>
								<td><TEXTAREA name="order_contents" id="order_contents"
										class="smarteditor2" style="width: 99%; height: 100px;"></TEXTAREA>
								</td>
							</tr>

							<tr>
								<th scope="row"><label for="raview_img">&nbsp; 연체시<br>
										약관 동의
								</label></th>
								<td>
									<div class="qna_subject">
										<TEXTAREA name="" id="" readonly="readonly"
											class="smarteditor2" style="width: 99%; height: 100px;">
■ 하루 연체 시 결제되는 금액:${prodBean.RP_price}원
 
■ 반납일 이후 자동 1일 이상 연체 시 연체금액: ${prodBean.RP_price}원이 카드에서 매일 빠져 나갑니다.

</TEXTAREA>
										<p></p>
										동의 동의하십니까? <span class="radiobox_span"><input
											type="radio" name="privacy_agreement" id="privacy_agreement"
											value="1"> 동의함</span> <span class="radiobox_span"><input
											type="radio" name="privacy_agreement" id="privacy_agreement"
											value="2"> 동의안함</span>
									</div>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
				<div class="form_div">
					<table class="person-tb">
						<caption></caption>
						<tbody>
							<tr>
								<th scope="row"><label for="payment_type">카드결제</label></th>
								<td>${card1}-${card2}-${card3}-${card4}</td>
							</tr>
							<tr>
								<th scope="row"><label for="payment_money">결제금액</label></th>
								<td><input type="text" name="payment_money"
									id="payment_money" class="input_order_payment"
									value="${allPrice}" readonly>원</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_area">
						<input type="submit" id="btn_submit1" class="order_btn_buy"
							value="대여하기">
					</div>
				</div>
		</form>
		<iframe name="ifm_proc" id="ifm_proc" src="" frameborder="0"
			scrolling="no" style="display: none;"></iframe>
	</div>
	<!-- 주문서 끝 -->
	<script>
		function execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = ''; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수

							// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								fullAddr = data.roadAddress;

							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								fullAddr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
							if (data.userSelectedType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('delivery_zip1').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('delivery_addr1').value = fullAddr;

							// 커서를 상세주소 필드로 이동한다.
							document.getElementById('delivery_addr2').focus();
						}
					}).open();
		}
	</script>

	<script type="text/javascript">
	<!--
		function coupon_show(idx, no, cartnos) {
			//var form		= document.getElementById("fregisterform");
			nWidth = 1024;
			nHeight = 400;
			nLeft = (window.screen.width - nWidth) / 2;
			nTop = (window.screen.height - nHeight) / 2;
			url = "./coupon_use.php?no=" + no + "&cartnos=" + cartnos + "&idx="
					+ idx;
			var upwin = window.open(url, "coupon", "width=" + nWidth
					+ ", height=" + nHeight + ", top=" + nTop + ", left="
					+ nLeft + ", scrollbars=yes");
			upwin.focus();
			return;
		}
	//-->
	</script>


	<script type="text/javascript">
		var openwin;

		// PC 접속일때
		function pay(frm, checked) {
			if (checked == "2")
				var gopaymethod = "Card"; //   신용카드
			if (checked == "3")
				var gopaymethod = "DirectBank"; //   실시간계좌이체
			if (checked == "4")
				var gopaymethod = "HPP"; //   휴대폰결제
			if (checked == "5")
				var gopaymethod = "VBank"; //   가상계좌

			document.getElementById("gopaymethod").value = gopaymethod;
			document.getElementById("buyername").value = document
					.getElementById("order_name").value;
			document.getElementById("goodname").value = document
					.getElementById("goods_name").value;
			document.getElementById("buyeremail").value = document
					.getElementById("order_email").value;
			document.getElementById("buyertel").value = document
					.getElementById("order_hp1").value
					+ "-"
					+ document.getElementById("order_hp2").value
					+ "-"
					+ document.getElementById("order_hp3").value;
			document.getElementById("price").value = removeComma(document
					.getElementById("payment_money").value);

			if (frm.goodname.value == "") // 필수항목 체크 (상품명, 상품가격, 구매자명, 구매자 이메일주소, 구매자 전화번호)
			{
				alert("상품명이 빠졌습니다. 필수항목입니다.");
				return;
			} else if (frm.buyername.value == "") {
				alert("구매자명이 빠졌습니다. 필수항목입니다.");
				return;
			} else if (frm.buyeremail.value == "") {
				alert("구매자 이메일주소가 빠졌습니다. 필수항목입니다.");
				return;
			} else if (frm.buyertel.value == "") {
				alert("구매자 전화번호가 빠졌습니다. 필수항목입니다.");
				return;
			} else {
				document.getElementById("signature").value = order_stdpay_sign_reset();
				INIStdPay.pay('order_list_frm');

				// 주문정보 임시저장			
				var form = document.getElementById("order_list_frm");
				form.action = './goods_order_info_tmp_proc.php';
				form.target = "ifm_proc";
				form.method = 'post';
				form.submit();
				return;
			}
			return;
		}
	</script>

	<script>
		$(".input_order_point").keypress(function(e) {
			if (String.fromCharCode(e.keyCode).match(/[^0-9]/g))
				return false;
		});

		$(".input_order_point").focus(function(e) {
			$(".input_order_point").select();
		});

		function payment_show(state) {
			var obj = document.getElementById("payment_sub");
			var obj2 = document.getElementById("bank_info");
			if (state == 1) {
				obj.style.display = "block";
			} else {
				obj2.value = "";
				obj.style.display = "none";
			}
		}

		function delivery_address() {
			nWidth = 900;
			nHeight = 500;
			nLeft = (window.screen.width - nWidth) / 2;
			nTop = (window.screen.height - nHeight) / 2;
			url = "./goods_order_address.php";
			var upwin = window.open(url, "delivery_address", "width=" + nWidth
					+ ", height=" + nHeight + ", top=" + nTop + ", left="
					+ nLeft + ", scrollbars=yes");
			upwin.focus();
			return;
		}

		function order_info_same() {
			if (document.getElementById("order_same").checked == true) {
				document.getElementById("delivery_name").value = document
						.getElementById("order_name").value;
				document.getElementById("delivery_tel1").value = document
						.getElementById("order_tel1").value;
				document.getElementById("delivery_tel2").value = document
						.getElementById("order_tel2").value;
				document.getElementById("delivery_tel3").value = document
						.getElementById("order_tel3").value;
				document.getElementById("delivery_hp1").value = document
						.getElementById("order_hp1").value;
				document.getElementById("delivery_hp2").value = document
						.getElementById("order_hp2").value;
				document.getElementById("delivery_addr1").value = document
						.getElementById("order_addr1").value;
				document.getElementById("delivery_hp3").value = document
						.getElementById("order_hp3").value;
			} else {
				document.getElementById("delivery_name").value = "";
				document.getElementById("delivery_tel1").value = "";
				document.getElementById("delivery_tel2").value = "";
				document.getElementById("delivery_tel3").value = "";
				document.getElementById("delivery_hp1").value = "";
				document.getElementById("delivery_hp2").value = "";
				document.getElementById("delivery_hp3").value = "";
				document.getElementById("delivery_addr1").value = "";
			}
		}

		function payment_proc() {
			var obj_point = document.getElementById("point_use");
			var obj_coupon = document.getElementById("coupon_money");
			var obj_total = document.getElementById("order_total");
			var obj_rwite = document.getElementById("payment_money");
			var obj_mem_point = document.getElementById("member_use_point");

			var val_point = parseInt(removeComma(obj_point.value));
			var val_coupon = parseInt(removeComma(obj_coupon.value));
			var val_total = parseInt(removeComma(obj_total.value));
			var val_mem_point = parseInt(removeComma(obj_mem_point.value));
			if (!val_coupon)
				val_coupon = 0;

			if (!val_point) {
				obj_point.value = 0;
				obj_point.select();
				obj_rwite.value = addComma_new(val_total - val_coupon);
				return;
			}

			if (val_point < 0) {
				alert("1원 이상으로 적어주세요.");
				obj_point.value = 0;
				obj_point.select();
				obj_rwite.value = addComma_new(val_total - val_coupon);
				return;
			}

			if (val_point > val_mem_point) {
				alert(val_mem_point + "원 이하로 적어주세요.[적립금 사용범위]");
				obj_point.value = 0;
				obj_point.select();
				obj_rwite.value = addComma_new(val_total - val_coupon);
				return;
			}

			if (val_point > val_total) {
				alert(val_total + "원 이하로 적어주세요.[상품구매금액]");
				obj_point.value = 0;
				obj_point.select();
				obj_rwite.value = addComma_new(val_total - val_coupon);
				return;
			}

			if (!obj_coupon.value)
				val_coupon = 0;
			obj_rwite.value = addComma_new(val_total - (val_point + val_coupon));
		}

		function coupon_price_sum() {
			var obj_coupon = document.getElementById("coupon_money");
			var myForm = document.order_list_frm;
			var coupon_nos = myForm.elements['coupon_no[]'];
			var coupon_prices = myForm.elements['coupon_price[]'];
			var coupon_total = 0;

			if (coupon_nos.length == undefined) {
				obj_coupon.value = coupon_prices.value;
			} else {
				for (var i = 0; i < coupon_nos.length; i++) {
					coupon_value = parseInt(removeComma(coupon_prices[i].value));
					if (!coupon_value)
						coupon_value = 0;
					coupon_total += coupon_value;
				}
				obj_coupon.value = addComma_new(coupon_total);
			}
			payment_proc();
		}

		function checked_check() {
			var checked = []
			$("input[name='payment_type']:checked").each(function() {
				checked.push(parseInt($(this).val()));
			});
			return checked;
		}

		// submit 폼체크
		function submit_buy(f) {

			f = document.order_list_frm;
			if (f.order_name.value.length < 1) {
				alert("주문하시는 분을 입력해 주세요.");
				f.order_name.focus();
				return;
			}

			if (f.order_hp1.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.order_hp1.focus();
				return;
			}

			if (f.order_hp2.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.order_hp2.focus();
				return;
			}

			if (f.order_hp3.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.order_hp3.focus();
				return;
			}

			if (f.order_email.value.length < 1) {
				alert("이메일을 입력해 주세요.");
				f.order_email.focus();
				return;
			}

			if (f.delivery_name.value.length < 1) {
				alert("받으시는 분을 입력해 주세요.");
				f.delivery_name.focus();
				return;
			}

			if (f.delivery_hp1.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.delivery_hp1.focus();
				return;
			}

			if (f.delivery_hp2.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.delivery_hp2.focus();
				return;
			}

			if (f.delivery_hp3.value.length < 1) {
				alert("핸드폰을 입력해 주세요.");
				f.delivery_hp3.focus();
				return;
			}

			if (f.delivery_zip1.value.length < 1) {
				alert("주소을 입력해 주세요.");
				f.delivery_zip1.focus();
				return;
			}

			if (f.delivery_addr1.value.length < 1) {
				alert("주소을 입력해 주세요.");
				f.delivery_addr1.focus();
				return;
			}

			if (f.delivery_addr2.value.length < 1) {
				alert("주소을 입력해 주세요.");
				f.delivery_addr2.focus();
				return;
			}

			checked = checked_check();
			if (checked == "") {
				alert("결제방법을 선택해 주세요.");
				f.payment_type[0].focus();
				return;
			}

			//   신용카드 2,  실시간계좌이체 3,  휴대폰결제 4,  가상계좌 5 선택
			if (checked == "2" || checked == "3" || checked == "4"
					|| checked == "5") {
				pay(f, checked);
				return;

			}

			if (checked == 1) {
				if (f.bank_info.value.length < 1) {
					alert("무통장 입금 은행을 선택해 주세요.");
					f.bank_info.focus();
					return;
				}
			}

			if (f.privacy_agreement[0].checked == false) {
				alert("개인정보 수집 및 이용에 동의 하셔야 합니다.");
				f.privacy_agreement[0].focus();
				return;
			}

			var form = document.getElementById("order_list_frm");
			form.action = './goods_order_proc.php';
			form.target = "ifm_proc";
			form.method = 'post';
			form.submit();

			return;
		}
	</script>


	<!-- 스티일시트(디지인) 시작 (여기서 수정하시면 됩니다.) -->
	<style>
.bottom_link {
	margin: 0 auto;
	text-align: center;
	padding: 20px;
}

.bottom_link li {
	display: inline-block;
	padding: 0 10px 0 10px;
	text-align: right;
	font-size: 1.00em;
}

#bottom_bg {
	width: 100%;
	background-color: #dbdbdb;
}

#bottom {
	width: 1200px;
	margin: 0 auto;;
	padding: 20px 0 20px 0;
}

#bottom_left {
	width: 200px;
	float: left;
	padding: 7px 0 7px;
}

#bottom_right {
	width: 200px;
	float: right;
	padding: 27px 0 7px;
	text-align: right;
}

#bottom_center {
	overflow: hidden;
	padding-top: 10px;
	text-align: right;
	line-height: 160%;
}
</style>
	<!-- 스티일시트(디지인) 끝 -->





	<div class="line_1px"></div>
	<div class="bottom_link">
		<ul>
			<li></li>

		</ul>
	</div>
	<div class="line_1px"></div>
	<div id="bottom_bg">
		<div id="bottom">

			<li></li>
		</div>

	</div>
	</div>
	</div>

	<!-- 스티일시트(디지인) 시작 (여기서 수정하시면 됩니다.) -->
	<style>
#quick_side {
	float: right;
	position: fixed;
	z-index: 9998;
	right: 0px;
	top: 0px;
	width: 140px;
	border: 1px solid #ddd;
	height: 100%;
	background: #fff;
	margin: 0;
	padding: 0;
}

#quick_side li {
	display: block;
	margin: 10px 0;
	text-align: center;
}

#quick_side .btnclick {
	position: absolute;
	left: -21px;
	top: 46%;
	width: 20px;
	height: 29px;
	cursor: hand;
}

#quick_side .quick_contents {
	position: absolute;
	width: 100%;
	height: 500px;
	top: 25%;
	padding-left: 0px;
	font-weight: bold;
}
</style>
	<!-- 스티일시트(디지인) 끝 -->

</body>
</html>
