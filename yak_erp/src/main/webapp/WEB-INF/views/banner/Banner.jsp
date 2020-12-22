<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="icon" type="image/png" sizes="96x96" href="resources/img/favicon.png">

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
					<h3 class="page-title">배너 관리</h3>

					<div class="col-md-8" style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->





						<script type="text/javascript">
							$(document).ready(
									function() {
										$("a[name='file-delete']").on("click",
												function(e) {
													e.preventDefault();
													deleteFile($(this));
												});
									})

							function addFile() {
								var str = "<div class='file-group'><input type='file' name='file'><a href='#this' name='file-delete'>삭제</a></div>";
								$("#file-list").append(str);
								$("a[name='file-delete']").on("click",
										function(e) {
											e.preventDefault();
											deleteFile($(this));
										});
							}

							function deleteFile(obj) {
								obj.parent().remove();
							}
						</script>

				

						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">메인 상단 배너</h3>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-8 col-lg-8 " align="center">
									<c:forEach items="${map.list}" var="row" varStatus="status">
									
									
									<c:if test="${row.state eq 'main'}">
									<a href="/yak_erp/banner_view?ban_num=${row.ban_num}">
                                <img width="80%;" style="margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="/picture${row.img_dirr}" class="img-circle img-responsive">
                        			</a>
                        			</c:if>
                        			
                        </c:forEach>
										
									</div>
									<div class="col-md-4 col-lg-4 " align="center">
									
										<div class="panel-footer">
										
											<span class="pull-right">
												
												<a href="/yak_erp/banner_main" style="margin-bottom: 30px; margin-top: 50px;" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning">
													<i class="glyphicon glyphicon-edit">배너등록</i>
												</a> <a href="/yak_erp/bannerdel?state=main" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger">
													<i class="glyphicon glyphicon-remove">배너삭제</i>
												</a>
											</span>
										</div>
									</div>

								</div>
							</div>


						</div>

						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">검색결과창 배너</h3>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-8 col-lg-8 " align="center">
									<c:forEach items="${map.list}" var="row">
									<c:if test="${row.state eq 'search'}">
									<a href="/yak_erp/banner_view?ban_num=${row.ban_num}">
										<img width="80%;" style="margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="/picture${row.img_dirr}" class="img-circle img-responsive">
										</a>
										</c:if>
                       				 </c:forEach>
									</div>
									<div class="col-md-4 col-lg-4 " align="center">
										<div class="panel-footer">

											<span class="pull-right"> <a href="/yak_erp/banner_search" style="margin-bottom: 30px; margin-top: 50px;" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning">
													<i class="glyphicon glyphicon-edit">배너등록</i>
												</a> <a href="/yak_erp/bannerdel?state=search" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger">
													<i class="glyphicon glyphicon-remove">배너삭제</i>
												</a>
											</span>
										</div>
									</div>

								</div>
							</div>


						</div>


						<!-- END TABLE HOVER -->
					</div>
				
				<div class="col-md-12">
						<!-- TABLE HOVER -->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">배너 리스트</h3>

							</div>
							<div class="panel-body">
								<div class="input-group"
									style="width: 40%; margin-left: auto; margin-right: 115px;">
									<input type="text" value="" class="form-control" name="keyword"
										placeholder="배너명 검색"> <span class="input-group-btn"><button
											type="button" class="btn btn-primary" id="searchBtn">검색</button></span>
								</div>
								<br /> <br />
								<table class="table table-hover"
									style="width: 80%; text-align: center;">
									<thead>
										<tr>
											<th style="width: 10%; text-align: center;">번호</th>
											<th style="width: 50%; text-align: center;">배너명</th>
											<th style="width: 50%; text-align: center;">회사명</th>
										</tr>
									</thead>
									<c:forEach items="${listt}" var="listt">
										<tbody>
											<tr>
												<td>${listt.rnum}</td>
												<td style="color:blue;cursor: pointer;"
													onClick="location.href='banner_view?ban_num=${listt.ban_num}'">${listt.ban_name}</td>
												<td style="color:blue; cursor: pointer;"
												    onClick="location.href='Information?company_name=${listt.company_name}'">${listt.company_name}</td>

												<td></td>
											</tr>

										</tbody>
									</c:forEach>

								</table>
								<br />
								<p class="demo-button" align=right>
									<button type="button" class="btn btn-default"
										onclick="location.href='business_add'">배너 등록</button>

								</p>
								<div align="center">
									<c:if test="${page.prev}">
										<span>[ <a
											href="/yak_erp/Banner?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a>
											]
										</span>
									</c:if>

									<c:forEach begin="${page.startPageNum}"
										end="${page.endPageNum}" var="num">
										<span> <c:if test="${select != num}">
												<a
													href="/yak_erp/Banner?num=${num}${page.searchTypeKeyword}">${num}</a>
											</c:if> <c:if test="${select == num}">
												<b>${num}</b>
											</c:if>

										</span>
									</c:forEach>

									<c:if test="${page.next}">
										<span>[ <a
											href="/yak_erp/Banner?num=${page.endPageNum+1}${page.searchTypeKeyword}">다음</a>
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
				Shared by <i class="fa fa-love"></i>
				<a href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/scripts/klorofil-common.js"></script>
<script>
		document.getElementById("searchBtn").onclick = function() {

			let keyword = document.getElementsByName("keyword")[0].value;
			location.href = "/yak_erp/Banner?num=1" + "&keyword=" + keyword;

			console.log(keyword)
		};
	</script>
</body>

</html>
