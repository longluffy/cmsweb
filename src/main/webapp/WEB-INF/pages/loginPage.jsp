<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

		</div>
	</div>
	<section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center mb-5">

				<form name='f'
					action="${pageContext.request.contextPath}/j_spring_security_check"
					method='POST'>
					<table>
						<tr>
							<td><p>User:</p></td>
							<td><input type='text' name='username' value=''></td>
						</tr>
						<tr>
							<td><p>Password:</p></td>
							<td><input type='password' name='password' /></td>
						</tr>
						<tr>
							<td><input class="navbar-toggler" name="submit"
								type="submit" value="submit" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</section>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>