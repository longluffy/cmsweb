<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Thẻ cào trực tuyến VN</title>

<!--     <link href="https://fonts.googleapis.com/css?family=Open+Sans&amp:300,400,500,600,700;;subset=vietnamese" rel="stylesheet"> -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="_menu.jsp" />

	<div class="hero-wrap">
		<div class="overlay"></div>
		<div class="circle-bg"></div>
		<div class="circle-bg-2"></div>
		<div class="container-fluid">
			<div
				class="row no-gutters d-flex slider-text align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-6 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a
							href="${pageContext.request.contextPath}/welcome">Home</a></span> <span>User
							Info</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${username}</h1>
				</div>
			</div>
		</div>
	</div>

	


	<section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2 class="mb-4">Danh sách số gạch cước</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="table-responsive">
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>ID</th>
									<th>Serial thẻ</th>
									<th>Ngày nạp</th>
									<th>Giá trị thẻ</th>
									<!-- 									<th>edit</th> -->
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listcard}" var="carddetail">
									<tr>
										<td>${carddetail.id}</td>
										<td>${carddetail.serial}</td>
										<td>${carddetail.chargedtime}</td>
										<td>${carddetail.cardvalue}</td>
										<%-- 										<td><a href="<c:url value='/edit/${account.id}' />">Edit</a></td> --%>
									</tr>
									
								</c:forEach>
								
								
							</tbody>
							<thead class="thead-primary">
									<tr>
										<td>Tổng</td>
										<td></td>
										<td></td>
										<td>${totalcardvalue}</td>
										<%-- 										<td><a href="<c:url value='/edit/${account.id}' />">Edit</a></td> --%>
									</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- END slider -->




	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script src="jquery.js"></script>
	<script src="jquery.form.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="js/main.js"></script>

	<script>
		$(document).ready(function() {
			$("#upload-form").submit(function() {
				$.ajax({
					url : '/uploadFile',
					type : "post",
					dataType : "text/plain",
					data : $('form#upload-form').serialize(),
					success : function(msg) {
						alert("file upload success");
					},
					error : function(msg) {
						console.log(error)
					}
				});
			});
		});
	</script>
</body>
</html>