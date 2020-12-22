<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<title>약팔이 | 기업 리스트</title>
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
		
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/yak_erp/" class=""> <i class="lnr lnr-home"></i>
								<span>ERP프로젝트</span></a></li>
						<li><a href="#subPages" data-toggle="collapse" class="active">
								<i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i
								class="icon-submenu lnr lnr-chevron-left"> </i>
						</a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="active">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner?num=1" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i
								class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
						<li><a href="#subPagess" data-toggle="collapse"
							class="collapsed"><i class="lnr lnr-file-empty"></i> <span>회원관리</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
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
					<h3 class="page-title">비즈니스</h3>

					<div class="col-md-12">
						<!-- TABLE HOVER -->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">기업 리스트</h3>

							</div>
							<div class="panel-body">
								<div class="input-group"
									style="width: 40%; margin-left: auto; margin-right: 115px;">
									<input type="text" value="" class="form-control" name="keyword"
										placeholder="기업명 검색"> <span class="input-group-btn"><button
											type="button" class="btn btn-primary" id="searchBtn">검색</button></span>
								</div>
								<br /> <br />
								<table class="table table-hover"
									style="width: 80%; text-align: center;">
									<thead>
										<tr>
											<th style="width: 10%; text-align: center;">체크</th>
											<th style="width: 10%; text-align: center;">번호</th>
											<th style="width: 50%; text-align: center;">기업명</th>
											<th style="width: 50%; text-align: center;">담당자ID</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="list">
										<tbody>
											<tr>
												<td><input type="checkbox" value="${list.company_name}" name="chk[]"></td>
												<td>${list.rnum}</td>
												<td style="color:blue; cursor: pointer;"
													onClick="location.href='Information?company_name=${list.company_name}'">${list.company_name}</td>
												<td>${list.manager_id}</td>

												<td></td>
											</tr>

										</tbody>
									</c:forEach>

								</table>
								<br />
							
								<p class="demo-button" align=right>
									<button type="button" class="btn btn-default"
										onclick="location.href='business_add'">기업 등록</button>
								</p>
								<div align="center">
									<c:if test="${page.prev}">
										<span>[ <a
											href="/yak_erp/blistpage?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a>
											]
										</span>
									</c:if>

									<c:forEach begin="${page.startPageNum}"
										end="${page.endPageNum}" var="num">
										<span> <c:if test="${select != num}">
												<a
													href="/yak_erp/blistpage?num=${num}${page.searchTypeKeyword}">${num}</a>
											</c:if> <c:if test="${select == num}">
												<b>${num}</b>
											</c:if>

										</span>
									</c:forEach>

									<c:if test="${page.next}">
										<span>[ <a
											href="/yak_erp/blistpage?num=${page.endPageNum+1}${page.searchTypeKeyword}">다음</a>
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
			location.href = "/yak_erp/blistpage?num=1" + "&keyword=" + keyword;

			console.log(keyword)
		};
	</script>
</body>

</html>
