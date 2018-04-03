<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<body>
	<c:choose>
		<c:when test="${path eq 'cateitemlist'}">
			<%@include file="../rentable_include/rentable_catelist.jsp"%>
		</c:when>
		<c:otherwise>
			<%@include file="../rentable_include/rentable_mainlist.jsp"%>
		</c:otherwise>
	</c:choose>
</body>
