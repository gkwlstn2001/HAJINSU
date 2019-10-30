<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
<title>카페 지도(CafeMap)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
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

	<br />
	<br />

	<h1 id="mapname">CafeMap(카페 지도)</h1>

	<div id="map" style="width: 90%; height: 700px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2ee6c92474dfdeb528b57f280e472ffc"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new kakao.maps.LatLng(36.351213, 127.454311), // 지도의 중심좌표
			level : 13
		// 지도의 확대 레벨
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 마커를 표시할 위치와 title 객체 배열입니다
		var positions = [];
		
		<c:forEach items="${maplist}" var="maplist">
			positions.push({
				title : '카페(Cafe)',
				latlng : new kakao.maps.LatLng(${maplist.LATITUDE},${maplist.LONGITUDE})
			});
		</c:forEach>

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "resources/img/core-img/abc.ico";
		
		for (var i = 0; i < positions.length; i++) {

			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new kakao.maps.Size(35, 35);

			// 마커 이미지를 생성합니다    
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng, // 마커를 표시할 위치
				title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				image : markerImage
			// 마커 이미지 
			});
		}
	</script>

	<br />
	<br />

	<!-- ##### Contact Area Start ##### -->
	<!-- <section class="contact-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8 col-xl-9">
					<div class="contact-content mb-100">
						<h4 class="mb-50">We love seeing your feedback</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nunc tristique justo id elit bibendum pharetra non vitae lectus.
							Mauris libero felis, dapibus a ultrices sed, commodo vitae odio.
							Sed auctor tellus quis arcu tempus. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Etiam ac tincidunt nunc. Cras sed
							mollis erat.</p>

						<div class="row align-items-center mt-30 mb-50">
							<div class="col-12 col-lg-4">
								Single Contact Info
								<div class="single-contact-info d-flex align-items-center">
									<div class="icon mr-15">
										<img src="resources/img/core-img/placeholder.png" alt="">
									</div>
									<p>1481 Creekside Lane Avila Beach, CA 931</p>
								</div>

								Single Contact Info
								<div class="single-contact-info d-flex align-items-center">
									<div class="icon mr-15">
										<img src="resources/resources/img/core-img/smartphone.png"
											alt="">
									</div>
									<p>+53 345 7953 32453</p>
								</div>

								Single Contact Info
								<div class="single-contact-info d-flex align-items-center">
									<div class="icon mr-15">
										<img src="resources/img/core-img/message.png" alt="">
									</div>
									<p>yourmail@gmail.com</p>
								</div>
							</div>
							<div class="col-12 col-lg-8">
								##### Google Maps #####
								<div class="map-area">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22236.40558254599!2d-118.25292394686001!3d34.057682914027104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2z4Kay4Ka4IOCmj-CmnuCnjeCmnOCnh-CmsuCnh-CmuCwg4KaV4KeN4Kav4Ka-4Kay4Ka_4Kar4KeL4Kaw4KeN4Kao4Ka_4Kav4Ka84Ka-LCDgpq7gpr7gprDgp43gppXgpr_gpqgg4Kav4KeB4KaV4KeN4Kak4Kaw4Ka-4Ka34KeN4Kaf4KeN4Kaw!5e0!3m2!1sbn!2sbd!4v1532328708137"
										allowfullscreen></iframe>
								</div>
							</div>
						</div>

						Contact Form Area
						<div class="contact-form-area mb-70">
							<h4 class="mb-50">Get In Touch</h4>

							<form action="#" method="post">
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<input type="text" class="form-control" id="name"
												placeholder="Name">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="form-group">
											<input type="email" class="form-control" id="email"
												placeholder="E-mail">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<textarea name="message" class="form-control" id="message"
												cols="30" rows="10" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="col-12">
										<button class="btn bueno-btn mt-30" type="submit">Send</button>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- ##### Contact Area End ##### -->

	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
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