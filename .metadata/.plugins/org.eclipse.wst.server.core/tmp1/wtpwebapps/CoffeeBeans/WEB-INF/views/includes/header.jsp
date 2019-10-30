<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>커피콩스(CoffeeBeans)</title>

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
	color: brown;
}
.c {
	float:right;
}
</style>

<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-content">
			<h3>Cooking in progress..</h3>
			<div id="cooking">
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div id="area">
					<div id="sides">
						<div id="pan"></div>
						<div id="handle"></div>
					</div>
					<div id="pancake">
						<div id="pastry"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Top Header Area -->
		<div class="top-header-area bg-img bg-overlay"
			style="background-image: url(resources/img/bg-img/header1.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center justify-content-between">
					<div class="col-12 col-sm-6">
						<!-- Top Social Info -->
						<div class="top-social-info">
							<a href="https://www.pinterest.co.kr/" data-toggle="tooltip"
								data-placement="bottom" title="Pinterest"><i
								class="fa fa-pinterest" aria-hidden="true"></i></a> <a
								href="https://www.facebook.com/" data-toggle="tooltip"
								data-placement="bottom" title="Facebook"><i
								class="fa fa-facebook" aria-hidden="true"></i></a> <a
								href="https://twitter.com/?lang=ko" data-toggle="tooltip"
								data-placement="bottom" title="Twitter"><i
								class="fa fa-twitter" aria-hidden="true"></i></a> <a
								href="https://dribbble.com/" data-toggle="tooltip"
								data-placement="bottom" title="Dribbble"><i
								class="fa fa-dribbble" aria-hidden="true"></i></a> <a
								href="https://www.behance.net/" data-toggle="tooltip"
								data-placement="bottom" title="Behance"><i
								class="fa fa-behance" aria-hidden="true"></i></a> <a
								href="https://kr.linkedin.com/" data-toggle="tooltip"
								data-placement="bottom" title="Linkedin"><i
								class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-lg-5 col-xl-4">
						<!-- Top Search Area -->
						<div class="top-search-area">
							<form action="#" method="post">
								<input type="search" name="top-search" id="topSearch"
									placeholder="Search">
								<button type="submit" class="btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Logo Area -->
		<div class="logo-area">
			<a href="/"><img class="logo"
				src="resources/img/core-img/newlogo.png" alt=""></a>
		</div>

		<!-- Navbar Area -->
		<div class="bueno-main-menu" id="sticker">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="buenoNav">

						<!-- Toggler -->
						<div id="toggler">
							<img src="resources/img/core-img/toggler.png" alt="">
						</div>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="/">Home</a></li>
									<li><a href="about">About Us</a></li>
									<li><a href="notice">Notice</a></li>
									<li><a href="board">Board</a></li>
									<li><a href="map">CafeMap</a></li>
									<li><a href="voclist">VOC</a></li>
									<!-- <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="catagory.html">Catagory</a></li>
                                            <li><a href="catagory-post.html">Catagory Post</a></li>
                                            <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="receipe.html">Recipe</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                        </div>
                                    </li> -->
								</ul>

								<c:choose>
									<c:when test="${SessionEMAIL==null}">
										<!-- Login/Register -->
										<div class="login-area">
											<a href="/login">Login / </a> <a href="/signup">Register</a>
										</div>
									</c:when>
									<c:when test="${SessionEMAIL=='gkwlstn2001@naver.com'}">
										<!-- <div class="login-area"> -->
										<ul id="loginbar">
											<li class="a">
												<h6>
													<li class="a"><h6 class="b">[관리자]</h6></li>
													<li class="a"><a href="#">${SessionEMAIL}</a>
														<ul class="dropdown">
															<li><a href="adminpage">관리자 페이지</a></li>
															<li><a href="/signupdelete">회원탈퇴</a></li>
														</ul>
													</li>
													/
												</h6>
											</li>
											<li class="a"><a href="/logout">Logout</a></li>
										</ul>
										<!-- </div> -->
										<!-- <ul>
											<li class="a"><a href="#">Member</a>
												<ul class="dropdown">
													<li><a href="#">Update</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</li>
										</ul> -->
									</c:when>
									<c:otherwise>
										<!-- <div class="login-area"> -->
											<ul id="loginbar">
												<li class="a">
													<h6>
														<li class="a"><h6 class="b">[로그인]</h6></li> 
														<li class="a"><a href="#">${SessionEMAIL}</a>
															<ul class="dropdown">
																<li><a href="/signupupdate">회원정보 수정</a></li>
																<li><a href="/signupdelete">회원탈퇴</a></li>
															</ul>
														</li>
														/
													</h6>
												</li>
												<li class="a"><a href="/logout">Logout</a></li>
											</ul>
										<!-- </div> -->
										<!-- <ul>
											<li class="a"><a href="#">Member</a>
												<ul class="dropdown">
													<li><a href="#">Update</a></li>
													<li><a href="#">Delete</a></li>
												</ul></li>
										</ul> -->
									</c:otherwise>
								</c:choose>
							</div>
							<!-- Nav End -->

						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Treading Post Area Start ##### -->
	<div class="treading-post-area" id="treadingPost">
		<div class="close-icon">
			<i class="fa fa-times"></i>
		</div>

		<h4>'커피(Coffee)' 관련 추천사이트</h4>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="http://www.micoffee.co.kr/" target="_blank"><img id="firstimg" src="resources/img/bg-img/9.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">원두 판매 사이트</a> 
				<a href="http://www.micoffee.co.kr/" class="post-title" target="_blank">M I Coffee(엠 아이 커피)</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">동남아시아 / 남아메리카 등등 <br/> 해당 지역에서 생산된 수입원두의 <br/> 구입이 가능한 사이트</a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="http://coffee2u.co.kr/" target="_blank"><img id="firstimg2" src="resources/img/bg-img/10.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">원두 커피 쇼핑몰</a> 
				<a href="http://coffee2u.co.kr/"class="post-title" target="_blank">Coffee2U(커피투유)</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">드립백커피 / 더치커피 / <br/> 스페셜티커피 / 싱글오리진 / <br/> 블랜드커피 뿐만아니라 <br/> 커피선물세트 or 커피용품의 <br/> 구매가 가능한 사이트</a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="http://www.retreebean.co.kr/shop/main/index.php" target="_blank"><img id="firstimg3" src="resources/img/bg-img/11.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">원두 / 차 및 커피머신 판매사이트</a> 
				<a href="http://www.retreebean.co.kr/shop/main/index.php" class="post-title" target="_blank">ReTreeBean(리트리빈)</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">아시아 / 중남미 / 아시아,태평양 / <br/> 세계3대 커피 / 블랜딩 생두 뿐만 아니라, 허브차와 같은 차도 판매하며, 커피머신도 구매가능한 사이트</a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="https://penielcompany.modoo.at/" target="_blank"><img id="firstimg4" src="resources/img/bg-img/12.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">바리스타 교육기관</a> 
				<a href="https://penielcompany.modoo.at/" class="post-title" target="_blank">브니엘 커피 로스터스</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">로스팅 마스터 / 커피 커핑 마스터 / 핸드드립 마스터 / 에스프레소 마스터 / 라떼아스 마스터 등 <br/> 바리스타 교육 사이트</a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="https://brownbagcoffee.co.kr/" target="_blank"><img id="firstimg5" src="resources/img/bg-img/13.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">홈카페 원두추천 사이트</a> 
				<a href="https://brownbagcoffee.co.kr/" class="post-title" target="_blank">BrownBag Coffee(브라운백 커피)</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">커피 시음을 통해 나만의 홈카페를 <br/> 구성하는데 도움을 추는 <br/> 원두추천 및 구매사이트</a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<a href="http://ssadagucoffee.co.kr/" target="_blank"><img id="firstimg6" src="resources/img/bg-img/14.PNG" alt=""></a>
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">가성비의 저렴한 커피 추천사이트</a> 
				<a href="http://ssadagucoffee.co.kr/" class="post-title" target="_blank">SDG커피(싸다구커피)</a>
				<div class="post-meta">
					<a href="#" class="post-date">October 03, 2019</a> 
					<a href="#" class="post-author">200G ~ 1KG 까지 다양한 용량의 <br/> 커피를 가성비 좋게 저렴하게 <br/> 이용할 수 있게 해주는 사이트</a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Treading Post Area End ##### -->
	
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
	
	<script>
		$('ul#loginbar').css({
			'margin-left':'0%'
		})
		$('img#firstimg').css({
			'width':'100%',
			'height':'100%'
		})
		$('img#firstimg2').css({
			'width':'100%',
			'height':'100%'
		})
		$('img#firstimg3').css({
			'width':'100%',
			'height':'100%'
		})
		$('img#firstimg4').css({
			'width':'100%',
			'height':'100%'
		})
		$('img#firstimg5').css({
			'width':'100%',
			'height':'100%'
		})
		$('img#firstimg6').css({
			'width':'100%',
			'height':'100%'
		})
	</script>
	
</body>
</html>