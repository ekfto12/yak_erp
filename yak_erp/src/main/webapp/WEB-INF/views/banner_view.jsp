<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
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
<link rel="icon" type="image/png" sizes="96x96" href="picture/img/favicon.png">

<style>
.profile-header .profile-main {
    
    background-image: url("/picture${banner.img_dirr}");
     }
</style>

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
									<li><a href="/yak_erp/blist" class="">기업정보조회</a></li>
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
					<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left" style="width:100%; font-size:20px;">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main" >
										<img src="/picture${banner.img_dirr}" class="img-circle" alt="Avatar">
										<h3 class="name">Samuel Gold</h3>
										<span class="online-status status-available">Available</span>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-4 stat-item">
												45 <span>클릭 수</span>
											</div>
											<div class="col-md-4 stat-item">
												15 <span>상태</span>
											</div>
											<div class="col-md-4 stat-item">
												${banner.price} <span>금액</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail" style="width: 50%; position: absolute; left:25%;">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
											<li>배너명 <span>${banner.ban_name}</span></li>
											<li>기업명 <span>${banner.company_name}</span></li>
											<li>배너 등록일 <span>${banner.ban_start}</span></li>
											<li>배너종료일 <span>${banner.ban_exit}</span></li>
											
											<li>배너 위치 
											<c:if test="${banner.state == null}">
											<span>기간 종료</span>
											</c:if>
											<c:if test="${banner.state != null}">
											<span>${banner.state}</span>
											</c:if>
											</li>
											
										</ul>
									</div>
									
									<div class="profile-info">
										<h4 class="heading">코멘트</h4>
										<p>Interactively fashion excellent information after distinctive outsourcing.</p>
									</div>
									<div class="text-center"><a href="/yak_erp/banner_edit?ban_num=${banner.ban_num}" class="btn btn-primary">수정</a></div>
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							
							<!-- END RIGHT COLUMN -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		
		
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="resources/scripts/klorofil-common.js"></script>
</body>

</html>
