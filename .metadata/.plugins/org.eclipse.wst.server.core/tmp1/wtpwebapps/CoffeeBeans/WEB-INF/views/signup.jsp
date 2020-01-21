<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원가입(SignUp)</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="resources/width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images2/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0.2/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/Linearicons-Free-v1.0.0.2/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic2/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor2/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor2/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util2.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main2.css">
<!--===============================================================================================-->
	<!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/abc.ico">
</head>
<style>
	.a {
		display : inline-block;
	}
</style>
<body style="background-color: #ffffff;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('resources/images2/bg-010.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="/signupok" method="post"  id="idcheck">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<ul>
						<li class="a">
						<span class="label-input100">Email</span>
						</li>
						<li class="a">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn">
							</div>
							<a href="#" class="login100-form-btn" onclick="idcheck()">
								중복확인 체크
							</a>
						</div>
						</li>
						</ul>
						<input class="input100" id="writeemail" type="email" name="EMAIL" placeholder="Email addess...">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="PASSWORD" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Full Name</span>
						<input class="input100" type="text" name="FULLNAME" placeholder="Name...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Address is required">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="ADDRESS" placeholder="Address...">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="PhoneNumber is required">
						<span class="label-input100">PhoneNumber</span>
						<input class="input100" type="number" name="PHONENUMBER" placeholder="PhoneNumber...">
						<span class="focus-input100"></span>
					</div>

					<!-- <div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div> -->

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" onclick="return buttonchecking()">
								회원가입
							</button>
						</div>

						<a href="/" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Home
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="resources/vendor2/jquery/jquery-3.2.1.min.js"></script>
	
	<script>
		
	</script>
	
	<script>
		var buttoncheck = "false";
		
		function idcheck() {
			
			$.ajax ({
				type : "GET",
				url : "<c:url value='idcheck'/>",
				data : $('form#idcheck').serialize(),
				success : function(data) {
					if(data=="fail") {
						alert("중복된 아이디가 있습니다. 다시입력하세요!");
						$('input#writeemail').val("");
					} else if(data=="success") {
						alert("중복된 아이디가 없습니다.");
						buttoncheck = "true";
					}
				},
				error:function(request,status,error){
	            	// alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       		}
			});
		}
		
		function buttonchecking() {
			if(buttoncheck == "false") {
				alert("아이디 중복체크는 필수항목입니다.");
				return false;
			}
		}
	</script>
	
<!--===============================================================================================-->
	<script src="resources/vendor2/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor2/bootstrap/js/popper.js"></script>
	<script src="resources/vendor2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor2/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor2/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor2/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/main2.js"></script>

</body>
</html>