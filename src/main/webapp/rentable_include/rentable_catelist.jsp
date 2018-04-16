<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<style>
.hdbox {
	width: 93%;
	margin-top: 2%;
	margin-left: auto;
	margin-right: auto;
	height: 41px;
	padding-top: 13px;
	border-bottom: 1px solid #ededed;
	background: #fff;
	text-align: center;
	font-weight: bold;
	font-size: 15px;
}

.ctglist {
	width: 93%;
	margin: auto;
	overflow: hidden;
	background: #fff;
	box-shadow: 0 2px 2px -2px #999;
	overflow: hidden;
}

.ctglist>ul {
	width: 100%;
	list-style: none;
	overflow: hidden;
	margin: 0 -1px -1px 0;
}

.ctglist>ul>li {
	float: left;
	width: 49.6%;
	height: 41px;
	border-width: 0 1px 1px 0;
	border-style: solid;
	border-color: #ededed;
}

.ctglist ul li a {
	display: block;
	overflow: hidden;
	height: 40px;
	padding: 13px 12px 0;
	font-size: 13px;
}

.ctglist ul li a em {
	display: inline-block;
	width: 77%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.ctglist ul li a span {
	display: inline-block;
	color: #999;
	white-space: nowrap;
	float: right;
}
</style>

<body>
	<div class="itemgoods">
		<div class="hdbox">${maincate}</div>
		<div class="ctglist">
			<ul>
				<c:forEach var="subcate" items="${subcatelist}">
					<li><a
						href="${pageContext.request.contextPath}/category?maincate=${maincate}&subcate=${subcate.RP_catesub}">
							<em>${subcate.RP_catesub}</em> <span>${subcate.RP_subCount}</span>
					</a></li>
				</c:forEach>
			</ul>

			<select class="selectpicker show-menu-arrow">
				<option>Mustard</option>
				<option>Ketchup</option>
				<option>Relish</option>
			</select>

		</div>

		<div class="itemwrap">
			<ul class="itemlist_row">
				<c:forEach var="items" items="${maincatelist}">
					<li><a href="<c:url value="/ProdDetail/${items.RP_itemnum}"/>"><img
							alt=""
							src="${pageContext.request.contextPath}/upload_products/${items.RP_img1}"
							style="width: 100%; height: 70%;">

							<p class="itemsinfo">
								<em>${items.RP_itemname}</em><br> <em> <fmt:parseDate
										var="dateString1" value="${items.RP_startdate}"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${dateString1}" pattern="yyyy.MM.dd" /> ~ <fmt:parseDate
										var="dateString2" value="${items.RP_enddate}"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${dateString2}" pattern="yyyy.MM.dd" />
								</em> <br> <strong>${items.RP_price}</strong>
							</p> </a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>