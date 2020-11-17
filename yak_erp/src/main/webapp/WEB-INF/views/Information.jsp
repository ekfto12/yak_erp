<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	<link rel="icon" type="image/png" sizes="96x96" href="resources/img/favicon.png">

</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
<<<<<<< leejw
				<a href="index.html"><img src="resources/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
=======
				<a href="/yak_erp/"><img src="resources/img/logo-dark.png"
					alt="Klorofil Logo" class="img-responsive logo"></a>
>>>>>>> 3a4ce75 Lee Jae Won
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="검색할 내용을 입력해주세요">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">검색</button></span>
					</div>
				</form>
<<<<<<< leejw
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
				</div>
=======
>>>>>>> 3a4ce75 Lee Jae Won
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
<<<<<<< leejw
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
=======
>>>>>>> 3a4ce75 Lee Jae Won
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
						<li><a href="index.html" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
<<<<<<< leejw
									<li><a href="page-profile.html" class="">기업정보조회</a></li>
=======
									<li><a href="/yak_erp/blist" class="active">기업정보조회</a></li>
>>>>>>> 3a4ce75 Lee Jae Won
									<li><a href="page-login.html" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList" class="">문의내역</a></li>
								</ul>
<<<<<<< leejw
							</div>
						</li>
						<li><a href="charts.html" class=""><i class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
						<li>
							<a href="#subPagess" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>회원관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
=======
							</div></li>
						<li><a href="/yak_erp/dlist" class=""><i class="lnr lnr-cog"></i>
								<span>콘텐츠관리</span></a></li>
						<li><a href="#subPagess" data-toggle="collapse"
							class="collapsed"><i class="lnr lnr-file-empty"></i> <span>회원관리</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
>>>>>>> 3a4ce75 Lee Jae Won
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/mlist" class="">회원이력조회</a></li>
									<li><a href="/yak_erp/m_quesList" class="">문의내역</a></li>
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
               <h3 class="page-title">기업리스트</h3>

                  <div class="col-md-8" style="margin-left: auto; margin-right: auto;">
                     <!-- TABLE HOVER -->
                     
                    
 
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">회사의 기업정보</h3>
            </div>
            <div class="panel-footer">
                        
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip"  type="button" class="btn btn-sm btn-danger" onClick="self.close();"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img width="80%;"style="margin-top: 10px;" alt="User Picture" src="resources/img/default_user.png" class="img-circle img-responsive"> </div>
 
                <div class=" col-md- col-lg-5 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>기업명:</td>
                        <td>이종열</td>
                      </tr>                 
                      <tr>
                        <td>대표자명:</td>
                        <td>ㄴㅁㅇㄹ</td>
                      </tr>
                   
                         <tr>
                             <tr>
                      </tr>
                        <tr>
                        <td>기업주소:</td>
                        <td>ㄹㄷㄹㄷ</td>
                      </tr>
                      <tr>
                        <td>비고:</td>
                        <td>ㅁㄴㅇㅁㄴ</td>
                           
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
            <div class="panel-footer">
                        
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip"  type="button" class="btn btn-sm btn-danger" onClick="self.close();"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            <div class="panel-body">
              <div class="row">
 			<div class="col-md-3 col-lg-3 " align="center"> <img width="80%;" style="margin-top: 10px;"alt="User Picture" src="resources/img/default_user.png" class="img-circle img-responsive"> </div>
                <div class=" col-md- col-lg-5 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>담당자ID:</td>
                        <td>이종열</td>
                      </tr>                 
                      <tr>
                        <td>담당자명:</td>
                        <td>ㄴㅁㅇㄹ</td>
                      </tr>
                   
                         <tr>
                             <tr>
                      </tr>
                        <tr>
                        <td>연락처:</td>
                        <td>ㄹㄷㄹㄷ</td>
                      </tr>
                      <tr>
                        <td>이메일:</td>
                        <td>ㅁㄴㅇㅁㄴ</td>
                           
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
               </div>
               
               
               
               
               <h3 class="page-title">배너 거래정보</h3>
            </div>
         </div>
         <!-- END MAIN CONTENT -->
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
	
</body>

</html>
