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
<title>마이페이지(Administration)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<div>
		<div id="boardtilte">내가 쓴 게시물 목록(All Board)</div>
		<table id="firsttable" border="3">
			<thead>
				<tr>
					<th>글번호</th>
					<th>권한</th>
					<th>지역</th>
					<th>평점</th>
					<th>작성일자</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>제목</th>
					<th>내용</th>
				</tr>
			</thead>
			<c:forEach items="${mycontent}" var="mycontent">
			<tbody>
			<tr>
				<td><a href="boardcontent?bbsid=${mycontent.BBSID}" target="_blank">${mycontent.BBSID}</a></td>
				<td>${mycontent.ADMIN}</td>
				<td>${mycontent.REGION}</td>
				<td>${mycontent.SCORE}</td>
				<td>${mycontent.WRITEDATE}</td>
				<td>${mycontent.VIEWSCOUNT}</td>
				<td>${mycontent.EMAIL}</td>
				<td>${mycontent.TITLE}</td>
				<td>${mycontent.CONTENT}</td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
		<br/>
		<div id="boardtilte">내가 쓴 댓글 목록(All Comments)</div>
		<table id="firsttable" border="3">
			<thead>
				<tr>
					<th>댓글번호</th>
					<th>해당 게시글번호</th>
					<th>작성자</th>
					<th>댓글내용</th>
					<th>작성일자</th>
				</tr>
			</thead>
			<c:forEach items="${mycomments}" var="mycomments">
			<tbody>
			<tr>
				<td>${mycomments.COMMENTSID}</td>
				<td><a href="boardcontent?bbsid=${mycomments.BBSID}" target="_blank">${mycomments.BBSID}</a></td>
				<td>${mycomments.EMAIL}</td>
				<td>${mycomments.COMMENTS}</td>
				<td>${mycomments.COMMENTSDATE}</td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
		<br/>
		<div id="boardtilte">내 정보(Register Info)</div>
		<table id="secondtable" border="3">
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>핸드폰번호</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>${myregisterinfo.EMAIL}</td>
				<td>${myregisterinfo.PASSWORD}</td>
				<td>${myregisterinfo.FULLNAME}</td>
				<td>${myregisterinfo.ADDRESS}</td>
				<td>${myregisterinfo.PHONENUMBER}</td>
			</tr>
			</tbody>
		</table>
		<br/>
	</div>

	<br />

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>

	<script>
		$('table#firsttable').css({
			'width':'70%',
			'margin':'0 auto'
		})
		$('table#secondtable').css({
			'width':'70%',
			'margin':'0 auto'
		})
		$('th').css({
			'text-align':'center'
		})
		$('td').css({
			'text-align':'center'
		})
		$('div#boardtilte').css({
			'margin' : '0 auto',
			'text-align' : 'center',
			'font-weight' : 'bold',
			'font-size' : '2em',
			'color':'#6B4928'
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