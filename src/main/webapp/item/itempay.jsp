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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/itempay.css?version=1.12" />
<script type="text/javascript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<div id="shop_wrap">
		<div class="line_1px"></div>
		<form action="CompPay" method="POST">
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
									src="${pageContext.request.contextPath}/upload_products/${prodBean.RP_img1}"
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
								<input type="hidden" id="allPrice" name="allPrice"
									value="${allPrice}">
								<td class="td_50_right">${allPrice}</td>
							</tr>
						</tbody>
					</table>
					<div class="guide_area"></div>
				</div>
			</div>
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
			</div>
		</form>
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
	<script>
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
</body>
</html>
