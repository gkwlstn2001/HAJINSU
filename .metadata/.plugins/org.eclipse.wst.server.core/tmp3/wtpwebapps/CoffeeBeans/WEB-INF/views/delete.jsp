<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>삭제(Delete)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
.writebutton {
	margin-left: 43%;
}

.a {
	display: inline-block;
}
.b {
	text-align:center;
}
.c {
	margin-left: 33%;
}
.d {
	border : 5px solid black;
	background-image:url("resources/img/core-img/pattern01.png");
	background-size:cover;
	margin: 0 auto;
	width: 60%;
	height: 70%;
}
.f {
	text-align:center;
}
.g {
	color:red;
	font-weight:bold;
	font-size:2em;
	text-align:center;
}
.i {
	width:50%;
	margin:0 auto;
	text-align:center;
}
.h {
	width:40%;
	margin:0 auto;
	text-align:center;
}
#j {
	text-align:center;
	margin:0 auto;
}
</style>

<script>
	function warning() {
		if(confirm("정말로 삭제하시겠습니까?")) {
			alert("삭제되었습니다");
			return true;
		} else {
			alert("삭제가 취소되었습니다");
			return false;
		}
	}
</script>

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<br />
	<br />
	<br />
	
	<div class="d">
	<form action="deleteok" method="post">
		<div>
			<br/>
			<div class="i">
				<mark class="g">삭제할 글의 번호를 아래에 입력하세요</mark>
			</div>
			<br/>
			<br/>
			<div class="h">
				<input class="f" type="text" name="DELETEADMIN" value="${bbsdto.ADMIN}" readonly>
				<input class="f" type="text" name="DELETEBBSID" value="${bbsdto.BBSID}" placehoder="글번호를 입력하세요" readonly></input>
			</div>
			
			<br/>
			<div class="col-6 col-sm-6 col-lg-3" id="j">
					<div class="form-group mb-30">
						<button class="btn bueno-btn w-100" id="deletebutton" onclick="return warning();">삭제(DELETE)</button>
					</div>
			</div>
		</div>
	</form>
	</div>
	
	<br />
	<br />
	<br />

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
	
	<script>
		$('button#deletebutton').css({
			'font-size':'2em',
			'font-weight':'bold'
		})
	</script>
	
	<!-- Popper js -->
	<script src="resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="resources/js/active.js"></script>
</body>

</html>