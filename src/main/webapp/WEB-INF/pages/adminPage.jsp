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
							href="${pageContext.request.contextPath}/welcome">Home</a></span> <span>Admin</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Xin
						chào ${username}</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">

					<h2 class="mb-4">Bạn muốn thực hiện thao tác nào ?</h2>
				</div>
			</div>
			<div class="row">
				<div
					class="col-md-12 nav-link-wrap mb-5 pb-md-5 pb-sm-1 ftco-animate">
					<div
						class="nav ftco-animate nav-pills justify-content-center text-center"
						id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-nextgen-tab"
							data-toggle="pill" href="#v-pills-nhantien" role="tab"
							aria-controls="v-pills-nextgen" aria-selected="true">Nhận tiền mặt từ đại lý
							</a> <a class="nav-link" id="v-pills-performance-tab"
							data-toggle="pill" href="#v-pills-performance" role="tab"
							aria-controls="v-pills-performance" aria-selected="false">Chuyển tiền cho đại lý</a>

						<a class="nav-link" id="v-pills-effect-tab" data-toggle="pill"
							href="#v-pills-effect" role="tab" aria-controls="v-pills-effect"
							aria-selected="false">Lịch sử giao dịch</a>
					</div>
				</div>
				<div class="col-md-12 align-items-center ftco-animate">

					<div class="tab-content ftco-animate" id="v-pills-tabContent">

						<div class="tab-pane fade show active" id="v-pills-nhantien"
							role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
							<div class="d-md-flex">
								<div class="one-forth align-self-center">
									<img src="images/image_6.jpg" class="img-fluid border"
										alt="">
								</div>
								<div class="one-half ml-md-5 align-self-center">
									        <div class="row block-9">
									          <div class="col-md-9 pr-md-5">
									            <form action="${pageContext.request.contextPath}/ReceiveMoneyFrom" method="post">
									              <div class="form-group">
									                <input type="number" step=50000 name="amount" class="form-control" placeholder="Số Tiền">
									              </div>
									              <div class="form-group">
									                <select type="select" name="user" class="form-control" placeholder="Đại lý nhận">
														<c:forEach items="${listUser}" var="user">	
														 	 <option value="${user.user.username}">${user.user.username}</option>							       				
									       				</c:forEach>
									                </select>
									                
									              </div>
									              <div class="form-group">
									                <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Ghi chú"></textarea>
									              </div>
									              <div class="form-group">
									                <input type="submit" value="Chuyển tiền" class="btn btn-primary py-3 px-5">
									              </div>
									            </form>
									          
									          </div>
									
									        </div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="v-pills-performance"
							role="tabpanel" aria-labelledby="v-pills-performance-tab">
							<div class="d-md-flex">
								<div class="one-forth order-last align-self-center">
									<img src="images/dashboard_full_2.jpg" class="img-fluid border"
										alt="">
								</div>
								<div class="one-half order-first mr-md-5 align-self-center">
									<h2 class="mb-4">Performance VPS hosting</h2>
									<p>Far far away, behind the word mountains, far from the
										countries Vokalia and Consonantia, there live the blind texts.
										Separated they live in Bookmarksgrove right at the coast of
										the Semantics, a large language ocean.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Nesciunt voluptate, quibusdam sunt iste dolores
										consequatur</p>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="v-pills-effect" role="tabpanel"
							aria-labelledby="v-pills-effect-tab">
							<div class="d-md-flex">
								<div class="one-forth align-self-center">
									<img src="images/dashboard_full_1.jpg" class="img-fluid border"
										alt="">
								</div>
								<div class="one-half ml-md-5 align-self-center">
									<h2 class="mb-4">Effective VPS hosting</h2>
									<p>Far far away, behind the word mountains, far from the
										countries Vokalia and Consonantia, there live the blind texts.
										Separated they live in Bookmarksgrove right at the coast of
										the Semantics, a large language ocean.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Nesciunt voluptate, quibusdam sunt iste dolores
										consequatur</p>
								</div>
							</div>
						</div>
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
		src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script
		src="https://cdn.datatables.net/select/1.2.6/js/dataTables.select.min.js"></script>
	<script src="js/dataTables.editor.min.js"></script>



	<script>
		// 		
		//$(document).ready(function() {
		// 			$("#upload-form").submit(function() {
		// 				$.ajax({
		// 					url : '/uploadFile',
		// 					type : "post",
		// 					dataType : "text/plain",
		// 					data : $('form#upload-form').serialize(),
		// 					success : function(msg) {
		// 						alert("file upload success");
		// 					},
		// 					error : function(msg) {
		// 						console.log(error)
		// 					}
		// 				});
		// 			});
		// 		});

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
											label : "Account",
											name : "phonenumber"
										}, {
											label : "Date",
											name : "date",
											type : "datetime"
										}, {
											label : "amount:",
											name : "amount"
										}, {
											label : "chargedamount:",
											name : "chargedamount"
										}, {
											label : "leftamount:",
											name : "leftamount"
										} ]
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
																	.error('A phone  must be given');
														}

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
												buttons : [ {
													extend : "create",
													editor : editor,
													text : 'Thêm tài khoản'
												}, {
													extend : "edit",
													editor : editor,
													text : 'Chỉnh sửa'

												} ]
											});

						});
	</script>
</body>
</html>