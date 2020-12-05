<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
<title>약팔이 | 관리자페이지</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/vendor/linearicons/style.css">
<link rel="stylesheet"
	href="resources/vendor/chartist/css/chartist-custom.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="resources/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="resources/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/img/favicon.png">

</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/yak_erp/"><img src="resources/img/logo-dark.png"
					alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control"
							placeholder="검색할 내용을 입력해주세요"> <span
							class="input-group-btn"><button type="button"
								class="btn btn-primary">검색</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro"
						href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro"
						title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i>
						<span>UPGRADE TO PRO</span></a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">


						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="resources/img/user.png"
								class="img-circle" alt="Avatar"> <span>Samuel</span> <i
								class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My
											Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul></li>
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/yak_erp/" class=""><i
								class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li><a href="#subPages" data-toggle="collapse"
							class="collapsed">
							<i class="lnr lnr-linearicons"></i> <span>비지니스</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlist" class="active"><i class="lnr lnr-cog"></i>
								<span>콘텐츠관리</span></a></li>
						<li><a href="#subPagess" data-toggle="collapse"
							class="collapsed"><i class="lnr lnr-file-empty"></i> <span>회원관리</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/mlist" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/Banner" class="">문의내역</a></li>
									<li><a href="/yak_erp/b_quesList" class="">문자발송내역</a></li>
								</ul>
							</div></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					

					<div class="col-md-12">
						<!-- TABLE HOVER -->




						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">의약품 상세정보</h3>
							</div>
							<div class="panel-footer">

								<span class="pull-right"> <a href="edit.html"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i></a> <a
									data-original-title="Remove this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-danger"
									onClick="self.close();"><i
										class="glyphicon glyphicon-remove"></i></a>
								</span>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-3 col-lg-2 " align="center">
										<img width="80%;" style="margin-top: 10px;" alt="User Picture"
											src="resources/img/default_user.png"
											class="img-circle img-responsive">
									</div>

									<div class=" col-md- col-lg-10 ">
										<table class="table table-user-information"style="width:100%;">
											<tbody>
												<tr>
													<td style="width:20%">약품명:</td>
													<td>가나폴로연질캡슐</td>
												</tr>
												<tr>
													<td>부작용:</td>
													<td>구역,구토,가려움증 등 부작용 주의</td>
												</tr>

												<tr>
												<tr>
												</tr>
												<tr>
													<td style="width:20%">용법/용량:</td>
													<td>성인 1일 2회, 1회 1캡슐 복용</td>
												</tr>
												<tr>
													<td style="width:20%">주의사항:</td>
													<td>2. 다음 환자에는 투여하지 말 것. 1) 과칼슘혈증 (hypercalciumia : 혈액 중에 칼슘이 과잉으로 존재하는 상태)환자, 유육정용, 신질환 환자 2) 이 약 및 이 약에 포함된 성분에 과민증이 있는 환자 3) 3개월 미만의 영아(젖먹이) 4) 대두유에 과민하거나 알레르기 병력이 있는 환자 5) 콩 또는 땅콩에 과민증이 있는 환자</td>
												</tr>
												<tr>
													<td style="width:20%">효능:</td>
													<td>1. 다음 경우의 비타민 A, B1, B2, C, D의 보급 - 육체피로, 임신ㆍ수유기, 병중ㆍ병후(병을 앓는 동안이나 회복 후)의 체력 저하 시, 발육기, 노년기 2. 뼈ㆍ이의 발육 불량 3. 구루병의 예방</td>
												</tr>
												<tr>
													<td style="width:20%">성분:</td>
													<td>Ascorbic Acid　아스코르브산　75mg Cholecalciferoll Oil　콜레칼시페롤유　400IU Nicotinamide　니코틴산아미드　20mg Retinol Palmitate Oil　레티놀팔미테이트유　500IU Riboflavin　리보플라빈　3mg Thiamine Hydrochloride　티아민염산염　2mg</td>
												</tr>
												<tr>
													<td style="width:20%">조회수:</td>
													<td>55</td>
												</tr>

											</tbody>
										</table>

										<!--   <a href="#" class="btn btn-primary">My Sales Performance</a>
                  <a href="#" class="btn btn-primary">Team Sales Performance</a>-->

									</div>
								</div>
							</div>


						</div>

						
						<!-- END TABLE HOVER -->
					</div>
				</div>


				
			</div>
		</div>
		<!-- END MAIN CONTENT -->
	</div>

	<!-- END MAIN -->
	<div class="clearfix"></div>
	<footer>
		<div class="container-fluid">
			<p class="copyright">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/scripts/klorofil-common.js"></script>

</body>

</html>
