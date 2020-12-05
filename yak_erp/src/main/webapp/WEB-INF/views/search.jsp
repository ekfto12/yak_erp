<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">

<head>
	<title>������ | �˻� ���</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/vendor/linearicons/style.css">
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
            <a href="/yak_erp/"><img src="resources/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
         </div>
         <div class="container-fluid">
            <div class="navbar-btn">
               <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <form class="navbar-form navbar-left" >
               <div class="input-group">
                  <input type="text" value="" class="form-control" placeholder="search..">
                  <span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
               </div>
            </form>
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
                  <!-- <li>
                     <a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                  </li> -->
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
						<li><a href="/yak_erp/" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-linearicons"></i> <span>�����Ͻ�</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blist" class="">���������ȸ</a></li>
									<li><a href="#" class="">��ʰ���</a></li>
									<li><a href="/yak_erp/b_quesList" class="">���ǳ���</a></li>
								</ul>
							</div>
						</li>
						<li><a href="/yak_erp/dlist" class=""><i class="lnr lnr-cog"></i> <span>����������</span></a></li>
						<li>
							<a href="#subPagess" data-toggle="collapse" class="active"><i class="lnr lnr-file-empty"></i> <span>ȸ������</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse in">
								<ul class="nav">
									<li><a href="/yak_erp/mlist" class="active">ȸ���̷���ȸ</a></li>
									<li><a href="/yak_erp/m_quesList" class="">���ǳ���</a></li>
									<li><a href="/yak_erp/b_quesList" class="">���ڹ߼۳���</a></li>
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
            <div class="container-fluid" style="font-size:20px;">
               <h3 class="page-title">���� �˻� > ${searchKeyword}</h3>

                  <div class="col-md-12">
                     <!-- TABLE HOVER -->
                     <div class="panel" >
                        <div class="panel-heading">
                           <h3 class="panel-title" style="color:black">��� ����Ʈ</h3>
                        </div>
                        <div class="panel-body" >
                        
                        <c:if test="${!empty business}">
                        <c:forEach var = "business" items="${business}">
                       	<li>
                       	  <a href="">${business.company_name}</a>
                           <br>
                           <br>
                           <c:if test="${business.c_comment!=null}">
                        	<ul>&nbsp;${business.c_comment}</ul> 
                     	   </c:if>
                     	   <c:if test="${business.c_comment==null}">
                        	<ul>�Ұ��� ���� ����Դϴ�.</ul> 
                     	   </c:if>
                     	   </li>
                           </c:forEach>
                           
                              <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">������</button>

                           </p>
                           </c:if> 
                           <c:if test="${empty business}">
                  			<h3 style="color:gray">��� ����Ʈ �˻������ ���� ���� �ʽ��ϴ�.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title" style="color:black">���</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty banner}">
                        <c:forEach var = "banner" items="${banner}">
                        <li>
                        <img width="10%;" style="display:inline; margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="/picture${banner.img_dirr}" class="img-circle img-responsive">
                       	 <a href="">${banner.ban_name}</a> / ${banner.company_name}
                           <br>
                              </li>
                           </c:forEach>
                           <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">������</button>

                           </p>
                           </c:if> 
                           
                           <c:if test="${empty banner}">
                  			<h3 style="color:gray">��� �˻������ ���� ���� �ʽ��ϴ�.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title">������</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty boardResult}">
                        <a href="">${memberList.MEMBER_ID}</a>
                        
                           <br/>
                              <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">ȸ�� ���</button>

                           </p>
                           </c:if> 
                           <c:if test="${empty boardResult}">
                  			<h3 style="color:gray">��� �˻������ ���� ���� �ʽ��ϴ�.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title">ȸ������Ʈ</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty boardResult}">
                        <a href="">${memberList.MEMBER_ID}</a>
                        <br>
                        
                          
                              <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">ȸ�� ���</button>

                           </p>
                           </c:if> 
                           <c:if test="${empty boardResult}">
                  			<h3 style="color:gray">��� �˻������ ���� ���� �ʽ��ϴ�.</h3>
               				</c:if> 
                        </div>
                        
                        <div class="panel-heading">
                           <h3 class="panel-title">���ǳ���</h3>
                           
                        </div>
                        <div class="panel-body" >
                        
                           <table class="table table-hover" style="width:80%; text-align:center;">
                              <thead>
                                 <tr>
                                    <th style="width:10%; text-align:center;">��ȣ</th>
                                    <th style="width:50%; text-align:center;">ȸ����</th>
                                    <th style="width:30%; text-align:center;">���</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>1</td>
                                    <td>Steve</td>
                                    
                                    <td></td>
                                 </tr>
                                 <tr>
                                    <td>2</td>
                                    <td>Simon</td>
                                    
                                    <td></td>
                                 </tr>
                                 <tr>
                                    <td>3</td>
                                    <td>Jane</td>
                                    
                                    <td></td>
                                 </tr>
                              </tbody>
                           </table><br/>
                              <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">ȸ�� ���</button>

                           </p>
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
            <p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
</p>
         </div>
      </footer>

   <!-- END WRAPPER -->
   <!-- Javascript -->
   <script src="resources/vendor/jquery/jquery.min.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="resources/scripts/klorofil-common.js"></script>
</body>

</html>
