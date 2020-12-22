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
<jsp:include page="../reference/header.jsp" />
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
<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.js"></script>
<script>
   
    $(function(){
		$('#btn-remove').click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				self.location.href = "bannerdrop?ban_num=${banner.ban_num}";
			}
		});
	});
</script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/yak_erp/" class="">
								<i class="lnr lnr-home"></i> <span>ERP프로젝트</span>
							</a></li>
						<li><a href="#subPages" data-toggle="collapse" class="active">
								<i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i>
							</a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner?num=1" class="active">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class="">
								<i class="lnr lnr-cog"></i> <span>콘텐츠관리</span>
							</a></li>
						<li><a href="#subPagess" data-toggle="collapse" class="collapsed">
								<i class="lnr lnr-file-empty"></i> <span>회원관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i>
							</a>
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/mlistpage?num=1" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/m_quesList?num=1" class="">문의내역</a></li>
									<li><a href="/yak_erp/smsList" class="">문자발송내역</a></li>
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
										<img src="/picture${banner.img_dir}" style="width:50%;" alt="Avatar">
										<h3 class="name">${banner.ban_name}</h3>
										<c:if test="${banner.state eq 'main'}">
										<span class="online-status status-available">메인화면 사용중</span>
										</c:if>
										<c:if test="${banner.state eq 'search'}">
										<span class="online-status status-available">검색창 사용중</span>
										</c:if>
										
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
										<p>코멘트가 없습니다</p>
									</div>
									<div class="text-center"><a href="/yak_erp/banner_edit?ban_num=${banner.ban_num}" class="btn btn-primary"><i class="fa fa-refresh"></i>수정</a>
										<button type="button" id="btn-remove" class="btn btn-danger"><i class="fa fa-trash-o"></i>삭제</button>
									</div>
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
