<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Responsive Auto Show/Hide Toggle Menu Demo</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?version=1.1" />
</head>

<body>
	<div class="nav_wrapper">
		<!--<a class="menu-link" href="#menu안된다></a>-->

		<div class="spinner-master">
			<input type="checkbox" id="spinner-form" /> <label
				for="spinner-form" class="spinner-spin">
				<div class="spinner diagonal part-1"></div>
				<div class="spinner horizontal"></div>
				<div class="spinner diagonal part-2"></div>
			</label>
		</div>
		<a href="#search_box" class="btn" id="search">&#9740;</a>
		<nav id="menu" class="menu">
			<ul class="dropdown">
				<li><a href="#Link" title="Link">카테고리</a>
					<ul>
						<li><a href="#Link" title="Link">Link » </a>
							<ul>
								<li><a href="#Link" title="Link">Link</a></li>
								<li><a href="#Link" title="Link">Link</a></li>
							</ul></li>
						<li><a href="#Link" title="Link">About</a></li>
						<li><a href="#Link" title="Link">Link » </a>
							<ul>
								<li><a href="#Link" title="Link">Link</a></li>
								<li><a href="#link" title="Link">Link</a></li>
								<li><a href="#Link" title="Link">Link </a></li>
							</ul></li>
					</ul></li>
				<li><a href="#Link" title="Link">지역카테</a>
					<ul>
						<li><a href="#Link" title="Link ">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
					</ul></li>
				<li><a href="#Link" title="Link">Portfolio</a>
					<ul>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
					</ul></li>
				<li><a href="#Link" title="Link">Work</a>
					<ul>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title=" Link"> Link</a></li>
					</ul></li>
				<li><a href="#Link" title="Link">Services</a>
					<ul>
						<li><a href="#Link" title="Link">Link </a></li>
						<li><a href="#Link" title="Link">Link</a></li>
						<li><a href="#Link" title="Link">Link</a></li>
					</ul></li>
				<li><a href="#Link" title="Link">Contact</a></li>
			</ul>
		</nav>
		<form class="search_box" id="search_box" action="/search/">
			<input name="search_criteria" placeholder="Search here" value=""
				type="text"> <input class="search_icon" value="Search"
				type="submit">
		</form>
	</div>




	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>
</html>
