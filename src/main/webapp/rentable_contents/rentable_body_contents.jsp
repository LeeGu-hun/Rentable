
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<c:choose>
		<c:when test="${path eq '/cateitemlist'}">
			<%@include file="../rentable_include/rentable_catelist.jsp"%>
		</c:when>
		<c:otherwise>
			<%@include file="../rentable_include/rentable_mainlist.jsp"%>
		</c:otherwise>
	</c:choose>
</body>
