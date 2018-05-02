<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/resources/images/favicon.png">
<title>Ela - Bootstrap Admin Dashboard Template</title>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/lib/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->

<link
	href="${pageContext.request.contextPath}/resources/css/lib/calendar2/semantic.ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/lib/calendar2/pignose.calendar.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/lib/owl.carousel.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/lib/owl.theme.default.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
<!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
	<!-- Page wrapper  -->
	<div class="page-wrapper">
		<!-- Bread crumb -->
		<div class="row page-titles">
			<div class="col-md-5 align-self-center">
				<h3 class="text-primary">물품관리</h3>
			</div>
			<div class="col-md-7 align-self-center">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</div>
		</div>
		<!-- End Bread crumb -->
		<!-- Container fluid  -->
		<div class="container-fluid">
			<!-- Start Page Content -->
			<div class="row">
				<div class="col-md-3">
					<div class="card p-30">
						<div class="media">
							<div class="media-left meida media-middle">
								<span><i class="fa fa-archive f-s-40 color-primary"></i></span>
							</div>
							<div class="media-body media-text-right">
								<h2>${counts.count_products}</h2>
								<p class="m-b-0">물품등록</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card p-30">
						<div class="media">
							<div class="media-left meida media-middle">
								<span><i class="fa fa-shopping-cart f-s-40 color-success"></i></span>
							</div>
							<div class="media-body media-text-right">
								<h2>${counts.count_borrow}</h2>
								<p class="m-b-0">대여중</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card p-30">
						<div class="media">
							<div class="media-left meida media-middle">
								<span><i class="fa fa-handshake-o f-s-40 color-warning"></i></span>
							</div>
							<div class="media-body media-text-right">
								<h2>${counts.count_success}</h2>
								<p class="m-b-0">거래완료</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card p-30">
						<div class="media">
							<div class="media-left meida media-middle">
								<span><i
									class="fa fa-calendar-plus-o f-s-40 color-danger"></i></span>
							</div>
							<div class="media-body media-text-right">
								<h2>${counts.count_delay}</h2>
								<p class="m-b-0">연체중</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="year-calendar"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<div class="card-title">
							<h4>안심보장서비스</h4>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>상품명</th>
											<th>등록날짜</th>
											<th>안심서비스</th>
											<th>보상</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${guaranteelists}" var="lists">
											<tr>
												<td>${lists.RP_itemname}</td>
												<td><span><fmt:formatDate
														value="${lists.RP_regdate}" pattern="yyyy.MM.dd" /></span></td>
												<td><span>${lists.RP_guarantee}%</span></td>
												<td><span class="badge badge-success">보상</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>




		</div>
		<!-- End Container fluid  -->
	</div>
	<!-- End Page wrapper  -->

	<!-- End Wrapper -->
	<!-- All Jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/bootstrap/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slimscroll.js"></script>
	<!--Menu sidebar -->
	<script
		src="${pageContext.request.contextPath}/resources/js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->


	<!-- Amchart -->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/morris-chart/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/morris-chart/morris.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/morris-chart/dashboard1-init.js"></script>


	<script
		src="${pageContext.request.contextPath}/resources/js/lib/calendar-2/moment.latest.min.js"></script>
	<!-- scripit init-->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/calendar-2/semantic.ui.min.js"></script>
	<!-- scripit init-->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/calendar-2/prism.min.js"></script>
	<!-- scripit init-->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/calendar-2/pignose.calendar.min.js"></script>
	<!-- scripit init-->
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/calendar-2/pignose.init.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<!-- scripit init-->

	<script
		src="${pageContext.request.contextPath}/resources/js/custom.min.js"></script>

</body>

</html>