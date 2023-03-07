<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Team 3</title>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Custom fonts for this template-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="https://kit.fontawesome.com/a31e2023c3.css"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a31e2023c3.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#addBtn").click(function() {

			var vac_name = $("#vac_name").val();
			var vac_price = $("#vac_price").val();
			var vac_cycle = $("#vac_cycle").val();

			if (vac_name == "") {
				alert("접종명을 입력해주세요.");
				$("#vac_name").focus();
				return false;
			}

			if (vac_price == "") {
				alert("접종 가격을 입력해주세요.");
				$("#vac_price").focus();
				return false;
			}

			vacAddFrm.submit();

		});

	});
</script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="../bar/sideBar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<%@ include file="../bar/topBar.jsp"%>


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h5 class="h5 mb-4 text-gray-900">
						<b>데이터 관리</b>
					</h5>


					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<ul class="nav nav-tabs">
								<li class="nav-item"><a class="nav-link"
									aria-current="page" href="/medicine" tabindex="0">약</a></li>
								<li class="nav-item"><a class="nav-link" href="/inspection">검사</a></li>
								<li class="nav-item"><a
									class="nav-link active font-weight-bolder" href="/vaccine">접종</a></li>
								<li class="nav-item"><a class="nav-link" href="/petType">견종</a></li>
							</ul>
						</div>

						<div class="card-body">
							<h4 class="m-0 font-weight-bold text-primary mb-3">Vaccine</h4>
							<div class="row justify-content-center">
								<!-- 데이터 추가 -->
								<div class="border-right col-6 col-md-6"
									style="padding: 10px; height: 570px;">
									<form id="vacAddFrm" name="vacAddFrm" action="/vaccineAdd"
										method="post">
										<ul class="list-group list-group-flush">
											<li class="list-group-item">
												<div class="row">
													<div class="col-md-3" style="line-height: 38px;">Name</div>
													<div class="col-md-9">
														<input type="text" class="form-control" id="vac_name"
															name="vac_name">
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="row">
													<div class="col-md-3 " style="line-height: 40px;">Price</div>
													<div class="col-md-9">
														<input type="text" class="form-control" id="vac_price"
															name="vac_price">
													</div>
												</div>

											</li>
											<li class="list-group-item mb-4">
												<div class="row">
													<div class="col-md-3 " style="line-height: 40px;">Cycle</div>
													<div class="col-md-3">
														<select class="form-control" id="vac_cycleY" name="vac_cycleY">
															<option value="" selected disable hidden>Year</option>
															<option value="1Y">1Y</option>
															<option value="2Y">2Y</option>
															<option value="3Y">3Y</option>
														</select>
													</div>
													<div class="col-md-3">
														<select class="form-control" id="vac_cycleM" name="vac_cycleM">
															<option value="" selected disable hidden>Month</option>
															<%
															for (int i = 1; i <= 12; i++) {
															%>
															<option value="<%=i %>M">
																<%=i%>M
															</option>
															<%
															}
															%>
														</select>
													</div>
													<div class="col-md-3">
														<select class="form-control" id="vac_cycleW" name="vac_cycleW">
															<option value="" selected disable hidden>Week</option>
															<%
															for (int i = 1; i <= 5; i++) {
															%>
															<option value="<%=i %>W">
																<%=i%>W
															</option>
															<%
															}
															%>
														</select>
													</div>
												</div>
											</li>


										</ul>


										<div class="text-center col-lg-12 col-12">
											<button type="button" id="addBtn"
												class="btn btn-primary col-8 ">저장</button>
										</div>
									</form>
								</div>

								<!-- 리스트 출력 -->
								<div class="col-6 col-md-6"
									style="overflow: auto; height: 570px; padding: 10px;">

									<div class="input-group mb-3">
										<select class="form-control col-md-3">
											<option>이름</option>
											<option>가격</option>
										</select> <input type="text" class="form-control border-gray col-md-9"
											placeholder="검색어를 입력하세요">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
									<div class="table-responsive">
										<table class="table table-sm table-bordered text-center"
											id="dataTable" width="100%" cellspacing="0">
											<thead>
												<tr class="bg-gray-200">
													<th class="col-1">번호</th>
													<th class="col-2">이름</th>
													<th class="col-2">가격</th>
													<th class="col-2">접종 주기</th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${vaccineList }" var="vl">
													<tr>
														<td>${vl.vac_no }</td>
														<td>${vl.vac_name }</td>
														<td>${vl.vac_price }</td>
														<td>${vl.vac_cycleY }${vl.vac_cycleM }${vl.vac_cycleW }</td>
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



				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<%@ include file="../bar/footer.jsp"%>

			<%@ include file="../bar/logoutModal.jsp"%>






			<!-- Bootstrap core JavaScript-->
			<script src="vendor/jquery/jquery.min.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="js/sb-admin-2.min.js"></script>
</body>

</html>
