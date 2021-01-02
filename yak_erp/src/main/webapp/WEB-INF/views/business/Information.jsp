<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/img/favicon.png">
<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.js"></script>
<script>
   
    $(function(){
		$('#btn-remove').click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				self.location.href = "business_del?company_name=${business.company_name}";
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
						<li><a href="/yak_erp/" class=""><i class="lnr lnr-home"></i> <span>ERP 프로젝트</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="active">기업정보조회</a></li>
<<<<<<< HEAD:yak_erp/src/main/webapp/WEB-INF/views/Information.jsp
									<li><a href="/yak_erp/Banner" class="">배너관리</a></li>
=======
									<li><a href="/yak_erp/Banner?num=1" class="">배너관리</a></li>
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54:yak_erp/src/main/webapp/WEB-INF/views/business/Information.jsp
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
<<<<<<< HEAD:yak_erp/src/main/webapp/WEB-INF/views/Information.jsp
									<li><a href="/yak_erp/b_quesList" class="">문자발송내역</a></li>
=======
									<li><a href="/yak_erp/smsList" class="">문자발송내역</a></li>
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54:yak_erp/src/main/webapp/WEB-INF/views/business/Information.jsp
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
					<h3 class="page-title">기업 정보조회</h3>

					<div class="col-md-8"
						style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->




						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">기업 정보</h3>
							</div>
							<div class="panel-footer">

								<span class="pull-right"> <a href="/yak_erp/business_edit?company_name=${business.company_name}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i>수정하기</a> 
								</span>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-3 col-lg-3 " align="center">
										<img width="80%;" style="margin-top: 10px;" alt="User Picture"
											src="resources/img/default_user.png"
											class="img-circle img-responsive">
									</div>

									<div class=" col-md- col-lg-6 ">
										<table class="table table-user-information"style="width:100%;">
											<tbody>
												<tr>
													<td>기업명:</td>
													<td>${business.company_name}</td>
												</tr>
												<tr>
													<td>대표자명:</td>
													<td>${business.owner_name}</td>
												</tr>

												<tr>
												<tr>
												</tr>
												<tr>
													<td>기업주소:</td>
													<td>${business.company_addr}</td>
												</tr>
												<tr>
													<td>비고:</td>
													<td>${business.c_comment}</td>

												</tr>



											</tbody>
										</table>

										<!--   <a href="#" class="btn btn-primary">My Sales Performance</a>
                  <a href="#" class="btn btn-primary">Team Sales Performance</a>-->

									</div>
								</div>
							</div>


						</div>

						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">담당자 정보</h3>
							</div>
							
							<div class="panel-body">
								<div class="row">
									<div class="col-md-3 col-lg-3 " align="center">
										<img width="80%;" style="margin-top: 10px;" alt="User Picture"
											src="resources/img/default_user.png"
											class="img-circle img-responsive">
									</div>
									<div class=" col-md- col-lg-6 ">
										<table class="table table-user-information"style="width:100%;">
											<tbody>
												<tr>
													<td>담당자ID:</td>
													<td>${business.manager_id}</td>
												</tr>
												<tr>
													<td>담당자명:</td>
													<td>${business.manager_name}</td>
												</tr>

												<tr>
												<tr>
												</tr>
												<tr>
													<td>연락처:</td>
													<td>${business.manager_name}</td>
												</tr>
												<tr>
													<td>이메일:</td>
													<td>${business.email}</td>

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
					
					<div class="col-md-8"
					style="margin-left: 150px; margin-right: auto;">

					<div class="panel panel-info">
						<div class="panel-heading">
								<h3 class="panel-title">배너 거래정보</h3>
						</div>
						<div class="panel-footer">

								<span class="pull-right"> <a href="/yak_erp/business_edit?company_name=${business.company_name}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i>수정하기</a> 
								</span>
							</div>
						<div class="panel-body">

							<table class="table table-hover"style="width:100%;">
								<thead>
									<tr>
										<th>배너명</th>
										<th>등록기간</th>
										<th>종료기간</th>
										<th>배너위치</th>
										<th>클릭수</th>
										<th>금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="/yak_erp/banner_view?ban_num=${banner.ban_num}">${banner.ban_name} </a></td>
										<td>${banner.ban_start}</td>
										<td>${banner.ban_exit}</td>
										<td>${banner.state}</td>
										<td>${banner.ban_name}</td>
										<td><fmt:formatNumber type="number" value="${banner.price}"/>원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div>
					
					<div class="col-md-8"
					style="margin-left: 150px; margin-right: auto;">

					<div class="panel panel-info">
						<div class="panel-heading">
								<h3 class="panel-title">문의내역</h3>
						</div>
						<div class="panel-body">

							<table class="table table-hover"style="width:100%;">
								<thead>
									<tr>
										<th>제목</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
								
								
								<c:if test="${empty member_ff}">
								<tr>
                  				<td>문의내역이 존재하지 않습니다</td>
                  				</tr>
               				</c:if>
               				
               				
								<c:forEach var = "member_ff" items="${member_ff}">
									<tr>
							<c:if test="${empty qu}">
                  				<td>문의내역이 존재하지 않습니다</td>
               				</c:if>
               				 
							<c:if test="${!empty qu}">
							
                  				<td><a href="/yak_erp/bq_view?bqno=${member_ff.bqno}">${member_ff.subject}</a></td>
                  				
               				</c:if> 
										
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
					<div class="text-center"><button type="button" id="btn-remove" class="btn btn-danger"><i class="fa fa-trash-o"></i>삭제하기</button></div>
					</div>
				
				</div>
					<div class="col-md-8"
					style="margin-left: 150px; margin-right: auto;">

					<div class="panel panel-info">
						<div class="panel-heading">
								<h3 class="panel-title">비고</h3>
						</div>
						<div class="panel-body">

							<table class="table table-hover"style="width:100%;">
								<thead>
									<tr>
										<th>내용</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>개발중</td>
										<td style="width:30%">2020-11-11</td>
									</tr>
									<tr class="space1">
									<td></td><td></td>
									</tr>
									<tr>
										<td colspan="2"><input type="text" height:50px; class="form-control" placeholder="내용" ></td>
										
									</tr>
								</tbody>
							</table>
						</div>
					</div>

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
