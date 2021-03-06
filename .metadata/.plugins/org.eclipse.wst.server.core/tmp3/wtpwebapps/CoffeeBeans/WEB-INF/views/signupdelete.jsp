<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원탈퇴(Delete)</title>
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
<script>
	function warning() {
		if(confirm("게시물 정보가 모두 삭제됩니다... 정말로 탈퇴하시겠습니까?")) {
			alert("탈퇴되었습니다");
			return true;
		} else {
			alert("탈퇴가 취소되었습니다");
			return false;
		}
	}
</script>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="/signupdeleteok" method="post">
					<span class="login100-form-title p-b-43" id="pagetitle">
						Member Delete
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="EMAIL" value="${SessionEMAIL}" readonly>
						<span class="focus-input100"></span>
						<span class="label-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="PASSWORD" placeholder="비밀번호를 입력하시면 탈퇴가 진행됩니다">
						<span class="focus-input100"></span>
						<span class="label-input100"></span>
					</div>
					
					<br/>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="deletebutton" onclick="return warning();">
							회원탈퇴
						</button>
					</div>
					
					<br/>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
						<a href="/" id="homebutton">Home</a>
						</button>
					</div>
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
		$('button#deletebutton').css({
			'font-size':'1em'
		})
		$('span#pagetitle').css({
			'font-weight':'bold',
			'font-size':'3em'
		})
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