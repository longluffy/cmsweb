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

<link rel="stylesheet" href="css/editor.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.17/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/select/1.2.6/css/select.dataTables.min.css">


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
					<div class="row justify-content-center ftco-section ftco-counter"
						id="section-counter">
						<div class="col-md-12">
							<div class="row">
								<div
									class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text">
											<strong class="number" data-number="${balance}">0</strong> <span>Số
												dư tài khoản</span>
										</div>
									</div>
								</div>
								<div
									class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text">
											<strong class="number" data-number="${uploadedacc}">0</strong>
											<span>Tài khoản đã up</span>
										</div>
									</div>
								</div>
								<div
									class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text">
											<strong class="number" data-number="${countnotCharged}">0</strong>
											<span>Tài khoản chưa nạp</span>
										</div>
									</div>
								</div>
								<div
									class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text">
											<strong class="number" data-number="${totalleft}">0</strong>
											<span>Giá trị chưa nạp</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">

			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2 class="mb-4">Danh sách số gạch cước</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="table-responsive">
						
						<table id="example" class="display" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>Chọn</th>
									<th>Tài khoản</th>
									<th>Ngày</th>
									<th>Đăng ký</th>
									<th>Đã Nạp</th>
									<th>Còn lại</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th colspan="4" style="text-align: right">Tổng:</th>
									<th></th>
								</tr>
							</tfoot>
						</table>

					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2 class="mb-4">Upload số điện thoại cần gạch cước</h2>
					<p>Upload file excel đã điền thông tin theo mẫu, có thể tải
						file mẫu tại</p>
					<a href="<c:url value='/downloadTemplate' />">đây</a>

				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-10 ftco-animate">
					<form id="upload-form" class="domain-form upload-box"
						action="uploadFile" method="post"
						accept="application/vnd.openxmlformats-chargedamountdocument.spreadsheetml.sheet"
						enctype="multipart/form-data">
						<div class="form-group d-md-flex">
							<input type="file" name="file" id="file"
								class="custom-file upload-box"> <br> <input
								type="submit" id="upload-button" class="btn btn-primary px-5"
								value="Upload">
						</div>
						<span id="upload-error" class="error">${uploadresult}</span> <span
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



	<!-- END slider -->




	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<!-- 	<script src="jquery.js"></script> -->

	<!-- 	<script src="jquery.form.js"></script> -->
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
	<!-- 	<script src="js/jquery.timepicker.min.js"></script> -->
	<script src="js/scrollax.min.js"></script>
	<script src="js/main.js"></script>


	<!--  	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
	<!--     <script type="text/javascript" src="//cdn.datatables.net/1.10.3/js/jquery.dataTables.min.js"></script> -->


	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.17/js/jquery.dataTables.min.js"></script>
	<script
		src="js/dataTables.buttons.min.js"></script>
	<script
		src="https://cdn.datatables.net/select/1.2.6/js/dataTables.select.min.js"></script>
	<script src="js/dataTables.editor.min.js"></script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>








	<script>
		
		var editor; // use a global for the submit and return data rendering in the examples

		$(document)
				.ready(
						function() {
							console.log("yeah loading");
							editor = new $.fn.dataTable.Editor(
									{
										ajax : "${pageContext.request.contextPath}/getCardList",
										table : "#example",
										idSrc : 'id',
										fields : [ {
											label : "Tài Khoản",
											name : "phonenumber"
										}, {
											label : "Lượng Tiền",
											name : "amount"
										}]
									});

							editorSmas = new $.fn.dataTable.Editor(
									{
										ajax : "${pageContext.request.contextPath}/addSMASAccount ",
										table : "#example",
										idSrc : 'id',
										fields : [ {
											label : "Tài Khoản",
											name : "phonenumber"
										},{
											label : "Mật khẩu",
											name : "password",
											type : "password"
										}, {
											label : "Lượng Tiền",
											name : "amount"
										}]
									});
							
							// Activate an inline edit on click of a table cell
							$('#example').on('click', 'tbody td.editable',
									function(e) {
										editor.inline(this);
									});

							//validate
							editor
									.on(
											'preSubmit',
											function(e, o, action) {
												if (action !== 'remove') {
													var phone = this
															.field('phonenumber');

													// Only validate user input values - different values indicate that
													// the end user has not entered a value
													if (!phone.isMultiValue()) {
														if (!phone.val()) {
															phone
																	.error('bạn phải nhập tài khoản');
														}

													}

													var amount = this
													.field('amount');

													if (!amount.isMultiValue()) {
														if (!amount.val()) {
															amount
																	.error('bạn phải nhập số tiền ');
														}
// 														if (amount % 50000 != 0) {
// 																amount
// 																	.error('bạn phải nhập số tiền là bội số của 50.000'+ (amount % 50000));
// 														}

														if (phone.val().length >= 14) {
															phone
																	.error('The phone  length must be less that 14 characters');
														}
													}

													// ... additional validation rules

													// If any error was reported, cancel the submission so it can be corrected
													if (this.inError()) {
														return false;
													}
												}
											});
							//log
							editor.on('error', function(e, json, data) {
							    table.cells('#' + data.DT_RowId, '').every(function() {
							      $(this.node()).attr('title', this.data());
							    })
							});
							$('#example')
									.DataTable(
											{
												dom : "Bfrtip",
												ajax : "${pageContext.request.contextPath}/getCardList",
												order : [ [ 1, 'asc' ] ],
												columns : [
														{
															data : null,
															defaultContent : '',
															className : 'select-checkbox',
															orderable : false
														},
														{
															data : "phonenumber",
															className : 'editable'
														},
														{
															data : "date"
														},
														{
															data : "amount",
															className : 'editable',
															render : $.fn.dataTable.render
																	.number(
																			',',
																			'.',
																			0,
																			'VNĐ ')
														},
														{
															data : "chargedamount",
															render : $.fn.dataTable.render
																	.number(
																			',',
																			'.',
																			0,
																			'VNĐ ')
														},
														{
															data : "leftamount",
															render : $.fn.dataTable.render
																	.number(
																			',',
																			'.',
																			0,
																			'VNĐ ')
														} ],
												select : {
													style : 'os',
													selector : 'td:first-child'
												},
												buttons : [
														{
															extend : "create",
															editor : editor,
															text : 'Thêm tài khoản'
														},
														{
															extend : "create",
															editor : editorSmas,
															text : 'Thêm tài khoản SMAS'
														},
														{
															extend : "edit",
															editor : editor,
															text : 'Chỉnh sửa'

														},
														{
															extend : 'collection',
															text : 'Xuất file',
															buttons : [ 'copy',
																	'excel',
																	'csv',
																	'pdf' ]
														} ]
											});

						});
	</script>
</body>
</html>