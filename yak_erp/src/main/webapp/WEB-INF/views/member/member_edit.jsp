<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!-- LeeJaeWon -->
<!doctype html>
<html lang="en">

<head>
	<title>약팔이  | 관리자페이지</title>
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
	<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.js"></script>
	
	<style>
/* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
	/* 아이디가 동일한 경우 */
	.id_input_re_3{
		color : blue;
		display : none;
	}

</style>
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
									<li><a href="/yak_erp/smsList" class="">문자발송내역</a></li>
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
					<h3 class="page-title">기업 정보</h3>

					<div class="col-md-8"
						style="margin-left: 150px; margin-right: auto;">
						<!-- TABLE HOVER -->




						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">기업 정보 수정</h3>
							</div>
							
							<div class="panel-body">
								<div class="row">
								

									<div class=" col-md- col-lg-12 ">
									<form class="form-auth-small" action="member_update" method="post">
										<table class="table table-user-information"style="width:100%;">
											<tbody>
												<tr>
													<td>아이디:</td>
													<td><input type="text" value="${member.member_id}" name="member_id" id ="member_id" class="form-control" placeholder="member_id">
													<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
													<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
													<span class="id_input_re_3">동일한 아이디입니다.</span></td>
													<td>비밀번호:</td>
													<td><input type="password" value="${member.member_pw}" name="member_pw" id ="member_pw" class="form-control" placeholder="member_pw"></td>
												</tr>
												<tr>
													<td>이름:</td>
													<td><input type="text" value="${member.member_name}" name="member_name" id ="member_name" class="form-control" placeholder="member_name"></td>
													<td>생년월일:</td>
													<td><input type="date" value="${member.member_born_date}" name="member_born_date" id ="member_born_date" class="form-control" placeholder="member_born_date"></td>
												</tr>

												<tr>
												<tr>
												</tr>
												<tr>
													<td>가입일:</td>
													<td><input type=date value="${member.member_join_date}" name="member_join_date" id ="member_join_date" class="form-control" placeholder="member_join_date"></td>
													<td>연락처:</td>
													<td><input type="text" value="${member.member_phone}" name="member_phone" id ="member_phone" class="form-control" placeholder="member_phone"></td>
												</tr>
												<tr>
													<td>비고:</td>
													<td><input type="text" value="${member.member_comment}" name="member_comment" id ="member_comment" class="form-control" placeholder="member_comment"></td>
													
												</tr>
											</tbody>
											
										</table>
										<button type="submit" id="edit" id="edit" class="btn btn-primary btn-lg btn-block">수정하기</button>
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
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
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
	<script>
$('#member_id').on("propertychange change keyup paste input", function(){

	var memberId = $('#member_id').val();			// .id_input에 입력되는 값
	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

	$.ajax({
		type : "post",
		url : "/yak_erp/memberIdChk",
		data : data,
		success : function(result){
			if(result != 'fail'){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display", "none");	
				$('.id_input_re_3').css("display", "none");	
				$('#edit').css("display", "inline-block");		
			} 
			else if(memberId == '${member.member_id}'){
				$('.id_input_re_1').css("display","none");
				$('.id_input_re_2').css("display", "none");		
				$('.id_input_re_3').css("display", "inline-block");	
				$('#edit').css("display", "inline-block");
				}
			else if(result == 'fail') {
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display", "none");	
				$('.id_input_re_3').css("display", "none");	
				$('#edit').css("display", "none");				
			}
			
		}// success 종료
	}); // ajax 종료	

});// function 종료
</script>
</body>

</html>
