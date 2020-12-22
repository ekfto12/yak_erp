<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약팔이  | 관리자페이지</title>
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
<div id="wrapper">
<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/yak_erp/"><img src="resources/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left" action ="/yak_erp/search" method ="get">
					<div class="input-group">
						<input type="text" name="search" class="form-control" placeholder="검색할 내용을 입력해주세요">
						<span class="input-group-btn"><button type="submit" class="btn btn-primary">검색</button></span>
					</div>
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/user.png" class="img-circle" alt="Avatar">
							<c:if test="${not empty authInfo.id}">  
							 <span>${authInfo.name}님</span>
							 </c:if>
							 <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="/yak_erp/logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>