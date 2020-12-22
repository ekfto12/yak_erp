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
<link href="resources/css/search.css" rel="stylesheet" />

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
				self.location.href = "drug_del?drug_name=${drug.drug_name}";
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
						<li><a href="/yak_erp/" class=""><i
								class="lnr lnr-home"></i> <span>ERP프로젝트</span></a></li>
						<li><a href="#subPages" data-toggle="collapse"
							class="collapsed">
							<i class="lnr lnr-linearicons"></i> <span>비지니스</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="/yak_erp/Banner?num=1" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div></li>
						<li><a href="/yak_erp/dlistpage?num=1" class="active"><i class="lnr lnr-cog"></i>
								<span>콘텐츠관리</span></a></li>
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
			<div class="panel panel-info">
	<div class="container-fluid">
		<div class="col-md-3">
                        <div class="profile-img">
                            <img src="resources/drug/${drug.drug_name}.jpg" style="width:85%; padding-top:50px; margin-bottom:50px;" alt=""/>
                            <span class="pull-center"> <a href="/yak_erp/drug_edit?drug_name=${drug.drug_name}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-primary"><i
										class="glyphicon glyphicon-edit"></i>수정하기</a> 
										<button type="button" id="btn-remove" class="btn btn-danger"><i class="fa fa-trash-o"></i>삭제하기</button>
								</span>
                            
                            
                        </div>
                    </div>
		<div class="col-md-9" style="float:right;">
			
				<h2>${drug.drug_name}</h2> 
				
			<h3>
                ${drug.eng_name}
            </h3>
			
			
			
            
       <p class="proile-rating">조회수 : <span>${drug.d_hit}</span></p>

			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							전체 </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							효능·효과 </a>
						</li>
						<li>
							<a href="#tab_default_3" data-toggle="tab">
							용법·용량 </a>
						</li>
						<li>
							<a href="#tab_default_4" data-toggle="tab">
							기타 </a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1">
							<div class="row">
                                            <div class="col-md-2">
                                                <label>성분</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.ingredient}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>효능</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.effects}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>용법·용량</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_usage}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>주의사항</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.precautins}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>부작용</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.side_effects}</p>
                                            </div>
                                        </div>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<div class="row">
                                            <div class="col-md-2">
                                                <label>효능</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.effects}</p>
                                            </div>
                                        </div>
						</div>
						<div class="tab-pane" id="tab_default_3">
							<div class="row">
                                            <div class="col-md-2">
                                                <label>용법·용량</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_usage}</p>
                                            </div>
                                        </div>
						</div>
						<div class="tab-pane" id="tab_default_4">
							<div class="row">
                                            <div class="col-md-2">
                                                <label>투여 경로</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_route}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>제형</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_shape}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>식약처 분류</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_category}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>회사명</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_company}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>약품코드</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${drug.d_code}</p>
                                            </div>
                                        </div>
						</div>
					</div>
				</div>
			</div>

			
			
			
		</div>
	</div>
</div>
	</div>
     </div>                 
        </div>
		<!-- END MAIN CONTENT -->
	

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
	<script
		src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/scripts/klorofil-common.js"></script>

</body>

</html>
