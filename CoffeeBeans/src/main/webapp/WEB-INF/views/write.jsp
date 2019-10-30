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
<title>글작성 페이지(Write)</title>

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

#map {
	margin: 0 auto;
	border: 3px solid #6B4928;
}

#mapname {
	text-align: center;
}

.mapinfo {
	display: none;
}

.f {
	width: 1000px;
	display: none;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>


<body>

	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<br />

	<div class="wrapper">

		<!-- ##### Search Area Start ##### -->
		<form action="writeok" method="post" enctype="multipart/form-data">
			<div class="bueno-search-area section-padding-100-0 pb-70 bg-img"
				style="background-image: url(resources/img/core-img/pattern01.png);">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="col-12 col-sm-6 col-lg-3" id="selectleft">
									<div class="form-group mb-30">
										<select class="form-control" id="vegan" name="ADMIN">
											<c:if test="${SessionEMAIL=='gkwlstn2001@naver.com'}">
												<option value="ADMINISTRATION" name="ADMINISTRATION">관리자</option>
											</c:if>
											<option value="NORMAL" name="NORMAL" selected>일반</option>
										</select>
									</div>
								</div>
								<div class="col-16 col-sm-6 col-lg-3">
									<div class="form-group mb-30" id="select">
										<select class="form-control" id="recipe" name="REGION">
											<!-- <option value="시 / 도" name="categoryregion">시 / 도</option> -->
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

								<div class="col-16 col-sm-6 col-lg-3">
									<div class="form-group mb-30">
										<select class="form-control" id="vegan" name="SCORE">
											<!-- <option value="categoryscore" name="categoryscore">평점
												(☆☆☆☆☆)</option> -->
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
					<textarea class="e" rows="1" cols="80" name="WRITEDATE" id="displaynone" readonly>작성일자</textarea>
				</div>
				<div class="d">
					<textarea class="e" rows="1" cols="80" name="VIEWSCOUNT" id="displaynone" readonly>조회수</textarea>
				</div>

				<div class="writer">
					<textarea class="writer1" rows="1" cols="80" name="EMAIL" readonly>${SessionEMAIL}</textarea>
				</div>

				<div class="Title">
					<textarea class="Title1" rows="2" cols="80" name="TITLE">[제목]
</textarea>
				</div>

				<div class="Content">
					<textarea class="Content1" rows="20" cols="80" name="CONTENT">[내용]
</textarea>
				</div>
			</div>
			
			<div class="picture">
				<ul>
					<li class="b">
						<p>
							<label for="image">카페 후기이미지1</label> <br /> <input
								multiple="multiple" type="file" name="BBS_FILE1" id="image"
								required />
						</p>
						<div id="image_preview">
							<img src="#" width="400px" height="400px" /> <br /> <a href="#">Remove</a>
						</div>
					</li>

					<li class="b">
						<p>
							<label for="image">카페 후기이미지2</label> <br /> <input
								multiple="multiple" type="file" name="BBS_FILE2" id="image2"
								required />
						</p>
						<div id="image_preview2">
							<img src="#" width="400px" height="400px" /> <br /> <a href="#">Remove</a>
						</div>
					</li>

					<li class="b">
						<p>
							<label for="image">카페 후기이미지3</label> <br /> <input
								multiple="multiple" type="file" name="BBS_FILE3" id="image3"
								required />
						</p>
						<div id="image_preview3">
							<img src="#" width="400px" height="400px" /> <br /> <a href="#">Remove</a>
						</div>
					</li>

					<li class="b">
						<p>
							<label for="image">카페 후기이미지4</label> <br /> <input
								multiple="multiple" type="file" name="BBS_FILE4" id="image4"
								required />
						</p>
						<div id="image_preview4">
							<img src="#" width="400px" height="400px" /> <br /> <a href="#">Remove</a>
						</div>
					</li>
				</ul>
			</div>
			
			<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
			<div class="map_wrap">
				<div id="map"
					style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<div>

							키워드 : <input type="text" value="폴리텍" id="keyword" size="15">
							<button onclick="searchPlaces(); return false;">검색하기</button>

						</div>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
			<p class="mapinfo">
				<em>지도를 클릭해주세요!</em>
			</p>
			<div class="mapinfo" id="clickLatlng" name="mapinformation"></div>
			<input type="text" value="" name="LATITUDE" id="mapinput" class="f"
				required> <input type="text" value="" name="LONGITUDE"
				id="mapinput2" class="f" required>

			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2ee6c92474dfdeb528b57f280e472ffc&libraries=services"></script>
			<script>
				// 마커를 담을 배열입니다
				var markers = [];

				var mapContainer = document.getElementById('map'), // 지도를 표시할 div
				mapOption = {
					center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};

				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption);

				//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
				var mapTypeControl = new kakao.maps.MapTypeControl();

				// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
				// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
				map.addControl(mapTypeControl,
						kakao.maps.ControlPosition.TOPRIGHT);

				// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
				var zoomControl = new kakao.maps.ZoomControl();
				map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

				// 지도를 클릭한 위치에 표출할 마커입니다
				var marker = new kakao.maps.Marker({
					// 지도 중심좌표에 마커를 생성합니다 
					position : map.getCenter()
				});
				// 지도에 마커를 표시합니다
				marker.setMap(map);

				// 지도에 클릭 이벤트를 등록합니다
				// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
				kakao.maps.event.addListener(map, 'click',
						function(mouseEvent) {

							// 클릭한 위도, 경도 정보를 가져옵니다
							var latlng = mouseEvent.latLng;

							// 마커 위치를 클릭한 위치로 옮깁니다
							marker.setPosition(latlng);

							var message = '클릭한 위치의 위도는 ' + latlng.getLat()
									+ ' 이고, ';
							message += '경도는 ' + latlng.getLng() + ' 입니다';

							var latitude = latlng.getLat();
							var longitutde = latlng.getLng();

							var resultdiv = document
									.getElementById('clickLatlng');
							resultdiv.innerHTML = message;

							$('input#mapinput').val(latitude);
							$('input#mapinput2').val(longitutde);
						});

				// 장소 검색 객체를 생성합니다
				var ps = new kakao.maps.services.Places();

				// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
					zIndex : 1
				});

				// 키워드로 장소를 검색합니다
				searchPlaces();

				// 키워드 검색을 요청하는 함수입니다
				function searchPlaces() {

					var keyword = document.getElementById('keyword').value;

					if (!keyword.replace(/^\s+|\s+$/g, '')) {
						alert('키워드를 입력해주세요!');
						return false;
					}

					// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
					ps.keywordSearch(keyword, placesSearchCB);
				}

				// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
				function placesSearchCB(data, status, pagination) {
					if (status === kakao.maps.services.Status.OK) {

						// 정상적으로 검색이 완료됐으면
						// 검색 목록과 마커를 표출합니다
						displayPlaces(data);

						// 페이지 번호를 표출합니다
						displayPagination(pagination);

					} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

						alert('검색 결과가 존재하지 않습니다.');
						return;

					} else if (status === kakao.maps.services.Status.ERROR) {

						alert('검색 결과 중 오류가 발생했습니다.');
						return;

					}
				}

				// 검색 결과 목록과 마커를 표출하는 함수입니다
				function displayPlaces(places) {

					var listEl = document.getElementById('placesList'), menuEl = document
							.getElementById('menu_wrap'), fragment = document
							.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

					// 검색 결과 목록에 추가된 항목들을 제거합니다
					removeAllChildNods(listEl);

					// 지도에 표시되고 있는 마커를 제거합니다
					removeMarker();

					for (var i = 0; i < places.length; i++) {

						// 마커를 생성하고 지도에 표시합니다
						var placePosition = new kakao.maps.LatLng(places[i].y,
								places[i].x), marker = addMarker(placePosition,
								i), itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

						// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
						// LatLngBounds 객체에 좌표를 추가합니다
						bounds.extend(placePosition);

						// 마커와 검색결과 항목에 mouseover 했을때
						// 해당 장소에 인포윈도우에 장소명을 표시합니다
						// mouseout 했을 때는 인포윈도우를 닫습니다
						(function(marker, title) {
							kakao.maps.event.addListener(marker, 'mouseover',
									function() {
										displayInfowindow(marker, title);
									});

							kakao.maps.event.addListener(marker, 'mouseout',
									function() {
										infowindow.close();
									});

							itemEl.onmouseover = function() {
								displayInfowindow(marker, title);
							};

							itemEl.onmouseout = function() {
								infowindow.close();
							};
						})(marker, places[i].place_name);

						fragment.appendChild(itemEl);
					}

					// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
					listEl.appendChild(fragment);
					menuEl.scrollTop = 0;

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}

				// 검색결과 항목을 Element로 반환하는 함수입니다
				function getListItem(index, places) {

					var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
							+ (index + 1)
							+ '"></span>'
							+ '<div class="info">'
							+ '   <h5>' + places.place_name + '</h5>';

					if (places.road_address_name) {
						itemStr += '    <span>' + places.road_address_name
								+ '</span>' + '   <span class="jibun gray">'
								+ places.address_name + '</span>';
					} else {
						itemStr += '    <span>' + places.address_name
								+ '</span>';
					}

					itemStr += '  <span class="tel">' + places.phone
							+ '</span>' + '</div>';

					el.innerHTML = itemStr;
					el.className = 'item';

					return el;
				}

				// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
				function addMarker(position, idx, title) {
					var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
					imgOptions = {
						spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
						spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
						offset : new kakao.maps.Point(13, 37)
					// 마커 좌표에 일치시킬 이미지 내에서의 좌표
					}, markerImage = new kakao.maps.MarkerImage(imageSrc,
							imageSize, imgOptions), marker = new kakao.maps.Marker(
							{
								position : position, // 마커의 위치
								image : markerImage
							});

					marker.setMap(map); // 지도 위에 마커를 표출합니다
					markers.push(marker); // 배열에 생성된 마커를 추가합니다

					return marker;
				}

				// 지도 위에 표시되고 있는 마커를 모두 제거합니다
				function removeMarker() {
					for (var i = 0; i < markers.length; i++) {
						markers[i].setMap(null);
					}
					markers = [];
				}

				// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
				function displayPagination(pagination) {
					var paginationEl = document.getElementById('pagination'), fragment = document
							.createDocumentFragment(), i;

					// 기존에 추가된 페이지번호를 삭제합니다
					while (paginationEl.hasChildNodes()) {
						paginationEl.removeChild(paginationEl.lastChild);
					}

					for (i = 1; i <= pagination.last; i++) {
						var el = document.createElement('a');
						el.href = "#";
						el.innerHTML = i;

						if (i === pagination.current) {
							el.className = 'on';
						} else {
							el.onclick = (function(i) {
								return function() {
									pagination.gotoPage(i);
								}
							})(i);
						}

						fragment.appendChild(el);
					}
					paginationEl.appendChild(fragment);
				}

				// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
				// 인포윈도우에 장소명을 표시합니다
				function displayInfowindow(marker, title) {
					var content = '<div style="padding:5px;z-index:1;">'
							+ title + '</div>';

					infowindow.setContent(content);
					infowindow.open(map, marker);
				}

				// 검색결과 목록의 자식 Element를 제거하는 함수입니다
				function removeAllChildNods(el) {
					while (el.hasChildNodes()) {
						el.removeChild(el.lastChild);
					}
				}
			</script>

			<br /> <br />

			<div>
				<!-- <div class="col-12 col-sm-6 col-lg-3">
						<div class="form-group mb-30"> -->
				<button class="btn bueno-btn w-100" onclick="writebutton()">글쓰기</button>
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

		$('#image').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#image').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview img').attr('src', blobURL).css({
					'width' : '300px',
					'maxWidth' : 'none',
					'height' : '300px'
				});
				$('#image_preview').slideDown(); //업로드한 이미지 미리보기 
				/* $(this).slideUp(); //파일 양식 감춤 */
			}
		});

		/**
		onclick event handler for the delete button.
		It removes the image, clears and unhides the file input field.
		 */
		$('#image_preview a').bind('click', function() {
			resetFormElement($('#image')); //전달한 양식 초기화
			$('#image').slideDown(); //파일 양식 보여줌
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

	<script>
		function writebutton() {
			if ($('input#mapinput').val() == ""
					|| $('input#mapinput').val() == null
					&& $('input#mapinput2').val() == ""
					|| $('input#mapinput2').val() == null) {
				alert("지도에 카페위치를 클릭해주셔야 글쓰기가 가능합니다.");
			} else {

			}
		}
	</script>
	
	<script>
		$('textarea#displaynone').css({
			'display':'none'
		})
		$('div#selectleft').css({
			'margin-left':'12%'
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