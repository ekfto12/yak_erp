<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">

<head>
	<title>약팔이 | 관리자페이지</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
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
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="resources/img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">계정에 로그인하세요</p>
							</div>
							<form:form role="form" class="form-auth-small" commandName="login_command" action="login" method="post"> 
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">ID</label>
									<form:input type="text" class="form-control" size="10px" placeholder="ID" path="id" maxlength="15"/>
									<form:errors path="id"/>
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Password</label>
									<form:password class="form-control" placeholder="Password" path="pw"/>
                 					<form:errors path="pw"/> 
								</div>
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left">
										<form:checkbox path="rememberId"/>
										<span>ID를 기억합니다</span>
									</label>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a href="#">Forgot password?</a></span>
								</div>
							</form:form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">약팔이의 관리자 계정 로그인 페이지입니다</h1>
							<p>by 약팔이</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>

</html>