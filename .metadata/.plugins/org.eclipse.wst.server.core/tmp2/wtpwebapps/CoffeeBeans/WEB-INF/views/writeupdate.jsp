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
<title>글 수정 페이지(Write)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
.wrapper {
	background-color: #ffd699;
	background-size: cover;
	border: 5px solid black;
	width: 90%;
	height: 90%;
	margin: 0 auto;
}

.writer {
	text-align: center;
}

.writer1 {
	text-align: center;
	width: 70%;
	height: 70%;
}

.Title {
	text-align: center;
}

.Title1 {
	text-align: center;
	width: 70%;
	height: 70%;
}

.Content {
	text-align: center;
}

.Content1 {
	text-align: center;
	width: 70%;
	height: 70%;
}

.fileupload {
	margin-left: 34%;
}

.writeboard {
	margin-top: 50px;
	width: 100%;
	height: 100%;
}

.writebutton {
	margin: 0 auto;
	text-align: center;
}

.b {
	display: inline-block;
}

.c {
	text-align: center;
	width: 100%;
	height: 100%;
}

.d {
	text-align: center;
}

.e {
	text-align: center;
	width: 70%;
	height: 70%;
}

.picture {
	text-align: center;
	margin: 0 auto;
	width: 100%;
}

.f {
	display: none;
}

#map {
	margin: 0 auto;
	border: 2px solid brown;
}

#mapname {
	text-align: center;
}
.mapinfo {
	display:none;
}
.g {
	width: 1000px;
	display:none;
}
</style>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<body>

	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<br />

	<div class="wrapper">
		<!-- ##### Search Area Start ##### -->
		<form action="updateok" method="post" enctype="multipart/form-data">
			<div class="bueno-search-area section-padding-100-0 pb-70 bg-img"
				style="background-image: url(resources/img/core-img/pattern01.png);">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="col-12 col-sm-6 col-lg-3">
									<div class="form-group mb-30">
										<select class="form-control" id="vegan" name="ADMIN">
											<c:if test="${SessionEMAIL=='gkwlstn2001@naver.com'}">
												<option value="ADMINISTRATION" name="ADMINISTRATION">관리자</option>
											</c:if>
											<option value="NORMAL" name="NORMAL" selected>일반</option>
										</select>
									</div>
								</div>
								<div class="col-12 col-sm-6 col-lg-3">
									<div class="form-group mb-30">
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
										<select class="form-control" id="vegan" name="SCORE">
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
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ##### Search Area End ##### -->

			<div class="writeboard">

				<div class="d">
					<textarea class="e" rows="1" cols="80" name="WRITEDATE" readonly>작성일자</textarea>
				</div>
				<div class="d">
					<textarea class="e" rows="1" cols="80" name="VIEWSCOUNT" readonly>조회수</textarea>
				</div>

				<div class="writer">
					<textarea class="writer1" rows="1" cols="80" name="BBSID" readonly>${bbsdto.BBSID}</textarea>
				</div>

				<div class="writer">
					<textarea class="writer1" rows="1" cols="80" name="EMAIL" readonly>${bbsdto.EMAIL}</textarea>
				</div>


				<div class="Title">
					<textarea class="Title1" rows="2" cols="80" name="TITLE">${bbsdto.TITLE}
</textarea>
				</div>

				<div class="Content">
					<textarea class="Content1" rows="20" cols="80" name="CONTENT">${bbsdto.CONTENT}
</textarea>
				</div>
			</div>


			<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
			<div id="map" style="width: 70%; height: 300px;"></div>
			<p class="mapinfo">
				<em>지도를 클릭해주세요!</em>
			</p>
			<div class="mapinfo" id="clickLatlng" name="mapinformation"></div>
			<input type="text" value="" name="LATITUDE" id="mapinput" class="g" required>
			<input type="text" value="" name="LONGITUDE" id="mapinput2" class="g" required>

			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2ee6c92474dfdeb528b57f280e472ffc"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new kakao.maps.LatLng(${mapdto.LATITUDE},${mapdto.LONGITUDE}), 
					// 지도의 중심좌표
					level : 13
				// 지도의 확대 레벨
				};

				// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
				var map = new kakao.maps.Map(mapContainer, mapOption);
				
				// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
				var mapTypeControl = new kakao.maps.MapTypeControl();

				// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
				// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
				map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

				// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
				var zoomControl = new kakao.maps.ZoomControl();
				map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
				
				// 지도를 클릭한 위치에 표출할 마커입니다
				var marker = new kakao.maps.Marker({ 
				    // 지도 중심좌표에 마커를 생성합니다 
				    position: map.getCenter()
				}); 
				// 지도에 마커를 표시합니다
				marker.setMap(map);
				
				var iwContent = '<div style="padding:5px;"><a href="https://map.kakao.com/link/map/Hello World!,${mapdto.LATITUDE}, ${mapdto.LONGITUDE}" style="color:blue" target="_blank">큰지도보기/</a> <a href="https://map.kakao.com/link/to/Hello World!,${mapdto.LATITUDE}, ${mapdto.LONGITUDE}" style="color:blue" target="_blank">길찾기</a></div>', 
				// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				iwPosition = new kakao.maps.LatLng(${mapdto.LATITUDE}, ${mapdto.LONGITUDE}); //인포윈도우 표시 위치입니다

				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
				    position : iwPosition, 
				    content : iwContent 
				});
				  
				// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map, marker);

				// 지도에 클릭 이벤트를 등록합니다
				// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
				kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				    
				    // 클릭한 위도, 경도 정보를 가져옵니다
				    var latlng = mouseEvent.latLng; 
				    
				    // 마커 위치를 클릭한 위치로 옮깁니다
				    marker.setPosition(latlng);
				    
				    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
				    message += '경도는 ' + latlng.getLng() + ' 입니다';
				    
				    var latitude = latlng.getLat();
				    var longitutde = latlng.getLng();
				   	
				    var resultdiv = document.getElementById('clickLatlng');
				    resultdiv.innerHTML = message;
				    
				    $('input#mapinput').val(latitude);
				    $('input#mapinput2').val(longitutde);
				});
			</script>

			<div class="picture">
				<ul>
					<c:forEach items="${bbsfiledto}" var="bbsfiledtolist" varStatus="i"
						begin="0" end="4" step="1">
						<li class="b">
							<p>
								<label for="image">카페 후기이미지${i.count}</label> <br />
							<div class="f">
								<input name="FILEID${i.count}" value="${bbsfiledtolist.FILEID}">
							</div> <input multiple="multiple" type="file" name="BBS_FILE${i.count}"
							id="image${i.count}" required>
							</p>
							<div id="image_preview${i.count}">
								<img src="#" width="400px" height="400px" /> <br /> <a
									href="#">Remove</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="writebutton">
				<!-- <div class="col-12 col-sm-6 col-lg-3">
						<div class="form-group mb-30"> -->
				<button class="btn bueno-btn w-100">수정하기</button>
				<!-- </div>
					</div> -->
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

	<script type="text/javascript">
		/** 
		onchange event handler for the file input field.
		It emplements very basic validation using the file extension.
		If the filename passes validation it will show the image using it's blob URL  
		and will hide the input field and show a delete button to allow the user to remove the image
		 */

		$('#image1').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#image1').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview1 img').attr('src', blobURL).css({
					'width' : '300px',
					'maxWidth' : 'none',
					'height' : '300px'
				});
				$('#image_preview1').slideDown(); //업로드한 이미지 미리보기 
				/* $(this).slideUp(); //파일 양식 감춤 */
			}
		});

		/**
		onclick event handler for the delete button.
		It removes the image, clears and unhides the file input field.
		 */
		$('#image_preview1 a').bind('click', function() {
			resetFormElement($('#image1')); //전달한 양식 초기화
			$('#image1').slideDown(); //파일 양식 보여줌
			$(this).parent().slideUp(); //미리 보기 영역 감춤
			return false; //기본 이벤트 막음
		});

		/** 
		 * 폼요소 초기화 
		 * Reset form element
		 * 
		 * @param e jQuery object
		 */
		function resetFormElement(e) {
			e.wrap('<form>').closest('form').get(0).reset();
			//리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
			//요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
			//DOM에서 제공하는 초기화 메서드 reset()을 호출
			e.unwrap(); //감싼 <form> 태그를 제거
		}

		/** 
		onchange event handler for the file input field.
		It emplements very basic validation using the file extension.
		If the filename passes validation it will show the image using it's blob URL  
		and will hide the input field and show a delete button to allow the user to remove the image
		 */

		$('#image2').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#image2').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview2 img').attr('src', blobURL).css({
					'width' : '300px',
					'maxWidth' : 'none',
					'height' : '300px'
				});
				$('#image_preview2').slideDown(); //업로드한 이미지 미리보기 
				/* $(this).slideUp(); //파일 양식 감춤 */
			}
		});

		/**
		onclick event handler for the delete button.
		It removes the image, clears and unhides the file input field.
		 */
		$('#image_preview2 a').bind('click', function() {
			resetFormElement($('#image2')); //전달한 양식 초기화
			$('#image2').slideDown(); //파일 양식 보여줌
			$(this).parent().slideUp(); //미리 보기 영역 감춤
			return false; //기본 이벤트 막음
		});

		/** 
		 * 폼요소 초기화 
		 * Reset form element
		 * 
		 * @param e jQuery object
		 */
		function resetFormElement(e) {
			e.wrap('<form>').closest('form').get(0).reset();
			//리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
			//요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
			//DOM에서 제공하는 초기화 메서드 reset()을 호출
			e.unwrap(); //감싼 <form> 태그를 제거
		}

		/** 
		onchange event handler for the file input field.
		It emplements very basic validation using the file extension.
		If the filename passes validation it will show the image using it's blob URL  
		and will hide the input field and show a delete button to allow the user to remove the image
		 */

		$('#image3').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#image3').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview3 img').attr('src', blobURL).css({
					'width' : '300px',
					'maxWidth' : 'none',
					'height' : '300px'
				});
				$('#image_preview3').slideDown(); //업로드한 이미지 미리보기 
				/* $(this).slideUp(); //파일 양식 감춤 */
			}
		});

		/**
		onclick event handler for the delete button.
		It removes the image, clears and unhides the file input field.
		 */
		$('#image_preview3 a').bind('click', function() {
			resetFormElement($('#image3')); //전달한 양식 초기화
			$('#image3').slideDown(); //파일 양식 보여줌
			$(this).parent().slideUp(); //미리 보기 영역 감춤
			return false; //기본 이벤트 막음
		});

		/** 
		 * 폼요소 초기화 
		 * Reset form element
		 * 
		 * @param e jQuery object
		 */
		function resetFormElement(e) {
			e.wrap('<form>').closest('form').get(0).reset();
			//리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
			//요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
			//DOM에서 제공하는 초기화 메서드 reset()을 호출
			e.unwrap(); //감싼 <form> 태그를 제거
		}

		/** 
		onchange event handler for the file input field.
		It emplements very basic validation using the file extension.
		If the filename passes validation it will show the image using it's blob URL  
		and will hide the input field and show a delete button to allow the user to remove the image
		 */

		$('#image4').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#image4').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview4 img').attr('src', blobURL).css({
					'width' : '300px',
					'maxWidth' : 'none',
					'height' : '300px'
				});
				$('#image_preview4').slideDown(); //업로드한 이미지 미리보기 
				/* $(this).slideUp(); //파일 양식 감춤 */
			}
		});

		/**
		onclick event handler for the delete button.
		It removes the image, clears and unhides the file input field.
		 */
		$('#image_preview4 a').bind('click', function() {
			resetFormElement($('#image4')); //전달한 양식 초기화
			$('#image4').slideDown(); //파일 양식 보여줌
			$(this).parent().slideUp(); //미리 보기 영역 감춤
			return false; //기본 이벤트 막음
		});

		/** 
		 * 폼요소 초기화 
		 * Reset form element
		 * 
		 * @param e jQuery object
		 */
		function resetFormElement(e) {
			e.wrap('<form>').closest('form').get(0).reset();
			//리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
			//요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
			//DOM에서 제공하는 초기화 메서드 reset()을 호출
			e.unwrap(); //감싼 <form> 태그를 제거
		}
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