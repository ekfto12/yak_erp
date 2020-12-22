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
<jsp:include page="../reference/header.jsp" />
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
	<jsp:include page="../reference/header.jsp" />
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
		
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner?num=1" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div>
						</li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
						<li>
							<a href="#subPagess" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>회원관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/mlistpage?num=1" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/m_quesList?num=1" class="">문의내역</a></li>
									<li><a href="page-lockscreen.html" class="">문자발송내역</a></li>
								</ul>
							</div>
						</li>
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
					<h3 class="page-title">기업 회원 등록</h3>

					<div class="col-md-8"
						style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->




						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">기업 회원 문의 등록</h3>
							</div>
							<div class="panel-footer">

							<!-- 
								<span class="pull-right"> <a href="edit.html"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i></a> <a
									data-original-title="Remove this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-danger"
									onClick="self.close();"><i
										class="glyphicon glyphicon-remove"></i></a>
								</span>
								-->
							</div>
							<div class="panel-body">
							<form method="post" >
								<div class="row">
								

									<div class=" col-md- col-lg-12 ">
										<table class="table table-user-information"style="width:100%;">
											<tbody>
												<tr>
													<td>제목:</td>
													<td><input type="text" class="form-control" id="subject" name="subject" value="${bq_view.subject}"></td>
													<tr>
													<td>기업명:
													<td><input type="text" class="form-control" id="company_name" name="company_name" value="${bq_view.company_name}" ></td>
													</tr>
							
													<tr>
													<td>내용:</td>
													<td><textarea class="form-control" id="question" name="question"  rows="4" >${bq_view.question}</textarea></td>
													

												</tr>
									
											</tbody>
										</table>
									
									
									<p class="demo-button" align=right>
									<button type="submit" class="btn btn-default"
										>수정 완료</button>
										</p>
										</form>
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
