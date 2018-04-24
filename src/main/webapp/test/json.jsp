<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$.getJSON('${pageContext.request.contextPath}/json1', function(data) {
		var myJSON = JSON.stringify(data);

		var items = [];
		$.each(data, function(key, val) {
			items.push('<li id="' + key + '">' + val + '</li>');
		});
		$('<ul/>', {
			'class' : 'my-new-list',
			html : items.join('')
		}).appendTo('body');
	});
</script>
</head>
<body>

</body>
</html>