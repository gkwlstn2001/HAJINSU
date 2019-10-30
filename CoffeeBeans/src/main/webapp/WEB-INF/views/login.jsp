<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>로그인(Login)</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
	<!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/abc.ico">
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="/loginok" method="post">
					<span class="login100-form-title p-b-43">
						Login to continue
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="EMAIL" id="EMAIL" value="" required>
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="PASSWORD" id="PASSWORD" value="" required>
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>
					
					<br/>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="nullcheck()">
							로그인
						</button>
					</div>
					
					<br/>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="location='/signup'">
							<a href="/signup" id="homebutton">
								회원가입
							</a>
						</button>
					</div>
					
					<br/>
					
					<div class="container-login100-form-btn" >
					<button class="login100-form-btn" onclick="location='/'">
						<a href="/" id="homebutton">
							Home
						</a>
					</button>
					</div>
					
					<br/>
					
					<c:if test="${result != null}">
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							로그인 결과 : ${result} <br/>
							아이디 or 비밀번호를 확인하세요!
						</button>
					</div>
					</c:if>
					
				</form>

				<div class="login100-more" style="background-image: url('resources/images/bg-020.jpg');">
				</div>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	
	<script>
		$('a#homebutton').css({
			'color':'white'
		})
	</script>
	
	<script>
		function nullcheck() {
			if($('input#EMAIL').val()=="" || $('input#PASSWORD').val()=="") {
				alert("로그인 정보를 입력하셔야 로그인이 됩니다");
			}
		}
	</script>
	
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>
</html>