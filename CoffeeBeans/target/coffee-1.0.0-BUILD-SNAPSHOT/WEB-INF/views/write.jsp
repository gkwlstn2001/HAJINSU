<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bueno - Food Blog HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="resources/ddd.css">

</head>
<style>
	.wrapper {
		background-image:url("resources/img/bg-img/coffeeimg01.jpg");
		background-size:cover;
		border:5px solid black;
		width:1100px;
		height:1050px;
		margin: 0 auto;
	}
	.writer {
		text-align:center;
	}
	.writer1 {
		text-align:center;
	}
	.Title {
		text-align:center;
	}
	.Title1 {
		text-align:center;
	}
	.Content {
		text-align:center;
	}
	.Content1 {
		text-align:center;
	}
	.fileupload {
		text-align:center;
	}
	.writeboard {
		margin-top:50px;
	}
	.writebutton {
		margin-left:40%;
	}
</style>

<body>
    
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
    
    <br/>
	
    <div class="wrapper">
    
		<!-- ##### Search Area Start ##### -->
    <div class="bueno-search-area section-padding-100-0 pb-70 bg-img" style="background-image: url(resources/img/core-img/pattern01.png);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="recipe">
                                      <option value="">지역</option>
                                      <option value="">서울특별시</option>
                                      <option value="">경기도</option>
                                      <option value="">강원도</option>
                                      <option value="">충청북도</option>
                                      <option value="">충청남도</option>
                                      <option value="">전라북도</option>
                                      <option value="">전라남도</option>
                                      <option value="">경상북도</option>
                                      <option value="">경상남도</option>
                                      <option value="">제주특별시</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
							
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="vegan">
                                      <option value="">맛</option>
                                      <option value="">단맛</option>
                                      <option value="">신맛</option>
                                      <option value="">짠맛</option>
                                      <option value="">쓴맛</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="ingredients">
                                      <option value="">서비스</option>
                                      <option value="">좋음</option>
                                      <option value="">보통</option>
                                      <option value="">나쁨</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="ingredients">
                                      <option value="">인테리어</option>
                                      <option value="">좋음</option>
                                      <option value="">보통</option>
                                      <option value="">나쁨</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="form-group mb-30">
                                    <select class="form-control" id="ingredients">
                                      <option value="">분위기</option>
                                      <option value="">좋음</option>
                                      <option value="">보통</option>
                                      <option value="">나쁨</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Search Area End ##### -->
	   	
	<div class="writeboard">
	   	
   		<div class="writer">
   			<textarea class="writer1" rows="1" cols="80" name="" readonly>글쓴이</textarea>
   		</div>
   		
	    <div class="Title">
	    		<textarea class="Title1" rows="2" cols="80" name="Title">제목</textarea>
	    </div>
	    
	    <div class="Content">
	    	<textarea class="Content1" rows="20" cols="80" name="contents">내용</textarea>
		</div>
		
		<div class="fileupload">
		    	<input type="file" name=""></input>
		</div>
		
		<br/>
		<br/>
		
		<div class="writebutton">
              <div class="col-12 col-sm-6 col-lg-3">
                  <div class="form-group mb-30">
                      <button class="btn bueno-btn w-100">글쓰기</button>
                  </div>
              </div>
        </div>
		
	</div>
    </div>
    
    <br/>
    
    </div>

    <jsp:include page="/WEB-INF/views/includes/footer.jsp"/>

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