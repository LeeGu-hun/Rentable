<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<body>
	<c:choose>
		<c:when test="${path eq 'category'}">
			<%@include file="../rentable_include/rentable_catelist.jsp"%>
		</c:when>
		<c:when test="${path eq 'ProdDetail'}">
			<%@include file="../item/itemdetail.jsp"%>
		</c:when>
		<c:when test="${path eq 'ProdInsert'}">
			<%@include file="../item/iteminsert.jsp"%>
		</c:when>
		<c:when test="${path eq 'search'}">
			<%@include file="../rentable_include/rentable_catelist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_modify'}">
			<%@include file="../myPage/user_modify.jsp"%>
		</c:when>
		<c:when test="${path eq 'ProdPay'}">
			<%@include file="../item/itempay.jsp"%>
		</c:when>
		<c:when test="${path eq 'CompPay'}">
			<%@include file="../myPage/user_rentlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_manage'}">
			<%@include file="../admin/manage_users.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_registerlist'}">
			<%@include file="../myPage/user_registerlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_interlist'}">
			<%@include file="../myPage/user_interlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_rentlist'}">
			<%@include file="../myPage/user_rentlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_loanlist'}">
			<%@include file="../myPage/user_loanlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_delete'}">
			<%@include file="../myPage/user_delete.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_loanlist'}">
			<%@include file="../myPage/user_loanlist.jsp"%>
		</c:when>
		<c:when test="${path eq 'user_rentlist'}">
			<%@include file="../myPage/user_rentlist.jsp"%>
		</c:when>
		<c:otherwise>
			<%@include file="../rentable_include/rentable_mainlist.jsp"%>
		</c:otherwise>
	</c:choose>
</body>
