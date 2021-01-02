<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<title>약팔이 | 기업 문의 내역</title>
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
							placeholder="search.."> <span class="input-group-btn"><button
								type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
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
							class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/b_quesList" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i
								class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
						<li><a href="#subPagess" data-toggle="collapse"
							class="active"><i class="lnr lnr-file-empty"></i> <span>회원관리</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse in">
								<ul class="nav">
									<li><a href="/yak_erp/mlistpage?num=1" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/m_quesList?num=1" class="active">문의내역</a></li>
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
					<h3 class="page-title">회원</h3>

					<div class="col-md-12">
						<!-- TABLE HOVER -->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">회원(일반) 문의 내역</h3>

							</div>
							<div class="panel-body">
								<div class="input-group" style="width:40%; margin-left:auto; margin-right: 115px;">
									<input type="text" value="" class="form-control" name="keyword"
										placeholder="검색"> <span
										class="input-group-btn"><button type="button"
											class="btn btn-primary" id="searchBtn">검색</button></span>
								</div><br/><br/>
								<table class="table table-hover" style="width:80%; text-align:center;">
									<thead>
										<tr>
											<th style="width: 10%; text-align: center;">번호</th>
											<th style="width: 40%; text-align: center;">제목</th>
											<th style="width: 40%; text-align: center;">회원id</th>
											<th style="width: 10%; text-align: center;">상태</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="list">
										<tbody>
											<tr>
												<td>${list.qno}</td>
												<td><a href="/yak_erp/mq_view?qno=${list.qno}">${list.ques_subject}</a></td>
												<td>${list.member_id}</td>
												<td> 
												 
												<c:if test="${list.status == 1}"><span class="label label-success">처리 완료</span></c:if>
												<c:if test="${list.status == 0}"><span class="label label-danger">미 처리</span></c:if>
												
												</td>
												
														
												<td></td>
											</tr>

										</tbody>
									</c:forEach>

								</table>
								<br />
								<p class="demo-button" align=right>
									<button type="button" class="btn btn-default"
										onclick="location.href='/yak_erp/mq_write'">문의 등록</button>

								</p>
								<div align="center">
									<c:if test="${page.prev}">
										<span>[ <a
											href="/yak_erp/m_quesList?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a>
											]
										</span>
									</c:if>

									<c:forEach begin="${page.startPageNum}"
										end="${page.endPageNum}" var="num">
										<span> <c:if test="${select != num}">
												<a
													href="/yak_erp/m_quesList?num=${num}${page.searchTypeKeyword}">${num}</a>
											</c:if> <c:if test="${select == num}">
												<b>${num}</b>
											</c:if>

										</span>
									</c:forEach>

									<c:if test="${page.next}">
										<span>[ <a
											href="/yak_erp/m_quesList?num=${page.endPageNum+1}${page.searchTypeKeyword}">다음</a>
											]
										</span>
									</c:if>
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
	<script src="resources/scripts/klorofil-common.js"></script>
	<script>
		document.getElementById("searchBtn").onclick = function() {

			let keyword = document.getElementsByName("keyword")[0].value;
			location.href = "/yak_erp/m_quesList?num=1" + "&keyword=" + keyword;

			console.log(keyword)
		};
	</script>
	
	
</body>

</html>
