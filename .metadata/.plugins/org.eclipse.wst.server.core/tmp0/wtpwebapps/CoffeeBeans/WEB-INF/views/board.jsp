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
<title>게시판(Board)</title>

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

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<!-- ##### Search Area Start ##### -->
	<!-- <div class="bueno-search-area section-padding-100-0 pb-70 bg-img"
		style="background-image: url(resources/img/core-img/pattern01.png);">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="#" method="post">
						<div class="row">
							<div class="col-12 col-sm-6 col-lg-3">
								<div class="form-group mb-30">
									<select class="form-control" id="recipe" name="ADMIN">
										<option value="NORMAL" name="NORMAL" selected>일반</option>
									</select>
								</div>
							</div>
							<div class="col-12 col-sm-6 col-lg-3">
								<div class="form-group mb-30" id="vegan">
									<select class="form-control" id="recipe" name="REGION">
										<option value="시 / 도" name="categoryregion">시 / 도</option>
										<option value="서울" name="seoul">서울특별시</option>
										<option value="부산" name="busan">부산광역시</option>
										<option value="대구" name="daegu">대구광역시</option>
										<option value="인천광역시" name="incheon">인천광역시</option>
										<option value="광주광역시" name="gwangju">광주광역시</option>
										<option value="대전광역시" name="daejeon">대전광역시</option>
										<option value="울산광역시" name="ulsan">울산광역시</option>
										<option value="세종특별자치시" name="sejong">세종특별자치시</option>
										<option value="경기도" name="gyunggido">경기도</option>
										<option value="강원도" name="gangwondo">강원도</option>
										<option value="충청북도" name="choogchungbukdo">충청북도</option>
										<option value="충청남도" name="choogchungnamdo">충청남도</option>
										<option value="전라북도" name="jeonlabukdo">전라북도</option>
										<option value="전라남도" name="jeonlanamdo">전라남도</option>
										<option value="경상북도" name="gyeongsangbukdo">경상북도</option>
										<option value="경상남도" name="gyeongsangnamdo">경상남도</option>
										<option value="제주특별자치도" name="jeju">제주특별자치도</option>
									</select>
								</div>
							</div>

							<div class="col-12 col-sm-6 col-lg-3">
								<div class="form-group mb-30">
									<select class="form-control" id="ingredients" name="SCORE">
										<option value="categoryscore" name="categoryscore">평점
											(☆☆☆☆☆)</option>
										<option value="5점 (★★★★★)" name="five">5점 (★★★★★)</option>
										<option value="4점 (★★★★)" name="four">4점 (★★★★)</option>
										<option value="3점 (★★★)" name="three">3점 (★★★)</option>
										<option value="2점 (★★)" name="two">2점 (★★)</option>
										<option value="1점 (★)" name="one">1점 (★)</option>
									</select>
								</div>
							</div>
							<div class="col-12 col-sm-6 col-lg-3">
								<div class="form-group mb-30">
									<button class="btn bueno-btn w-100">Search</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="position"></div>
	</div> -->
	<!-- ##### Search Area End ##### -->

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
						<c:forEach items="${list}" var="bbs">
							<c:forEach items="${list2}" var="bbs2">
								<c:if test="${bbs.BBSID==bbs2.BBSID}">
									<div class="blog-thumbnail">
										<a href="boardcontent?bbsid=${bbs.BBSID}">
										<img id="picturebox" src="<spring:url value='/image/${bbs2.SAVEFILENAME}'/>" alt=""></a>
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

									<li class="a"><a href="#" class="post-tag">${bbs.REGION}</a></li>
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
									<c:when test="${SessionEMAIL == 'gkwlstn2001@naver.com'}">
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
								<!-- <ul>
									<li class="a">
										<div class="col-12 col-sm-6 col-lg-3">
											<div class="form-group mb-30">
												<a href="#position"><button class="btn bueno-btn w-100">지도보기</button></a>
											</div>
										</div>
									</li>
								</ul> -->
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			
			<div>
			<form action="boardsearch" method="get">
				<ul class="b">
					<li class="a">
						<input type="text" name="SEARCHKEY" value="" placeholder="검색어를 입력하세요">
					</li>
					<li class="a">
						<button>검색버튼</button>
					</li>
				</ul>
			</form>
			</div>
			
			<!-- <div class="col-6" id="pagenumbering">
						<div class="pagination-area mt-70">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">이전</a></li>
									<li class="page-item active"><a class="page-link" href="#">01</a></li>
									<li class="page-item"><a class="page-link" href="#">02</a></li>
									<li class="page-item"><a class="page-link" href="#">03</a></li>
									<li class="page-item"><a class="page-link" href="#">04</a></li>
									<li class="page-item"><a class="page-link" href="#">05</a></li>
									<li class="page-item"><a class="page-link" href="#">이후</a></li>
								</ul>
							</nav>
						</div>
			</div> -->

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
			'height' : '326px'
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

	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="resources/js/active.js"></script>
</body>

</html>