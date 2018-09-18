<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

	<!-- END nav -->

	<!-- <div class="js-fullheight"> -->
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
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Đăng
							nhập</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Đăng
						nhập</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">ĐĂNG NHẬP</span>
					<h2 class="mb-4">Đăng nhập vào hệ thống</h2>
					<p>Cung cấp các giải pháp và dịch vụ thanh toán trực tuyến tại
						Việt Nam</p>
				</div>
			</div>
			<div class="row justify-content-center">
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
							<td><input class="navbar-toggler btn btn-primary px-5"
								name="submit" type="submit" value="submit" /></td>
						</tr>
					</table>
				</form>


				<div class="col-md-10 ftco-animate">

					<p class="domain-price text-center">
						<span><small>Đại lý cấp 1</small> 21%</span> <span><small>Đại
								lý cấp 2</small> 18%</span>
					</p>
				</div>
			</div>
		</div>
	</section>



	<section class="ftco-section ">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">Đôi điều về chúng tôi</span>
					<h2 class="mb-4">Các câu hỏi thường gặp</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div id="accordion">
						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menuone"
											aria-expanded="true" aria-controls="menuone">Cổng thanh
											toán trực tuyến (thecaotructuyen.vn) là gì? <span
											class="collapsed"><i class="icon-plus-circle"></i></span><span
											class="expanded"><i class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menuone" class="collapse show">
										<div class="card-body">
											<p>Là cổng thanh toán trực tuyến cung cấp cho khách hàng
												các giải pháp và dịch vụ thanh toán tại Việt Nam. Các dịch
												vụ cổng THANH TOÁN TRỰC TUYẾN cung cấp: - Thanh toán tiền
												cho các thuê bao trả trước, trả sau của Viettel - Thanh toán
												cước thuê bao: FTTH, D-com, PSTN, ADSL, NextTV…của Viettel -
												Thanh toán cước phần mềm giáo dục của Viettel: Smas.edu.vn -
												Nạp tiền cho các gói cước: V90, V50… của Viettel - Thanh
												toán cước thuê bao truyền hình K+ - Cung cấp giải pháp thanh
												toán bằng thẻ cào điện thoại cho các cổng thanh toán trực
												tuyến… B</p>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menutwo"
											aria-expanded="false" aria-controls="menutwo"> Tại sao
											phải thanh toán qua cổng này, các lợi ích của cổng thanh
											toán? <span class="collapsed"><i
												class="icon-plus-circle"></i></span><span class="expanded"><i
												class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menutwo" class="collapse">
										<div class="card-body">
											<p>- Chính sách chiết khấu cao (cụ thể xem quy định chính
												sách đại lý) - Việc ứng dụng CNTT và phần mềm trên APP giúp
												cho việc thanh toán được tiền lợi, nhanh chóng, mọi lúc mọi
												nơi. - Dữ liệu thuê bao, các gói cước…được đưa lên hệ thống
												sẽ tự động gạch hàng tháng, không cần bổ sung nhiều lần -
												Kiểm soát được tiến độ gạch cước, chi phí phải trả nhà mạng
												và cổng than toán - Gạch trước trả tiền sau cho CỔNG THANH
												TOÁN TRỰC TUYẾN</p>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menu3"
											aria-expanded="false" aria-controls="menu3">Cách thức
											thực hiện như thế nào? <span class="collapsed"><i
												class="icon-plus-circle"></i></span><span class="expanded"><i
												class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menu3" class="collapse">
										<div class="card-body">
											<p>- Bước 1: Liên hệ với Quản trị viên hệ thông để được
												mở tải khoản trên hệ thống - Bước 2: Đăng nhập vào
												website:THECAOTRUCTUYEN.VN đăng nhập vào tài khoản (trong
												trường hợp quên mật khẩu, liên hệ lại quản trị viên hệ
												thống). - Bước 3: Tải file mẫu về nhập danh sách thuê bao
												cần gạch cước hoặc nhập trực tiếp thuê bao cần gạch cước vào
												hệ thống và ghi số tiền cần gạch vào hệ thống theo hướng
												dẫn. - Bước 4: Kiểm tra xem tiến độ gạch cước của các thuê
												bao nhập lên hệ thống, thanh toán tiền cước đã được gạch cho
												hệ thống vào ngày N+ 1. Người dung có thể xuất báo cáo kiểm
												tra số tiền đã được nạp, số tiền chưa nạp… của tải khoản của
												mình bất cứ lúc nào trong ngày.</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menu4"
											aria-expanded="false" aria-controls="menu4">Một số vướng
											mắc khi triển khai? <span class="collapsed"><i
												class="icon-plus-circle"></i></span><span class="expanded"><i
												class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menu4" class="collapse">
										<div class="card-body">
											<p>- Do hệ thống không gạch cước lẻ theo nhu cầu thực tế
												được do vậy người dung phải nhập số tiền thanh toán thấp
												nhất 50k và chẵn chia hết được cho 50. - Hệ thống sẽ chủ
												động nạp cước trong ngày cho người dùng nếu hệ thống thông
												quá tải…do vậy việc thanh toán sẽ mất một chút time. Mọi
												thông tin chi tiết xin vui long liên hệ với quản trị hệ
												thống.</p>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menu5"
											aria-expanded="false" aria-controls="menu5">Lộ trình
											thanh toán <span class="collapsed"><i
												class="icon-plus-circle"></i></span><span class="expanded"><i
												class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menu5" class="collapse">
										<div class="card-body">
											<p>When she reached the first hills of the Italic
												Mountains, she had a last view back on the skyline of her
												hometown Bookmarksgrove, the headline of Alphabet Village
												and the subline of her own road, the Line Lane. Pityful a
												rethoric question ran over her cheek, then she continued her
												way.</p>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header">
										<a class="card-link" data-toggle="collapse" href="#menu6"
											aria-expanded="false" aria-controls="menu6">Thông tin
											liên hệ<span class="collapsed"><i
												class="icon-plus-circle"></i></span><span class="expanded"><i
												class="icon-minus-circle"></i></span>
										</a>
									</div>
									<div id="menu6" class="collapse">
										<div class="card-body">
											<p>When she reached the first hills of the Italic
												Mountains, she had a last view back on the skyline of her
												hometown Bookmarksgrove, the headline of Alphabet Village
												and the subline of her own road, the Line Lane. Pityful a
												rethoric question ran over her cheek, then she continued her
												way.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Thẻ Cào Trực Tuyến</h2>
						<p>Cung cấp cho khách hàng các giải pháp và dịch vụ thanh toán trực tuyến tại Việt Nam</p>
						<p class="mt-4">
							<a href="#" class="btn btn-primary p-3">Liên hệ chúng tôi</a>
						</p>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Unseful Links</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Servers</a></li>
							<li><a href="#" class="py-2 d-block">Windos Hosting</a></li>
							<li><a href="#" class="py-2 d-block">Cloud Hosting</a></li>
							<li><a href="#" class="py-2 d-block">OS Servers</a></li>
							<li><a href="#" class="py-2 d-block">Linux Servers</a></li>
							<li><a href="#" class="py-2 d-block">Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Navigational</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Home</a></li>
							<li><a href="#" class="py-2 d-block">Domain</a></li>
							<li><a href="#" class="py-2 d-block">Hosting</a></li>
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Blog</a></li>
							<li><a href="#" class="py-2 d-block">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">B205 Valencia Garden , CT19B Việt Hưng</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+84 39 334 0991</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">kinhdoanh@thecaotructuyen.vn</span></a></li>
								<li><span class="icon icon-clock-o"></span><span
									class="text">Saturday &mdash; Sunday 8:00am - 5:00pm</span></li>
							</ul>
						</div>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



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
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>