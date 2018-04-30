<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<style>
body {
	font-family: "Helvetica Neue", Helvetica, Arial;
	font-size: 14px;
	line-height: 20px;
	font-weight: 400;
	color: #3b3b3b;
	-webkit-font-smoothing: antialiased;
	font-smoothing: antialiased;
}

@media screen and (max-width: 580px) {
	body {
		font-size: 16px;
		line-height: 22px;
	}
}

.wrapper {
	margin: 0 auto;
	padding: 40px;
	max-width: 800px;
}

.table {
	margin: 0 0 40px 0;
	width: 100%;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
	display: table;
}

@media screen and (max-width: 580px) {
	.table {
		display: block;
	}
}

.row {
	display: table-row;
	background: #f6f6f6;
}

.row:nth-of-type(odd) {
	background: #e9e9e9;
}

.row.header {
	font-weight: 900;
	color: #ffffff;
	background: #ea6153;
}

.row.green {
	background: #27ae60;
}

.row.blue {
	background: #2980b9;
}

@media screen and (max-width: 580px) {
	.row {
		padding: 14px 0 7px;
		display: block;
	}
	.row.header {
		padding: 0;
		height: 6px;
	}
	.row.header .cell {
		display: none;
	}
	.row .cell {
		margin-bottom: 10px;
	}
	.row .cell:before {
		margin-bottom: 3px;
		content: attr(data-title);
		min-width: 98px;
		font-size: 10px;
		line-height: 10px;
		font-weight: bold;
		text-transform: uppercase;
		color: #969696;
		display: block;
	}
}

.cell {
	padding: 6px 12px;
	display: table-cell;
}

@media screen and (max-width: 580px) {
	.cell {
		padding: 2px 16px;
		display: block;
	}
}
</style>
</head>


<body>
	<div class="itemgoods">
		<div class="itemwrap">
			<div class="listalign">
				<div class="tit_rst"></div>
				<div class="rbox">
					<div class="cstselect">
						<a data-toggle="modal" href="#myModal" class="selected"> <span>
								최신순 </span></a>
					</div>
				</div>
			</div>

			<ul class="itemlist_row">
				<c:forEach var="items" items="${mainlist}">
					<c:choose>
						<c:when test="${items.RP_stat > 0 }">
							<li>
								<div style="position: relative; height: 100%;">
									<a
										href="<c:url value="/ProdDetail/${items.RP_itemnum}/${items.RP_stat}"/>">
										<div style="height: 70%; border-radius: 7px 2px 15px 5px">
											<c:if test="${items.ROI_stat == '대여중'}">
												<img alt=""
													src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
													style="width: 100%; height: 70%; position: absolute;">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/images/renting.png"
													style="width: 100%; height: 70%; position: absolute;">
											</c:if>
											<c:if test="${items.ROI_stat == '거래 완료'}">
												<img alt=""
													src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
													style="width: 100%; height: 70%; position: absolute;">
											</c:if>
											<c:if test="${items.ROI_stat == '대여가능'}">
												<img alt=""
													src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
													style="width: 100%; height: 70%; position: absolute;">
											</c:if>
										</div>



										<div style="height: 30%; color: black; margin-left: 2px;">
											<div
												style="font-size: 0.95em; height: 30%; margin: 5px 0 0 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
												<span>${items.RP_itemname}</span><br>
											</div>
											<div
												style="font-size: 0.85em; font-weight: bold; height: 30%;">
												<span>&nbsp>&nbsp<fmt:parseDate var="dateString1"
														value="${items.RP_startdate}"
														pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
														value="${dateString1}" pattern="yyyy.MM.dd" /> ~ <fmt:parseDate
														var="dateString2" value="${items.RP_enddate}"
														pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
														value="${dateString2}" pattern="yyyy.MM.dd" />
												</span> <br> <br>
											</div>
											<div align="right"
												style="font-size: 1.25em; height: 35%; margin-right: 4px;">
												<span margin=" 5px 3px;"
													style="color: #ae0000; font-family: Tahoma, sans-serif;">
													${items.RP_price} </span> <span style="font-size: 0.85em;">원
													/ 일</span>
											</div>
										</div>
									</a>
								</div>
							</li>
						</c:when>


						<c:otherwise>
							<li style="display: none;">
								<div style="position: relative; height: 100%;">
									<div style="height: 70%">
										<img alt=""
											src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
											style="width: 100%; height: 70%; position: absolute; display: none;">
									</div>
									<div style="heigth: 30%">
										<p class="itemsinfo">
											<em>${items.RP_itemname}</em><br> <em> <fmt:parseDate
													var="dateString1" value="${items.RP_startdate}"
													pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
													value="${dateString1}" pattern="yyyy.MM.dd" /> ~ <fmt:parseDate
													var="dateString2" value="${items.RP_enddate}"
													pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
													value="${dateString2}" pattern="yyyy.MM.dd" />
											</em> <br> <strong>${items.RP_price}</strong>
										</p>
									</div>
								</div>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content" style="z-index: 11;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">선택 옵션</h4>
				</div>
				<div class="modal-body">
					<div class="modal-select">
						<ul>
							<li><a href="${pageContext.request.contextPath}/">최신순</a></li>
							<li><a
								href="${pageContext.request.contextPath}/?orderby=prod_popular">인기순</a></li>
							<li><a
								href="${pageContext.request.contextPath}/?orderby=price_asc">저가순</a></li>
							<li><a
								href="${pageContext.request.contextPath}/?orderby=price_desc">고가순</a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal1" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content" style="z-index: 11;">
				<div class="modal-header">
					<h4 class="modal-title">아이디 정지 (연체료를 납부하세요)</h4>
				</div>
				<div class="modal-body">
					<div class="modal-select">
						<div class="wrapper">
							<div class="table">
								<div class="row header">
									<div class="cell">물품명</div>
									<div class="cell">빌린날짜</div>
									<div class="cell">반납일</div>
									<div class="cell">1일 대여료</div>
									<div class="cell">연체일</div>
									<div class="cell">연체료</div>
								</div>
								<c:forEach items="${delayInfo}" var="delay">
									<div class="row">
										<div class="cell" data-title="Name">${delay.RP_itemname }</div>
										<div class="cell" data-title="Age">${delay.ROI_startdate }</div>
										<div class="cell" data-title="Occupation">${delay.ROI_enddate }</div>
										<div class="cell" data-title="Occupation">${delay.RP_price }</div>
										<div class="cell" data-title="Occupation">${delay.delay_date }</div>
										<div class="cell" data-title="Occupation">${delay.invalid_price }</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



</body>
</html>