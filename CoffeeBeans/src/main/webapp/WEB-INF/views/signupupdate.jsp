<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원정보 수정페이지(SignUpUpdate)</title>
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
<body style="background-color: #ffffff;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('resources/images2/bg-010.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="/signupupdateok" method="post">
					<span class="login100-form-title p-b-59">
						Member Update
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="EMAIL" placeholder="Email addess..." value="${SessionEMAIL}" readonly>
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
						<input class="input100" type="text" name="ADDRESS" id="ADDRESS" placeholder="Address..." onclick="addresspopup()">
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
							<button class="login100-form-btn">
								회원정보 수정
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
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function addresspopup() {
			if($('input#ADDRESS').val()!="") {
				document.getElementById("ADDRESS").focus();
				alert("새로 입력하시려면 주소를 모두 지우신뒤에 주소창을 클릭해주세요");
			} else {
			    new daum.Postcode({
			        oncomplete: function(data) {
			            
			        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("ADDRESS").value = extraAddr;
		                
		                } else {
		                    document.getElementById("ADDRESS").value = '';
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('ADDRESS').value += data.zonecode;
		                document.getElementById("ADDRESS").value += addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("ADDRESS").focus();
			        }
			    }).open();
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