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
<title>공지사항(Notice)</title>

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

.c {
	margin-left: 40%;
}

#map {
	margin: 0 auto;
	border: 7px solid brown;
}

#mapname {
	text-align: center;
}
</style>

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<!-- ##### Catagory Post Area Start ##### -->
	<div class="catagory-post-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Post Area -->
				<div class="col-12 col-lg-8 col-xl-9">
					<div>
						<c:choose>
							<c:when test="${SessionEMAIL == 'gkwlstn2001@naver.com'}">
								<div class="writebutton">
									<form action="write" method="get">
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
						<c:forEach items="${nlist}" var="bbs">
							<c:forEach items="${nlist2}" var="bbs2">
								<c:if test="${bbs.BBSID==bbs2.BBSID}">
									<div class="blog-thumbnail">
										<a href="boardcontent?bbsid=${bbs.BBSID}"><img
											id="picturebox" src="${bbs2.SAVEFILENAME}" alt=""></a>
									</div>
								</c:if>
							</c:forEach>
							<!-- Blog Content -->
							<div class="blog-content" id="contentbox">
								<ul>
									<a href="boardcontent?bbsid=${bbs.BBSID}" class="bbs_Id">${bbs.BBSID}
										/</a>
									<li class="a"><a href="#" class="bbs_Id">권한 :
											${bbs.ADMIN}</a></li>
									<br />

									<li class="a"><a href="#" class="bbs_Id">평점 :
											${bbs.SCORE}</a></li>
									<br />
									<br />

									<li class="a"><a href="#" class="post-tag">${bbs.REGION}
											/</a></li>
									<%-- <li class="a"><a href="#" class="post-tag">${bbs.REGION2}
									</a></li> --%>
								</ul>
								<ul>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-author">${bbs.EMAIL}</a>
										</div>
									</li>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-date">${bbs.WRITEDATE}</a>
										</div>
									</li>
									<li class="a">
										<div class="post-meta">
											<a href="#" class="post-author">조회수 : ${bbs.VIEWSCOUNT}</a>
										</div>
									</li>
									<a href="boardcontent?bbsid=${bbs.BBSID}" class="post-title">${bbs.TITLE}</a>
								</ul>
								<p>${bbs.CONTENT}</p>
								<c:choose>
									<c:when test="${bbs.EMAIL == SessionEMAIL}">
										<ul>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="update?bbsid=${bbs.BBSID}"><button
																class="btn bueno-btn w-100">수정</button></a>
													</div>
												</div>
											</li>
											<li class="a">
												<div class="col-12 col-sm-6 col-lg-3">
													<div class="form-group mb-30">
														<a href="delete?bbsid=${bbs.BBSID}"><button
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
		</div>
	</div>
	<!-- ##### Catagory Post Area End ##### -->

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>

	<script>
		$('img#picturebox').css({
			'width' : '100%',
			'maxWidth' : 'none',
			'height' : '80%'
		})
		$('div#contentbox').css({
			'width' : '50%',
			'maxWidth' : 'none',
			'height' : '20%'
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