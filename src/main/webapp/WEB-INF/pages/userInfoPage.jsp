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

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2 class="mb-4">Upload số điện thoại cần gạch cước</h2>
					<p>Upload file excel đã điền thông tin theo mẫu, có thể tải
						file mẫu tại đây</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-10 ftco-animate">
					<form id="upload-form" class="domain-form upload-box" enctype="multipart/form-data">
						<div class="form-group d-md-flex">
							<input type="file" name="file" id="file" class="custom-file upload-box"> <br> 
							<input type="submit" id="upload-button" class="btn btn-primary px-5" value="Upload">
						</div>
						<span id="upload-error" class="error"></span> <span
							id="upload-result" class="mb-4"></span>
					</form>

					<p class="domain-price text-center">
						<span><small>Đại lý cấp 1</small> 21%</span> <span><small>Đại
								lý cấp 2</small> 18%</span>
					</p>
				</div>
			</div>
		</div>
	</section>


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
									<th>Serial</th>
									<th>Thời gian nhận</th>
									<th>Trạng thái thẻ</th>
									<th>Kết quả nạp</th>
									<th>edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listcard}" var="cardinfo">
									<tr>
										<td>${cardinfo.id}</td>
										<td>${cardinfo.serial}</td>
										<td>${cardinfo.receivetime}</td>
										<td>${cardinfo.cardcheckresult}</td>
										<td>${cardinfo.cardprocessresult}</td>
										<td><a href="<c:url value='/edit/${cardinfo.id}' />">Edit</a></td>
									</tr>
								</c:forEach>
							</tbody>
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
					data : $('form#upload-form').serialize(),
					success : function(msg) {
						alert(msg);
						$("#upload-result").text(msg);
					},
					error : function(msg) {
						alert("File upload Failed");
						$("#upload-error").text(msg);
					}
				});
			});
		});
	</script>
</body>
</html>