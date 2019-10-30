<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

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
<title>고객의 소리 게시판(VOC)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
.writebutton {
	margin: 0 auto;
	text-align: center;
}

.a {
	display: inline-block;
}

.b {
	text-align: center;
}

#map {
	margin: 0 auto;
	border: 2px solid brown;
}

#mapname {
	text-align: center;
}
</style>

<body onload="logincheck()">
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<br />
	<br />

	<!-- ##### Catagory Post Area Start ##### -->
	<div class="catagory-post-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Post Area -->
				<div class="col-12 col-lg-8 col-xl-9">
					<div>
						<c:choose>
							<c:when test="${SessionEMAIL!=null}">
								<div class="writebutton">
									<form action="vocwrite" method="get">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<button class="btn bueno-btn w-100">글쓰기</button>
											</div>
										</div>
									</form>
								</div>
							</c:when>
						</c:choose>
					</div>
					<!-- Single Blog Post -->
					<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
						<!-- Blog Thumbnail -->
						<c:forEach items="${voclist}" var="voc">
							<c:forEach items="${voclist2}" var="voc2">
								<c:if test="${voc.VOCID==voc2.VOCID}">
									<div class="blog-thumbnail">
										<a href="voccontent?vocid=${voc.VOCID}"> 
										<img id="picturebox" src="<spring:url value='/image/${voc2.VOCSAVEFILENAME}'/>" alt=""></a>
									</div>
								</c:if>
							</c:forEach>
							<!-- Blog Content -->
							<div class="blog-content" id="contentbox">
								<ul>
									<a href="voccontent?vocid=${voc.VOCID}" class="bbs_Id">${voc.VOCID}</a>
								</ul>
								<ul>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-author">${voc.EMAIL}</a>
										</div>
									</li>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-date">${voc.VOCWRITEDATE}</a>
										</div>
									</li>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-date">조회수 : ${voc.VOCVIEWSCOUNT}</a>
										</div>
									</li>
									<a href="voccontent?vocid=${voc.VOCID}" class="post-title">${voc.TITLE}</a>
								</ul>
								<p>${voc.CONTENT}</p>
								<c:choose>
									<c:when test="${voc.EMAIL == SessionEMAIL}">
										<ul>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="vocupdate?vocid=${voc.VOCID}"><button
																class="btn bueno-btn w-100">수정</button></a>
													</div>
												</div>
											</li>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="vocdelete?vocid=${voc.VOCID}"><button
																class="btn bueno-btn w-100">삭제</button></a>
													</div>
												</div>
											</li>
										</ul>
									</c:when>
									<c:when test="${SessionEMAIL == 'gkwlstn2001@naver.com'}">
										<ul>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="vocupdate?vocid=${voc.VOCID}"><button
																class="btn bueno-btn w-100">수정</button></a>
													</div>
												</div>
											</li>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="vocdelete?vocid=${voc.VOCID}"><button
																class="btn bueno-btn w-100">삭제</button></a>
													</div>
												</div>
											</li>
										</ul>
									</c:when>
								</c:choose>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<br />
		</div>
	</div>
	<!-- ##### Catagory Post Area End ##### -->

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="resources/js/bootstrap/popper.min.js"></script>

	<script>
		$('img#picturebox').css({
			'width' : '100%',
			'maxWidth' : 'none',
			'height' : '290px'
		})
		$('div#contentbox').css({
			'width' : '50%',
			'maxWidth' : 'none',
			'height' : '20%'
		})
		$('div#pagenumbering').css({
			'margin':'0 auto',
			'text-align':'center',
			'width':'200px'
		})
	</script>
	
	<script>
		
		function logincheck() {
			
			if(${SessionEMAIL==null}) {
				alert("로그인을 하셔서 글도 쓰시고 댓글도 다실수 있습니다.");
			} else {
				
			}
		}
	</script>

	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="resources/js/active.js"></script>
</body>

</html>