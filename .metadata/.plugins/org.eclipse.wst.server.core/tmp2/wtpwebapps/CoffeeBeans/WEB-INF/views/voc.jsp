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
<title>고객의 소리(Voice Of Customer)</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/abc.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
	.a {
		margin:0 auto;
	}
</style>

<body>
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />

	<!-- Contact Form Area -->
	<div class="contact-form-area mb-70" id="alldiv">
		<br/>
		<h4 class="mb-50" id="TITLENAME">고객의 소리(VOC)</h4>

		<form action="vocwriteok" method="post" enctype="multipart/form-data">
		
				<div class="col-lg-6"  id="EMAILBOX">
					<div class="form-group">
						<input type="EMAIL" class="form-control" id="EMAIL" name="EMAIL" placeholder="EMAIL" value="${SessionEMAIL}" readonly>
					</div>
				</div>
			<div class="row">
				<div class="col-lg-6" id="TITLEBOX">
					<div class="form-group" >
						<textarea class="form-control" id="TITLE" name="TITLE" cols="1" rows="1" placeholder="제목"></textarea>
					</div>
				</div>
				<div class="col-12" id="CONTENTBOX">
					<div class="form-group">
						<textarea class="form-control" id="CONTENT" name="CONTENT" cols="30" rows="10" placeholder="내용"></textarea>
					</div>
				</div>
				
				<div class="a" id="picturebox">
					<p>
						<label for="image" id="labeltext">개선사항 첨부이미지</label> <br /> 
						<input type="file" name="VOC_FILE" id="image" required/>
					</p>
					<div id="image_preview">
						<img src="#" width="400px" height="400px" /> <br /> 
						<a href="#" id="remove">Remove</a>
					</div>
				</div>
				<button class="btn bueno-btn mt-30" id="submitbutton" type="submit">Send</button>
			</div>
		</form>
	</div>

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
	</script>
	
	<script>
		$('div#alldiv').css({
			'margin':'0 auto',
			'width':'80%',
			'height':'100%',
			'border':'5px solid black',
			'background-color':'#956637'
		})
		$('h4#TITLENAME').css({
			'text-align':'center',
			'color':'white'
		})
		$('input#EMAIL').css({
			'color':'black',
			'font-weight':'bold',
			'text-align':'center',
			'border':'5px solid black'
		})
		$('textarea#TITLE').css({
			'color':'black',
			'font-weight':'bold',
			'text-align':'center',
			'width':'90%',
			'height':'50px',
			'margin':'0 auto',
			'border':'5px solid black'
		})
		$('textarea#CONTENT').css({
			'color':'black',
			'font-weight':'bold',
			'text-align':'center',
			'width':'90%',
			'margin':'0 auto',
			'border':'5px solid black'
		})
		$('label#labeltext').css({
			'color':'white',
			'font-weight':'bold'
		})
		$('div#EMAILBOX').css({
			'margin':'0 auto'
		})
		$('div#TITLEBOX').css({
			'margin':'0 auto'
		})
		$('div#CONTENTBOX').css({
			'width':'50%',
			'margin':'0 auto'
		})
		$('div#picturebox').css({
			'margin':'0 auto',
			'text-align':'center'
		})
		$('button#submitbutton').css({
			'margin':'0 auto',
			'background-color':'black'
		})
		$('a#remove').css({
			'color':'white'
		})
		$('input#image').css({
			'color':'white'
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