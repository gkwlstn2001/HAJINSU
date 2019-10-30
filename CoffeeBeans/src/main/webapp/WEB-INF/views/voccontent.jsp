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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>VOC 상세페이지(VOC Content)</title>

    <!-- Favicon -->
	<link rel="icon" href="resources/img/core-img/abc.ico">

	<!-- Stylesheet -->
	<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
.a {
	display: inline-block;
}

.b {
	text-align: center;
}
</style>

<body>
    <jsp:include page="/WEB-INF/views/includes/header.jsp" />

    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <div class="post-details-content mb-100">
                        <div class="blog-content">
                            <a href="#" class="post-tag">${vocdto.VOCID}</a>
                            <h4 class="post-title">${vocdto.TITLE}</h4>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-date">${vocdto.VOCWRITEDATE}</a>
                                <a href="#" class="post-author">${vocdto.EMAIL} /</a>
                                <a href="#" class="post-author">조회수 : ${vocdto.VOCVIEWSCOUNT}</a>
                            </div>
                            <p>${vocdto.CONTENT}</p>
                        </div>
                        <div class="blog-thumbnail mb-50">
                            <img id="picturesize" src="<spring:url value='/image/${vocfiledto.VOCSAVEFILENAME}'/>">
                        </div>
                        
                        <div class="b">
						<ul>
							<c:choose>
								<c:when test="${vocdto.EMAIL == SessionEMAIL}">
									<li class="a">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<a href="vocupdate?vocid=${vocdto.VOCID}">
													<button class="btn bueno-btn w-100">수정</button>
												</a>
											</div>
										</div>
									</li>
									<li class="a">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<a href="vocdelete?vocid=${vocdto.VOCID}">
													<button class="btn bueno-btn w-100">삭제</button>
												</a>
											</div>
										</div>
									</li>
								</c:when>
								<c:when test="${SessionEMAIL == 'gkwlstn2001@naver.com'}">
									<li class="a">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<a href="vocupdate?vocid=${vocdto.VOCID}">
													<button class="btn bueno-btn w-100">수정</button>
												</a>
											</div>
										</div>
									</li>
									<li class="a">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<a href="vocdelete?vocid=${vocdto.VOCID}">
													<button class="btn bueno-btn w-100">삭제</button>
												</a>
											</div>
										</div>
									</li>
								</c:when>
							</c:choose>
							<li class="a">
								<div class="col-12 col-sm-6 col-lg-3">
									<div class="form-group mb-30">
										<a href="voclist">
											<button class="btn bueno-btn w-100">VOC게시판으로</button>
										</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Post Details Area End ##### -->

    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    
    <script>
    	$('img#picturesize').css({
    		'width':'100%',
    		'height':'500px'
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