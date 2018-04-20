<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal").modal();
		});
	});
</script>
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
									<a href="<c:url value="/ProdDetail/${items.RP_itemnum}/${items.RP_stat}"/>">
										<div style="height: 70%">
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
										<div style="height: 30%">
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

</body>
</html>