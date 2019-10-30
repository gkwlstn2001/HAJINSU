<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<c:choose>
		<c:when test="${ID == null}">
			<form action="register" method="get">
				<button>회원가입</button>
			</form>
			<form action="login" method="get">
				<button>로그인</button>
			</form>
		</c:when>
		<c:when test="${ID != null}">
			<h1>${ID}님 로그인을 환영합니다</h1>
			<a href="logout"><button>logout</button></a>
		</c:when>
	</c:choose>
</body>
</html>
