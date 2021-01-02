<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">

<head>
	<title>약팔이 | 검색 결과</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<jsp:include page="../reference/header.jsp" />
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
      
      <!-- END NAVBAR -->
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/yak_erp/" class="active"><i class="lnr lnr-home"></i> <span>ERP프로젝트</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-linearicons"></i> <span>비지니스</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/yak_erp/blistpage?num=1" class="">기업정보조회</a></li>
									<li><a href="#" class="">배너관리</a></li>
									<li><a href="/yak_erp/b_quesList?num=1" class="">문의내역</a></li>
								</ul>
							</div>
						</li>
						<li><a href="/yak_erp/dlistpage?num=1" class=""><i class="lnr lnr-cog"></i> <span>콘텐츠관리</span></a></li>
						<li>
							<a href="#subPagess" data-toggle="collapse" class=""><i class="lnr lnr-file-empty"></i> <span>회원관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse">
								<ul class="nav">
									<li><a href="/yak_erp/mlist" class="">회원이력조회</a></li>
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
            <div class="container-fluid" style="font-size:20px;">
               <h3 class="page-title">통합 검색 > ${searchKeyword}</h3>

                  <div class="col-md-12">
                     <!-- TABLE HOVER -->
                     <div class="panel" >
                        <div class="panel-heading">
                           <h3 class="panel-title" style="color:black">기업 리스트</h3>
                        </div>
                        <div class="panel-body" >
                        
                        <c:if test="${!empty business}">
                        <c:forEach var = "business" items="${business}">
                       	<li>
                       	  <a href="/yak_erp/Information?company_name=${business.company_name}">${business.company_name}</a>
                           <br>
                           <br>
                           <c:if test="${business.c_comment!=null}">
                        	<ul>&nbsp;${business.c_comment}</ul> 
                     	   </c:if>
                     	   <c:if test="${business.c_comment==null}">
                        	<ul>소개가 없는 기업입니다.</ul> 
                     	   </c:if>
                     	   </li>
                           </c:forEach>
                           
                              <p class="demo-button" align=right>
                              <a href="/yak_erp/blistpage?num=1&keyword=${searchKeyword}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i>더보기</a>

                           </p>
                           
                           </c:if> 
                           <c:if test="${empty business}">
                  			<h3 style="color:gray">기업 리스트 검색결과가 존재 하지 않습니다.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title" style="color:black">배너</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty banner}">
                        <c:forEach var = "banner" items="${banner}">
                        <ul>
                        <li>
                         <a href="/yak_erp/banner_view?ban_num=${banner.ban_num}">
                        <img width="10%;" style="display:inline; margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="/picture${banner.img_dirr}" class="img-circle img-responsive">
                       	 </a>
                       	 <br> 
                       	  배너명 : 
                       	 <a href="/yak_erp/banner_view?ban_num=${banner.ban_num}">${banner.ban_name} </a>  
                       	<br> 
                       	 회사명 :  <a href="/yak_erp/Information?company_name=${banner.company_name}">${banner.company_name}</a>
                           <br>
                              </li>
                             </ul>
                             
                           </c:forEach>
                           <p class="demo-button" align=right>
                              <button type="button" class="btn btn-default">더보기</button>
                           </p>
                           </c:if> 
                           
                           <c:if test="${empty banner}">
                  			<h3 style="color:gray">배너 검색결과가 존재 하지 않습니다.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title">콘텐츠</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty drug}">
                        <c:forEach var = "drug" items="${drug}">
                        <ul>
                        <li>
                        <a href="/yak_erp/drug_view?drug_name=${drug.drug_name}">
                        <img width="10%;" style="display:inline; margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="resources/drug/${drug.drug_name}.jpg" class="img-circle img-responsive">
                       	 </a>
                       	 <br> 
                       	  약품명 : 
                       	 <a href="/yak_erp/drug_view?drug_name=${drug.drug_name}">${drug.drug_name} </a>  
                       	<br> 
                       	 성분 :  ${drug.ingredient}
                           <br>
                              </li>
                             </ul>
                             
                           </c:forEach>
                           <p class="demo-button" align=right>
                              <a href="/yak_erp/dlistpage?num=1&keyword=${searchKeyword}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i>더보기</a>
                           </c:if> 
                           
                           <c:if test="${empty drug}">
                  			<h3 style="color:gray">의약품 검색결과가 존재 하지 않습니다.</h3>
               				</c:if> 
                        </div>
                        <hr id="study">
                        
                        <div class="panel-heading">
                           <h3 class="panel-title">회원리스트</h3>
                           
                        </div>
                        <div class="panel-body" >
                        <c:if test="${!empty member}">
                        <c:forEach var = "member" items="${member}">
                        <ul>
                        <li>
                       	  회원ID: 
                       	 <a href="/yak_erp/Member_Information?member_id=${member.member_id}">${member.member_id} </a>  
                       	<br> 
                       	 회원명 : ${member.member_name}
                           <br>
                              </li>
                             </ul>
                             
                           </c:forEach>
                           <p class="demo-button" align=right>
                              <p class="demo-button" align=right>
                              <a href="/yak_erp/mlistpage?num=1&keyword=${searchKeyword}"
									data-original-title="Edit this user" data-toggle="tooltip"
									type="button" class="btn btn-sm btn-warning"><i
										class="glyphicon glyphicon-edit"></i>더보기</a>
                           </p>
                           </c:if> 
                           
                           <c:if test="${empty member}">
                  			<h3 style="color:gray">회원 검색결과가 존재 하지 않습니다.</h3>
               				</c:if> 
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
