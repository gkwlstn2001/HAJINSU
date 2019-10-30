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
<title>관리자 페이지(Administration)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<div>
		<div id="boardtilte">전체 게시물 목록(All Board)</div>
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
					<!-- <th>내용</th> -->
				</tr>
			</thead>
		<c:forEach items="${allboardlist}" var="allboardlists">
			<tbody>
			<tr>
				
				<td><a href="boardcontent?bbsid=${allboardlists.BBSID}" target="_blank">${allboardlists.BBSID}</a></td>
				<td>${allboardlists.ADMIN}</td>
				<td>${allboardlists.REGION}</td>
				<td>${allboardlists.SCORE}</td>
				<td>${allboardlists.WRITEDATE}</td>
				<td>${allboardlists.EMAIL}</td>
				<td>${allboardlists.VIEWSCOUNT}</td>
				<td>${allboardlists.TITLE}</td>
				<%-- <td>${allboardlists.CONTENT}</td> --%>
			</tr>
			</tbody>
		</c:forEach>
		</table>
		<br/>
		<div id="boardtilte">회원별 정보(Register Info)</div>
		<table id="secondtable" border="3">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>핸드폰번호</th>
				</tr>
			</thead>
		<c:forEach items="${allregister}" var="allregister">
			<tbody>
			<tr>
				<td>${allregister.EMAIL}</td>
				<td>${allregister.FULLNAME}</td>
				<td>${allregister.ADDRESS}</td>
				<td>${allregister.PHONENUMBER}</td>
			</tr>
			</tbody>
		</c:forEach>
		</table>
		<br/>
	</div>
	<div id="wrapper">
		<br/>
		<div id="boardtilte">원두 수령가능 고객(Coffee Member) / 게시글 30개 & 댓글 50개</div>
		<table id="thirdtable" border="3">
			<thead>
				<tr>
					<th>당첨자</th>
				</tr>
			</thead>
		<c:forEach items="${countemaillist}" var="countemaillist">
			<tbody>
			<tr>
				<td>${countemaillist.EMAIL}</td>
			</tr>
			</tbody>
		</c:forEach>
		</table>
		<br/>
		<div id="boardtilte">회원별 게시글 수(BoardCount)</div>
		<table id="forthtable" border="3">
			<thead>
				<tr>
					<th>작성자</th>
					<th>게시글 수</th>
				</tr>
			</thead>
		<c:forEach items="${countboard}" var="countboard">
			<tbody>
			<tr>
				<td>${countboard.EMAIL}</td>
				<td>${countboard.VIEWSCOUNT}개</td>
			</tr>
			</tbody>
		</c:forEach>
		</table>
		<br />
		<div id="boardtilte">회원별 댓글 수(CommentsCount)</div>
		<table id="forthtable" border="3">
			<thead>
				<tr>
					<th>작성자</th>
					<th>댓글 수</th>
				</tr>
			</thead>
		<c:forEach items="${countcomments}" var="countcomments">
			<tbody>
			<tr>
				<td>${countcomments.EMAIL}</td>
				<td>${countcomments.COMMENTS}개</td>
			</tr>
			</tbody>
		</c:forEach>
		</table>
		<br/>
	</div>

	<br />

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>

	<script>
		$('div#wrapper').css({
			'border' : '5px solid #6B4928',
			'width' : '70%',
			'height' : '50%',
			'margin' : '0 auto'
		})
		$('table#firsttable').css({
			'width':'70%',
			'margin':'0 auto'
		})
		$('table#secondtable').css({
			'width':'70%',
			'margin':'0 auto'
		})
		$('table#thirdtable').css({
			'width':'70%',
			'margin':'0 auto'
		})
		$('table#forthtable').css({
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