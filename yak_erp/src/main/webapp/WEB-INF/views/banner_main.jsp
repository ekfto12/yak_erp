<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">

<head>
<title>약팔이 | 관리자페이지</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/vendor/linearicons/style.css">
<link rel="stylesheet" href="resources/vendor/chartist/css/chartist-custom.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="resources/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="resources/css/demo.css">
<!-- GOOGLE FONTS -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76" href="resources/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96" href="resources/img/favicon.png">
<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.js"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/yak_erp/">
					<img src="resources/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo">
				</a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="검색할 내용을 입력해주세요">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">검색</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank">
						<i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span>
					</a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">


						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="resources/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">
										<i class="lnr lnr-user"></i> <span>My Profile</span>
									</a></li>
								<li><a href="#">
										<i class="lnr lnr-envelope"></i> <span>Message</span>
									</a></li>
								<li><a href="#">
										<i class="lnr lnr-cog"></i> <span>Settings</span>
									</a></li>
								<li><a href="#">
										<i class="lnr lnr-exit"></i> <span>Logout</span>
									</a></li>
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
						<li><a href="/yak_erp/" class="">
								<i class="lnr lnr-home"></i> <span>Dashboard</span>
							</a></li>
						<li><a href="#subPages" data-toggle="collapse" class="active">
								<i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i>
							</a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner" class="active">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlist" class="">
								<i class="lnr lnr-cog"></i> <span>콘텐츠관리</span>
							</a></li>
						<li><a href="#subPagess" data-toggle="collapse" class="collapsed">
								<i class="lnr lnr-file-empty"></i> <span>회원관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i>
							</a>
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/mlist" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/m_quesList" class="">문의내역</a></li>
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
					<h3 class="page-title">배너 관리</h3>

					<div class="col-md-8" style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->









						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">메인 상단 배너 등록</h3>
							</div>

							<div class="panel-body">
								<div class="row">

									<form class="form-auth-small" action="bannerin" method="post" enctype="multipart/form-data">

										<div class="form-group">
											<p style="padding-left: 10px">배너명</p>
											<input type="text" class="form-control" name="ban_name" id ="ban_name"size="10px" placeholder="" maxlength="15" />

										</div>
										<div class="form-group">
											<p style="padding-left: 10px">기업명</p>
											<input type="text" class="form-control" name="company_name" id="company_name"size="10px" placeholder="" />

										</div>

										<div class="form-group">
											<p style="padding-left: 10px">배너 등록일</p>
											<input class="form-control" type="date" name="ban_start" id="ban_start" placeholder="생년월일" />

										</div>
										<div class="form-group">
											<p style="padding-left: 10px">배너 종료일</p>
											<input class="form-control" type="date" name="ban_exit" id="ban_exit"placeholder="생년월일" />


										</div>

										<div class="form-group">
											<p style="padding-left: 10px">금액</p>
											<input type="text" class="form-control" name="price" id="price"size="10px" placeholder="" />

										</div>

										<div class="form-group">
											<p style="padding-left: 10px">이미지 경로</p>
											<input type="text" class="form-control" size="10px" placeholder="" />

										</div>
										<div class="panel-footer">

											
											<div class="inputArea">
												<label for="gdsImg">배너</label>
												<input type="file" id="gdsImg" name="file" />
												<div class="select_img">
													<img src="" />
												</div>

												<script>
													$("#gdsImg")
															.change(
																	function() {
																		if (this.files
																				&& this.files[0]) {
																			var reader = new FileReader;
																			reader.onload = function(
																					data) {
																				$(
																						".select_img img")
																						.attr(
																								"src",
																								data.target.result)
																						.width(
																								500);
																			}
																			reader
																					.readAsDataURL(this.files[0]);
																		}
																	});
												</script>
												<%=request.getRealPath("/") %>
											</div>
										</div>
										<button type="submit" class="btn btn-primary btn-lg btn-block">등록하기</button>
									</form>
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
				Shared by <i class="fa fa-love"></i>
				<a href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/scripts/klorofil-common.js"></script>

</body>

</html>
