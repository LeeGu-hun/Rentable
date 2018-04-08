<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko-KR">
<head>
<title>Rent</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/category.css?version=1.22" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/itemgoods2.css?version=1.11" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css?version=1.12" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css?version=1.12" />
</head>
<body>
<div id="rent_head">
		<%@include file="/category/category.jsp"%>
	</div>
	<div id="shop_wrap">
		<script type="text/javascript">
			function big_img_show(img_url) {
				var obj = document.getElementById("goods_big_img");
				obj.src = img_url;
			}
		</script>

		<div class="goods_category" style="width: 1200px; margin: 0 auto;">
			CATEGORY : 패션의류 > 남성의류d</div>

		<!-- 상품상세페이지 시작 -->
		<div id="goods_detail">
			<div class="goods_info_top_box">
				<div class="goods_info_top_left">
					<div class="goods_image">
						<img src='../images/thumb1a5e097242c9d526c0c7c970492d0384.png'
							id='goods_big_img' style='vertical-align: middle;'>
					</div>

					<div class="goods_thumb_img">
						<ul>
							<li><a href=''
								onmouseover="javascript:big_img_show('../images/thumb1a5e097242c9d526c0c7c970492d0384.png');"><img
									src='../images/11.png'></a></li>
							<li><a href=''
								onmouseover="javascript:big_img_show('../images/thumbbf68d385a23d5967d692ea17f0b51097.jpg');"><img
									src='../images/33.jpg'></a></li>
							<li><a href=''
								onmouseover="javascript:big_img_show('../data/goods/thumb/goods_item/thumb4fd760706df04746601b7589d846d358.jpg');"><img
									src='../data/goods/thumb/gallery/thumb4fd760706df04746601b7589d846d358.jpg'></a></li>
						</ul>
					</div>
				</div>
				<div class="goods_info_top_right">
					<div class="goods_name">상품명</div>
					<table class="goods-tb">
						<caption>상품 가격 정보</caption>
						<tbody>
							<tr>
								<th scope="row">일별단위금액</th>
								<td class="goods_sale_price">0 원</td>
							</tr>

						</tbody>
					</table>

					<table class="goods-tb">
						<caption>날짜</caption>
						<tbody>

							<tr>
								<th scope="row">판매자 등록 기간</th>

							</tr>

								<tr>
									<td style="font-family: 돋음; font-size: 12" height="16">
										<div align="center">대여기간</div>
									</td>
									<td><input name="BOARD_NAME" type="date" style="width:175px;height:20px;"
										 /> &nbsp;~&nbsp; <input name="BOARD_NAME"
										type="date" style="width:175px;height:20px;"   /></td>
								</tr>

						</tbody>
					</table>

					<div class="goods_order_tot_area">
						총상품 금액 <span class="goods_order_tot_price" id="order_tot_price">
							0</span>원
					</div>
					<div class="goods_btn_area">
						<input type="button" value=" 대여하기 " id="btn_submit"
							class="order_btn_buy" onclick="submit_reg('buy');"> <input
							type="button" value=" 관심상품 " id="btn_submit"
							class="order_btn_cart" onclick="submit_reg('cart');">
					</div>
					<iframe name="ifm_proc" id="ifm_proc" src="" frameborder="0"
						scrolling="no" style="display: none;"></iframe>
					</form>
					<script type="text/javascript">
						
					</script>
				</div>
			</div>

			<div class="goods_contents" id="goods_detail_box">
				<ul class="link">
					<li id="tab_detail_01" class="selected"><a href="#goods_detail">상품상세정보</a></li>
					<li id="tab_detail_02"><a href="#goods_delivery">배송/교환/반품정보</a></li>
					<li id="tab_detail_03"><a href="#goods_review">상품구매후기</a></li>
					<li id="tab_detail_04"><a href="#goods_qan">상품문의</a></li>
				</ul>
				<div class=''>
					<div style="width: 100%;">
						<center>
							<img src='../images/thumb1a5e097242c9d526c0c7c970492d0384.png'
								width='640' style='text-align: middle;'>
						</center>
					</div>
					<p>d</p>
					<span class="text_bold">상품 요약정보(고시)</span>
					<p>b</p>
				</div>
			</div>


			<div class="goods_contents" id="goods_delivery">
				<ul class="link">
					<li id="tab_delivery_01"><a href="#goods_detail">상품상세정보</a></li>
					<li id="tab_delivery_02" class="selected"><a
						href="#goods_delivery">배송/교환/반품정보</a></li>
					<li id="tab_delivery_03"><a href="#goods_review">상품구매후기</a></li>
					<li id="tab_delivery_04"><a href="#goods_qan">상품문의</a></li>
				</ul>
				<div class=''>
					<p>
						<a href="http://www.sitedomain.net/images/pg/log.gif"><span
							style="color: rgb(90, 90, 90); line-height: normal; font-family: dotum, serif; background-color: rgb(255, 255, 255);"></span></a>
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>
						<b><span style="font-size: 18pt;">상품 배송안내</span></b>
					</p>
					<table
						style="width: 100%; border: 1px solid #cccccc; border-left: 0; border-bottom: 0;"
						class="__se_tbl" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); width: 120px; height: 112px; background-color: rgb(255, 255, 255);"
									class=""><p>
										&nbsp;<span style="line-height: 1.5; font-size: 11pt;"><b>상품발송</b></span>
									</p>
									<p>&nbsp;</p></td>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 112px; background-color: rgb(255, 255, 255);"
									class=""><p>&nbsp;</p>
									<p>&nbsp;저희 쇼핑몰은 평일 오후 4시 이전 결제완료건에 한하여, 당일 발송을 원칙으로 합니다.</p>
									<p>
										&nbsp;단, 주문상품의 입고지연 및 주문제작 상품 경우, 발송기간이 2~3일 가량 지연될 수 있습니다.<span
											style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;평일(월~금) 주문건 오후 4시 이전 결제건</p>
									<p>
										&nbsp;당일 발송. 오후 6시 상품 출고<span style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;평일(월~금) 주문건 오후 4시 이후 결제건</p>
									<p>
										&nbsp;익일 발송. 다음날 오후 6시 상품 출고<span style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;토/일/공휴일 결제건</p>
									<p>&nbsp;다음 영업일 기준 오후 6시 상품 출고</p>
									<p>&nbsp;</p></td>
							</tr>
							<tr>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 55px; background-color: rgb(255, 255, 255);"
									class=""><p>
										&nbsp;<span
											style="font-size: 14.6666669845581px; line-height: 22px;"><b>배송기간</b></span>
									</p>
									<p>&nbsp;</p></td>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 55px; background-color: rgb(255, 255, 255);"
									class=""><p>&nbsp;배송기간은 상품발송일로 부터, 택배사의 사정에 따라 1일~4일
										가량 소요될 수 있습니다.</p>
									<p>&nbsp;주말/공휴일을 포함하거나, 도선산간 지역일 경우 추가적인 배송지연이 발생할 수 있습니다.</p></td>
							</tr>
							<tr>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 5px; background-color: rgb(255, 255, 255);"
									class="" rowspan="1" colspan="1"><p>
										&nbsp;<b
											style="font-size: 14.6666669845581px; line-height: 22px;">배송요금</b>
									</p>
									<p>&nbsp;</p></td>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 5px; background-color: rgb(255, 255, 255);"
									class="" rowspan="1" colspan="1"><p>&nbsp;</p>
									<p>&nbsp;5만원 이하 결제건 : 배송비 2,500원 (주문 결제시, 부담)</p>
									<p>&nbsp;5만원 이상 결제건 : 무료 배송</p>
									<p>&nbsp;단, 아래와 같은 경우 별도의 추가 배송비(도선료)가 발생 됩니다.</p>
									<p>&nbsp;- 도서산간/제주도 : 추가요금 500원</p>
									<p>&nbsp;- 국내 기타/섬 지역 : 4,500원</p>
									<p>&nbsp;- 해외 발송 : 전화문의</p>
									<p>&nbsp;</p></td>
							</tr>
							<tr>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 58px; background-color: rgb(255, 255, 255);"
									class="" rowspan="1" colspan="1"><p>
										&nbsp;<b
											style="font-size: 14.6666669845581px; line-height: 22px;">배송조회</b>
									</p>
									<p>&nbsp;</p></td>
								<td
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 58px; background-color: rgb(255, 255, 255);"
									class="" rowspan="1" colspan="1"><p>&nbsp;</p>
									<p>&nbsp;우체국 택배</p>
									<p>
										&nbsp;홈페이지 : <a href="http://parcel.epost.go.kr/">http://parcel.epost.go.kr/</a>
									</p>
									<p>&nbsp;전화문의 : 1588-1300</p>
									<p>&nbsp;상담시간 : 평일 09:00 ~ 18:00</p>
									<p>&nbsp;배송조회는 택배사의 홈페이지 또는 전화문의를 이용 하시거나,</p>
									<p>&nbsp;쇼핑몰 내 마이페이지 &gt; 배송조회를 통해 확인하실 수 있습니다.&nbsp;</p>
									<p>&nbsp;</p></td>
							</tr>
						</tbody>
					</table>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>
						<b style="line-height: 1.5;"><span style="font-size: 18pt;">상품교환/환불안내</span></b>
					</p>
					<table class="__se_tbl"
						style="width: 100%; border-width: 1px 1px 0px 0px; border-top-style: solid; border-right-style: solid; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204);"
						border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td class=""
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); width: 120px; height: 112px; background-color: rgb(255, 255, 255);"><p>
										&nbsp;<span style="line-height: 1.5; font-size: 11pt;"><b>교환/환불규정</b></span>
									</p>
									<p>&nbsp;</p></td>
								<td class=""
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 112px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p>
									<p>&nbsp;저희 쇼핑몰은 판매자의 과실 또는 소비자의 과실로 발생되는 상품의 교환, 환불(반품)
										서비스를</p>
									<p>&nbsp;소비자 보호법에 의거하여 상품수령로 부터 7일 이내에 요청하실 수 있습니다.</p>
									<p>
										&nbsp;<b>주문취소 접수</b>
									</p>
									<p>&nbsp; &nbsp;상품 주문 후, 배송준비 전 단계에서 마이페이지를 통해서 [주문취소]접수가능</p>
									<p>
										&nbsp;<b>상품교환 접수</b>
									</p>
									<p>&nbsp; &nbsp;상품 수령 후, 마이페이지에서 [상품수령]버튼 클릭 후 [교환신청]버튼을
										클릭하여 접수가능</p>
									<p>
										&nbsp;<b>환불/반품 접수</b>
									</p>
									<p>&nbsp; &nbsp;상품 수령 후, 마이페이지에서 [상품수령]버튼 클릭 후 [환불신청]버튼을
										클릭하여 접수가능</p>
									<p>&nbsp;</p></td>
							</tr>
							<tr>
								<td class=""
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 55px; background-color: rgb(255, 255, 255);"><p>
										&nbsp;<span
											style="font-size: 14.6666669845581px; line-height: 22px;"><b>판매자과실</b></span>
									</p>
									<p>&nbsp;</p></td>
								<td class=""
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 55px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p>
									<p>&nbsp;판매자의 과실로인한 상품 교환 및 환불시에는 왕복 배송요금 5,000원을 판매자가 부담
										합니다.</p>
									<p>&nbsp;판매자의 과실에 해당하는 사유는 다음과 같습니다.</p>
									<p>&nbsp; &nbsp;- 오배송 : 주문상품과 다른 상품, 주문옵션과 다른 옵션의 상품이 배송되었을
										때</p>
									<p>&nbsp; &nbsp;- 제품불량 : 제품의 하자 또는 사용 및 외관상 결함이 있을 때</p>
									<p>&nbsp; &nbsp;- 허위광고 : 쇼핑몰의 제품 안내문구와, 차이가 있을 때</p>
									<p>&nbsp;※ 예외규정 : 모니터상의 제품사진과 실제품의 미세한 색상 또는 규격의 차이</p>
									<p>
										&nbsp; 상품 상세정보를 통해 사전에 안내된 경우 등<span style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;</p></td>
							</tr>
							<tr>
								<td class="" rowspan="1" colspan="1"
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 5px; background-color: rgb(255, 255, 255);"><p>
										&nbsp;<b
											style="font-size: 14.6666669845581px; line-height: 22px;">소비자과실</b>
									</p>
									<p>&nbsp;</p></td>
								<td class="" rowspan="1" colspan="1"
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p>
									<p>&nbsp;소비자의 과실로인한 상품 교환 및 환불시에는 왕복 배송요금 5,000원을 소비자가 부담
										합니다.</p>
									<p>&nbsp;소비자의 과실에 해당하는 사유는 다음과 같습니다.</p>
									<p>&nbsp; &nbsp;- 단순변심 : 판매자 과실에 해당하는 사유하지 않는 사유로 교환 및 환불을
										요청할 때</p>
									<p>&nbsp; &nbsp;- 주문오류 : 소비자가 실수로 상품 및 주문옵션을 잘못 입력하였을 때</p>
									<p>
										&nbsp; &nbsp;- 판매자 과실의 예외규정에 명시된 항목<span
											style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;</p></td>
							</tr>
							<tr>
								<td class="" rowspan="1" colspan="1"
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 58px; background-color: rgb(255, 255, 255);"><p>
										&nbsp;<span
											style="font-size: 14.6666669845581px; line-height: 22px;"><b>반품/교환</b></span>
									</p>
									<p>
										<span
											style="font-size: 14.6666669845581px; line-height: 22px;"><b>&nbsp;불가항목</b></span>
									</p>
									<p>&nbsp;</p></td>
								<td class="" rowspan="1" colspan="1"
									style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); height: 58px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p>
									<p>&nbsp;상품 수령 후, 반품/교환 요청 시 아래의 사유에 해당할 경우, 판매자는 소비자 보호법에
										의거하여</p>
									<p>&nbsp;반품 및 교환을 거절할 수 있으니, 반드시 확인 하시기 바랍니다.</p>
									<p>&nbsp; &nbsp;- 소비자에게 책임 있는 사유로 상품이 멸실 또는 훼손된 경우</p>
									<p>&nbsp; &nbsp;- 소비자의 개봉 또는 사용흔적 등으로 인하여, 새 상품으로서의 가치가 훼손된
										경우</p>
									<p>&nbsp; &nbsp;- 상품 수령일로 부터 반품 및 교환접수 기간이 경과하였을 경우</p>
									<p>&nbsp; &nbsp;- 무단복제를 목적으로 상품을 구입하였을 경우</p>
									<p>
										&nbsp; &nbsp;- 그 외 주문제작, 해외 직배송 등의 사유로 반품/교환 불가 상품으로 사전 명시된
										상품일 경우<span style="line-height: 1.5;">&nbsp;</span>
									</p>
									<p>&nbsp;</p></td>
							</tr>
						</tbody>
					</table>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</div>
			</div>
		</div>

		<!-- 상품 리뷰 시작 -->
		<div id="goods_detail">

			<div class="goods_contents" id="goods_review">
				<ul class="link">
					<li id="tab_review_01"><a href="#goods_detail">상품상세정보</a></li>
					<li id="tab_review_02"><a href="#goods_delivery">배송/교환/반품정보</a></li>
					<li id="tab_review_03" class="selected"><a href="#goods_review">상품구매후기</a></li>
					<li id="tab_review_04"><a href="#goods_qan">상품문의</a></li>
				</ul>
			</div>

			<div id="goods_review_list">
				<table class="board_list-tb">
					<caption>목록</caption>
					<thead>
						<tr>
							<th scope="col">상품평</th>
							<th scope="col">평 점</th>
							<th scope="col">등록자</th>
							<th scope="col">등록일</th>
						</tr>
					</thead>
					<tbody>

						<!-- 리스트 루프 시작 -->
						<!-- 리스트 루프 끝 -->

					</tbody>
				</table>
				<div class="list_bottom_center">
					<nav class="pg_wrap">
						<span class="pg"></span>
					</nav>
				</div>
			</div>

			<script>
				function review_contents_shop(id) {
					if ($("#review_id_" + id).css("display") == 'none') {
						$("#review_id_" + id).fadeIn("slow");
					} else {
						$("#review_id_" + id).fadeOut("slow");
					}
				}
			</script>
		</div>
		<!-- 상품 리뷰 끝 -->

		<!-- 상품 문의 시작 -->
		<div id="goods_qan_box">
			<div class="goods_contents" id="goods_qan">
				<ul class="link">
					<li id="tab_goods_qan_01"><a href="#goods_detail">상품상세정보</a></li>
					<li id="tab_goods_qan_02"><a href="#goods_delivery">배송/교환/반품정보</a></li>
					<li id="tab_goods_qan_03"><a href="#goods_qna">상품구매후기</a></li>
					<li id="tab_goods_qan_04" class="selected"><a
						href="#goods_qan">상품문의</a></li>
				</ul>
			</div>
			<div id="qanda_pass_check_div_box">
				<div id="qanda_pass_check_div" style="display: none;">
					<iframe name="ifm_proc2" id="ifm_proc2" src="" frameborder="0"
						scrolling="no" style="display: block; width: 100%; height: 100%;"></iframe>
				</div>
			</div>

			<div id="goods_qanda_list">
				<table class="board_list-tb">
					<caption>목록</caption>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">카테고리</th>
							<th scope="col">제목</th>
							<th scope="col">등록자</th>
							<th scope="col">등록일</th>
						</tr>
					</thead>
					<tbody>

						<!-- 리스트 루프 시작 -->
						<!-- 리스트 루프 끝 -->

					</tbody>
				</table>
				<div class="list_bottom_right">
					<input type="button" value=" 상품문의 " id="btn_submit"
						class="button_white80x30" onclick="goods_qna_reg();">
				</div>
				<div class="list_bottom_center">
					<nav class="pg_wrap">
						<span class="pg"></span>
					</nav>
				</div>
			</div>



			<div class="form_div" id="qanda_form_div" style="display: none;">
				<form id="fregisterform2" name="fregisterform2" action=""
					onsubmit="return fregisterform_submit2(this);" method="post"
					enctype="multipart/form-data" target="ifm_proc">
					<input type="hidden" name="state" value="qanda"> <input
						type="hidden" name="goods_no" value="37"> <input
						type="hidden" name="goods_code" value="S302499922410"> <input
						type="hidden" name="goods_name"
						value="[POLHAM]남녀공용 웨이브블럭긴팔티셔츠(PU5H931)"> <input
						type="hidden" name="qna_type" value="goods">
					<div class="location_title">상품문의(Q & A)</div>
					<div>
						<span style="color: #FF3366;"> * </span>표시가 있는 부분은 필수 입력 사항입니다.
					</div>

					<table class="person-tb">
						<caption></caption>
						<tbody>
							<tr>
								<th scope="row"><label for="name">이름</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" id="name" name="name" required
									class="input_box" value=""></td>
							</tr>
							<tr>
								<th scope="row"><label for="password">비밀번호</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="password" id="password" name="password"
									value="" required class="input_box"></td>
							</tr>
							<tr>
								<th scope="row"><label for="options">비밀글</label></th>
								<td><input type="checkbox" name="options" id="options"
									value="secret"> 비밀글</td>
							</tr>
							<tr>
								<th scope="row"><label for="email">이메일</label></th>
								<td><input type="text" id="email" name="email" value=""
									class="input_box300"></td>
							</tr>
							<tr>
								<th scope="row"><label for="category">구분</label><span
									style="color: #FF3366;"> * </span></th>
								<td><select name="category" id="category" required
									class="selectbox">
										<option value="">구분 선택</option>
										<option value="상품">상품</option>
										<option value="배송">배송</option>
										<option value="주문/결제">주문/결제</option>
										<option value="반품/교환">반품/교환</option>
										<option value="주문취소">주문취소</option>
										<option value="기타">기타</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row"><label for="subject">제목</label><span
									style="color: #FF3366;"> * </span></th>
								<td><input type="text" id="subject" name="subject" value=""
									required class="input_box99percent"></td>
							</tr>
							<tr>
								<th scope="row"><label for="content">내용</label><span
									style="color: #FF3366;"> * </span></th>
								<td><TEXTAREA name="content" id="content"
										class="smarteditor2" style="width: 99%; height: 200px;"></TEXTAREA>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="raview_img">이미지</label></th>
								<td><input type="file" name="upfiles[]" id="raview_img"
									class="input_box"></td>
							</tr>


							<tr>
								<th scope="row"><label for="raview_img">개인정보 수집 및<br>
										이용 동의
								</label></th>
								<td>
									<div class="qna_subject">
										■ 개인정보의 수집·이용 목적<br> &nbsp; 서비스 제공 및 계약의 이행, 구매 및 대금결제,
										물품배송 또는 청구지 발송, 회원관리 등을 위한 목적 <br> ■ 수집하려는 개인정보의 항목<br>
										&nbsp; 이름, 주소, 연락처, 이메일 등 <br> ■ 개인정보의 보유 및 이용 기간<br>
										&nbsp; 회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.<br>
										<br> 개인정보 수집 및 이용에 동의하십니까? <span class="radiobox_span"><input
											type="radio" name="privacy_agreement" id="privacy_agreement"
											value="1"> 동의함</span> <span class="radiobox_span"><input
											type="radio" name="privacy_agreement" id="privacy_agreement"
											value="2"> 동의안함</span>
									</div>
								</td>
							</tr>


						</tbody>
					</table>
					<div id="btn_confirm">
						<input type="submit" value="문의등록" id="btn_submit" class="button">
					</div>
				</form>
			</div>


			<script>
				// submit 폼체크
				function fregisterform_submit2(f) {
					if (f.name.value.length < 1) {
						alert("이름을 입력해 주세요.");
						f.name.focus();
						return false;
					}

					if (f.password.value.length < 1) {
						alert("비밀번호를 입력해 주세요.");
						f.password.focus();
						return false;
					}

					if (f.category.value.length < 1) {
						alert("구분을 선택해 주세요.");
						f.category.focus();
						return false;
					}

					if (f.subject.value.length < 1) {
						alert("제목을 입력해 주세요.");
						f.subject.focus();
						return false;
					}

					if (f.content.value.length < 1) {
						alert("내용을 입력해 주세요.");
						f.content.focus();
						return false;
					}

					if (f.privacy_agreement[0].checked == false) {
						alert("개인정보 수집 및 이용에 동의 하셔야 문의글을 등록 할 수 있습니다.");
						f.privacy_agreement[0].focus();
						return false;
					}

					var form = document.getElementById("fregisterform2");
					form.action = './goods_review_qna_proc.php';
					form.target = "ifm_proc";
					form.method = 'post';
					form.submit();

					return true;
				}

				function goods_qna_reg() {
					if ($("#qanda_form_div").css("display") == 'none') {
						$("#qanda_form_div").fadeIn("slow");
					} else {
						$("#qanda_form_div").fadeOut("slow");
					}
				}

				function qanda_contents_shop(id, no, goods_no, option) {
					var admin_session = '';
					if ($("#qanda_id_" + id).css("display") == 'block') {
						$("#qanda_id_" + id).fadeOut("slow");
						return;
					}

					if (option == "secret") {
						if (!admin_session) {
							qanda_password_check_form(id, no, goods_no);
						} else {
							var obj2 = document.getElementById("div_popup_ifm");
							obj2.src = "./goods_qanda_pass.php?no=" + no
									+ "&goods_no=" + goods_no + "&id=" + id;
						}
						return;
					} else {

						$("#qanda_pass_check_div").css("display", "none");
						if ($("#qanda_id_" + id).css("display") == 'none') {
							$("#qanda_id_" + id).fadeIn("slow");
						} else {
							$("#qanda_id_" + id).fadeOut("slow");
						}
					}
				}

				function qanda_password_check_form(id, no, goods_no) {

					var obj2 = document.getElementById("div_popup_ifm");
					obj2.src = "./goods_qanda_pass.php?no=" + no + "&goods_no="
							+ goods_no + "&id=" + id;
					div_block_popup(380, 300, "");
				}
			</script>
		</div>

	<div id="back-top" style="display: block;">
		<a href="#TOP"><img src='../skin/quick/basic/img/top_btn.png'></a>
	</div>


</body>
</html>