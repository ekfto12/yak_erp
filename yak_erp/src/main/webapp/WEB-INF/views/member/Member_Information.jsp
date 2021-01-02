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
				self.location.href = "member_del?member_id=${member.member_id}";
			}
		});
	});
</script>
</head>
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
						<li><a href="/yak_erp/" class=""><i
								class="lnr lnr-home"></i> <span>ERP프로젝트</span></a></li>
						<li><a href="#subPages" data-toggle="collapse"
							class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse">
								<ul class="nav">
<<<<<<< HEAD:yak_erp/src/main/webapp/WEB-INF/views/Member_Information.jsp
									<li><a href="page-profile.html" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i class="lnr lnr-cog"></i>
								<span>콘텐츠관리</span></a></li>
=======
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner?num=1" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54:yak_erp/src/main/webapp/WEB-INF/views/member/Member_Information.jsp
						<li><a href="#subPagess" data-toggle="collapse"
							class="active"><i class="lnr lnr-file-empty"></i> <span>회원관리</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse in ">
								<ul class="nav">
									<li><a href="/yak_erp/mlistpage?num=1" class="active">회원이력조회</a></li>
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
					<h3 class="page-title">회원 이력조회</h3>

					<div class="col-md-8"
						style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->




						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">회원 상세정보</h3>
							</div>
							<div class="panel-footer">

								<span class="pull-right"> <a href="/yak_erp/member_edit?member_id=${member.member_id}"
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
													<td>회원ID:</td>
													<td>${member.member_id}</td>
												</tr>
												<tr>
													<td>회원명:</td>
													<td>${member.member_name}</td>
												</tr>

												<tr>
												<tr>
												</tr>
												<tr>
													<td>생년월일:</td>
													<td>${member.member_born_date}</td>
												</tr>
												<tr>
													<td>연락처</td>
													<td>${member.member_phone}</td>

												</tr>
												<tr>
													<td>비고:</td>
													<td>${member.member_comment}</td>

												</tr>
												<tr>
													<td>가입일:</td>
													<td>${member.member_join_date}</td>
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
								<h3 class="panel-title">즐겨찾기 목록</h3>
						</div>
						<div class="panel-body">

							<table class="table table-hover"style="width:100%;">
								<thead>
									<tr>
										<th>약품명</th>
										
									</tr>
								</thead>
								<tbody>
								
								
								<c:if test="${empty member_f}">
								<tr>
                  				<td>즐겨찾는 의약품이 존재하지 않습니다</td>
                  				</tr>
               				</c:if>
               				
               				
								<c:forEach var = "member_f" items="${member_f}">
									<tr>
							<c:if test="${empty member_f}">
                  				<td>즐겨찾는 의약품이 존재하지 않습니다</td>
               				</c:if>
               				 
							<c:if test="${!empty member_f}">
							
                  				<td><a href="/yak_erp/drug_view?drug_name=${member_f.drug_name}">${member_f.drug_name}</a></td>
                  			
               				</c:if> 
										
									</tr>
									</c:forEach>
									
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
										
									</tr>
								</thead>
								<tbody>
								
								
								<c:if test="${empty qu}">
								<tr>
                  				<td>문의내역이 존재하지 않습니다</td>
                  				</tr>
               				</c:if>
               				
               				
								<c:forEach var = "qu" items="${qu}">
									<tr>
							<c:if test="${empty qu}">
                  				<td>문의내역이 존재하지 않습니다</td>
               				</c:if>
               				 
							<c:if test="${!empty qu}">
							
                  				<td><a href="/yak_erp/mq_view?qno=${qu.qno}">${qu.ques_subject}</a></td>
                  				
               				</c:if> 
										
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
					</div>

				</div>
					
					<div class="col-md-8"
					style="margin-left: 150px; margin-right: auto;">

					<div class="panel panel-info">
						<div class="panel-heading">
								<h3 class="panel-title">문자 발송내역</h3>
						</div>
						<div class="panel-body">

							<table class="table table-hover"style="width:100%;">
								<thead>
									<tr>
										<th>문자 발송내역</th>
										<th>발송일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>개발중</td>
										<td>개발중</td>
									</tr>
								</tbody>
							</table>
						</div>
						
					</div>
<div class="text-center"><button type="button" id="btn-remove" class="btn btn-danger"><i class="fa fa-trash-o"></i>삭제하기</button></div>
				</div>
					
				</div>


				
			</div>
		</div>
		<!-- END MAIN CONTENT -->
	</div>

	<!-- END MAIN -->
	<div class="clearfix"></div>
	
	
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
