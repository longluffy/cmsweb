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
					<h2 class="mb-4">Danh sách thẻ cào đã giao dịch</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="table-responsive">
						<!-- 						<table class="table"> -->
						<!-- 							<thead class="thead-primary"> -->
						<!-- 								<tr> -->
						<!-- 									<th>ID</th> -->
						<!-- 									<th>Tài khoản</th> -->
						<!-- 									<th>Ngày thêm</th> -->
						<!-- 									<th>Lượng tiền yêu cầu nạp</th> -->
						<!-- 									<th>Đã nạp</th> -->
						<!-- 									<th>Còn lại</th> -->
						<!-- 																		<th>edit</th> -->
						<!-- 								</tr> -->
						<!-- 							</thead> -->
						<!-- 							<tbody> -->
						<%-- 								<c:forEach items="${AccountList}" var="account"> --%>
						<!-- 									<tr> -->
						<%-- 										<td>${account.id}</td> --%>
						<!-- 										<td><a -->
						<%-- 											href="${pageContext.request.contextPath}/chargedetail_${account.id}"> --%>
						<%-- 												${account.phonenumber}</a></td> --%>
						<%-- 										<td>${account.date}</td> --%>
						<%-- 										<td>${account.amount}</td> --%>
						<%-- 										<td>${account.chargedamount}</td> --%>
						<%-- 										<td>${account.leftamount}</td> --%>
						<%-- 																				<td><a href="<c:url value='/edit/${account.id}' />">Edit</a></td> --%>
						<!-- 									</tr> -->
						<%-- 								</c:forEach> --%>
						<!-- 							</tbody> -->
						<!-- 						</table> -->

						<table cellpadding="1" cellspacing="0" border="0" style="width: 67%; margin: 0 auto 2em auto;">
					        <thead>
					            <tr>
					                <th>Lọc bảng theo</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr id="filter_col1" data-column="0">
					                <td>Tìm ID</td>
					                <td align="center"><input type="text" class="column_filter" id="col0_filter"></td>
					                
					            </tr>
					            <tr id="filter_col2" data-column="1">
					                <td>Serial</td>
					                <td align="center"><input type="text" class="column_filter" id="col1_filter"></td>
					                
					            </tr>
					            <tr id="filter_col3" data-column="2">
					                <td>Pin</td>
					                <td align="center"><input type="text" class="column_filter" id="col2_filter"></td>
					            
					            </tr>
					            <tr id="filter_col4" data-column="3">
					                <td>Thời gian</td>
					                <td align="center"><input type="text" class="column_filter" id="col3_filter"></td>
					               
					            </tr>
					            <tr id="filter_col5" data-column="4">
					                <td>Thẻ hợp lệ</td>
					                <td align="center"><input type="text" class="column_filter" id="col4_filter"></td>
					                
					            </tr>
					            <tr id="filter_col6" data-column="5">
					                <td>Giá trị thẻ</td>
					                <td align="center"><input type="text" class="column_filter" id="col5_filter"></td>
				               	</tr>
					             <tr id="filter_col7" data-column="6">
					                <td>Kết quả nạp</td>
					                <td align="center"><input type="text" class="column_filter" id="col6_filter"></td>
					                
					            </tr>
					             <tr id="filter_col8" data-column="7">
					                <td>Nội dung</td>
					                <td align="center"><input type="text" class="column_filter" id="col7_filter"></td>
					                
					            </tr>
					        </tbody>
					    </table>
						<table id="example" class="display" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>ID</th>
									<th>Serial</th>
									<th>PIN</th>
									<th>Thời gian</th>
									<th>Thẻ hợp lệ</th>
									<th>Giá trị thẻ</th>
									<th>Kết quả nạp</th>
									<th>Nội dung</th>
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
	<script src="js/dataTables.buttons.min.js"></script>
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
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>






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

		$(document).ready(function() {
			console.log("yeah loading");
			editor = new $.fn.dataTable.Editor({
				ajax : "${pageContext.request.contextPath}/getCardListByProvider",
				table : "#example",
				idSrc : 'id',
				fields : [ {
					label : "Id",
					name : "src_msg"
				}, {
					label : "Serial",
					name : "serial"
				}, {
					label : "PIN",
					name : "pin",
				}, {
					label : "Thời gian",
					name : "receivetime",
					type : "datetime",
					format:"YYYY-MM-DD"
				}, {
					label : "Thẻ hợp lệ",
					name : "cardavailable"
				}, {
					label : "Giá trị thẻ",
					name : "cardvalue"
				}, {
					label : "Kết quả nạp",
					name : "cardprocesssuccess"
				}, {
					label : "Nội dung kết quả nạp",
					name : "cardprocessresult"
				} ]
			});

			$('#example').DataTable({
				dom : "Bfrtip",
				ajax : "${pageContext.request.contextPath}/getCardListByProvider",
				order : [ [ 1, 'asc' ] ],
				columns : [ {
					data : "src_msg",
				}, {
					data : "serial",
				}, {
					data : "pin"
				}, {
					data : "receivetime",
					type : "datetime",
					format:"YYYY-MM-DD hh:mm"
				}, {
					data : "cardavailable",
				  	render: function ( data, type, row ) {
					        return data=="1"?"Thẻ hợp lệ":"Thẻ không hợp lệ";
					    }
										
				}, {
					data : "cardvalue",
					render : $.fn.dataTable.render.number(',', '.', 0, 'VNĐ ')
				}, {
					data : "cardprocesssuccess",
					render: function ( data, type, row ) {
				        return data=="1"?"Thành công":"Thất bại";
				    }
				}, {
					data : "cardprocessresult",
					render: function ( data, type, row ) {
		
				        return row.cardavailable==0?row.cardcheckresult:(!data?"":data);
				    }
				} ],
				select : {
					style : 'os',
					selector : 'td:first-child'
				},
				buttons : [ {
					extend : 'collection',
					text : 'Export',
					buttons : [ 'copy', 'excel', 'csv', 'pdf' ]
				} ]
			});

			
			 
		    $('input.global_filter').on( 'keyup click', function () {
		        filterGlobal();
		    } );
		 
		    $('input.column_filter').on( 'keyup click', function () {
		        filterColumn( $(this).parents('tr').attr('data-column') );
		    } );
		});
		
		function filterGlobal () {
		    $('#example').DataTable().search(
		        $('#global_filter').val(),
		        $('#global_regex').prop('checked'),
		        $('#global_smart').prop('checked')
		    ).draw();
		}
		 
		function filterColumn ( i ) {
		    $('#example').DataTable().column( i ).search(
		        $('#col'+i+'_filter').val(),
		        $('#col'+i+'_regex').prop('checked'),
		        $('#col'+i+'_smart').prop('checked')
		    ).draw();
		}
		 
	</script>
</body>
</html>