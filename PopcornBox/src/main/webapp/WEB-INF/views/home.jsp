<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POPCORN BOX</title>

    <script src="https://kit.fontawesome.com/a39158855c.js" crossorigin="anonymous"></script>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css"
	type="text/css">
<!-- <link rel="stylesheet" href="./resources/css/nice-select.css"
	type="text/css"> -->
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/style.css" type="text/css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>



<body>         

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
            <ul>
            	<c:if test="${empty signInUserNickname}">
					<%-- 로그인 되어 있지 않은 경우 --%>
					<li><a href="./user/signin">로그인</a></li>
		            <li><a href="./user/register">회원가입</a></li>
		            <li><a href="./user/mypage">마이페이지</a></li>
				</c:if>
				<c:if test="${not empty signInUserNickname}">
					<%-- 로그인 되어 있는 경우 --%>
					<c:if test="${empty accessToken}">
						<%-- 일반 로그인의 경우 --%>  
						<li><span>${signInUserNickname} 님</span></li>
						<li><a href="./user/signout">로그아웃</a></li>
			            <li><a href="./user/mypage">마이페이지</a></li>
		             </c:if>	 
		             <c:if test="${not empty accessToken}">
		                <%-- 카카오 로그인의 경우 --%>  
			            <li><span>${signInUserNickname} 님</span></li>
			            <li><a href="https://kauth.kakao.com/oauth/logout?client_id=cc1754dab9a17adb7dd44164ff108ba7&logout_redirect_uri=http://localhost:8181/pjt/user/kakaologout">로그아웃</a></li>
			            <li><a href="./user/mypage">마이페이지</a></li>
					 </c:if>	 
				</c:if>	           					
            </ul>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>POPCORN BOX</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
	                <div class="container">
	                    <div class="row">
	                        <div class="col-lg-6 col-md-7">
	                            <div class="header__top__left">
	                                  <a href=""><img src="./resources/img/popcornbox_logo.png" alt="logo"></a>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-5">
	                            <div class="header__top__right">
	                                <div class="header__top__links">
	                                	<c:if test="${empty signInUserNickname}">
											<%-- 로그인 되어 있지 않은 경우 --%>
											<a href="./user/signin"><i class="fa-solid fa-lock"></i>로그인</a>
		                                    <a href="./user/register"><i class="fa-solid fa-user-plus"></i>회원가입</a>
		                                    <a href="./user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
										</c:if>
										<c:if test="${not empty signInUserNickname}">
											<%-- 로그인 되어 있는 경우 --%>
											<c:if test="${empty accessToken}">
												<%-- 일반 로그인의 경우 --%>  
												<span>${signInUserNickname} 님</span><br>
												<a href="./user/signout"><i class="fa-solid fa-lock"></i>로그아웃</a>
			                                    <a href="./user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
		                                    </c:if>	 
		                                    <c:if test="${not empty accessToken}">
		                                    	<%-- 카카오 로그인의 경우 --%>  
			                                    <span>${signInUserNickname} 님</span><br>
			                                    <a href="https://kauth.kakao.com/oauth/logout?client_id=cc1754dab9a17adb7dd44164ff108ba7&logout_redirect_uri=http://localhost:8181/pjt/user/kakaologout">
			                                    	<i class="fa-solid fa-lock"></i>로그아웃</a>
			                                    <a href="./user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
											</c:if>	 
										</c:if>	                
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
        <div class="container">
            <div class="row" class="header__row__">

                <div class="col-md-7 col-md-4">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="">홈</a></li>
                            <li><a href="./movie/mainlist">차트</a></li>
                            <li><a href="./board/main">커뮤니티</a></li>
                            <li><a href="./event/main">이벤트</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="search_option">
                    <div class="header__nav__option">
                         <div>
							<form name="search" align="right" style="margin-right:20px;" method = "get"  
								action ="./movie/search" >
			                    <select name="type"  id="type" class="search" style="padding-bottom: 1px;">
			                        <option value="1">제목</option>
			                        <option value="2">배우</option>
			                        <option value="3">감독</option>
			                        <option value="4">장르</option>
			                    </select>
			                    <input class="search" type="text" name="keyword" placeholder="검색어 입력" id="search_area"
			                    	required oninvalid="this.setCustomValidity('검색어를 입력하세요.')"
											 oninput = "setCustomValidity('')"/>
			                    <input class="btn" type="submit" value="" />
					    <div id="recommend" class="text-center"></div>
			                </form>
			            </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Banner Section Begin -->
<!--  <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="./resources/img/banner_main_2.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h2>더 배트맨</h2>
                                <p>히어로의 세대교체,<br> 어둠을 뚫고 그가 온다</p>
                                <a href="http://localhost:8181/pjt/movie/detail?movie_no=11" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="./resources/img/banner_main_1.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h2 style="color: white;">루이스 웨인</h2>
                                <p style="color: white;">당신의 봄을 아름답게 할,<br>단 하나의 러브 팔레트</p>
                                <a href="#" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="./resources/img/banner_main_3.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h2>미니언즈 2</h2>
                                <p>오또카지 오또카지?<br>미니언들의 한층 새롭고 흥미로운 모험!</p>
                                <a href="#" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    Banner Section End -->

    <!-- Auto Slide Section Start -->
<section class="hero">
<div class="hero__slider owl-carousel">
	<div id="demo" class="carousel slide" data-ride="carousel">
	
	  <!-- Indicators
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul> -->
	  
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="./resources/img/banner_main_2.png">
			<div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-7 col-md-8">
                        <div class="hero__text">
                            <h2>더 배트맨</h2>
                            <p>히어로의 세대교체,<br> 어둠을 뚫고 그가 온다</p>
                            <a href="http://localhost:8181/pjt/movie/detail?movie_no=11" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                        </div>
                    </div>
                </div>
            </div>
	    </div>
	    <div class="carousel-item">
	      <img src="./resources/img/banner_main_1.png">
               <div class="container">
                   <div class="row">
                       <div class="col-xl-5 col-lg-7 col-md-8">
                           <div class="hero__text">
                               <h2 style="color: white;">루이스 웨인</h2>
                               <p style="color: white;">당신의 봄을 아름답게 할,<br>단 하나의 러브 팔레트</p>
                               <a href="http://localhost:8181/pjt/movie/detail?movie_no=14" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                           </div>
                       </div>
                   </div>
               </div>
	    </div>
	    <div class="carousel-item">
	      <img src="./resources/img/banner_main_3.png">
	      <div class="container">
             <div class="row">
                 <div class="col-xl-5 col-lg-7 col-md-8">
                     <div class="hero__text">
                         <h2>미니언즈 2</h2>
                         <p>오또카지 오또카지?<br>미니언들의 한층 새롭고 흥미로운 모험!</p>
                         <a href="http://localhost:8181/pjt/movie/detail?movie_no=15" class="primary-cta-m"> 보러가기 <span class="arrow_right"></span></a>
                     </div>
                 </div>
             </div>
         </div>
	    </div>
	  </div>
	  
	  <!-- Left and right controls
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a> -->
	</div>
</div>
</section>
    <!-- Auto Slide Section End -->


   
    <!-- Movie Top5 Chart Title Section  Start -->
  <section class="banner spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-4">
                    <div class="banner__item">
                        <div class="banner__item__pic">
                            <img src="./resources/img/banner/banner-1.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="banner__item banner__item--middle">
                        <div class="banner__item__pic">
                            <img src="./resources/img/banner/banner-2.jpg" alt="">
                        </div>
                      <div class="banner__item__text">
                            <h2>무비차트</h2>
                            <a href="./movie/mainlist">전체보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Movie Top5 Chart Title Section  End -->

    <!-- 차트 리스트 -->
    <!-- Product Section Begin -->
    <section class="product spad">

        <div class="container">
            <div class="product__filter">
                
					 <div class="row" id="movie_like_list" style="display: flex;"></div>
               
            </div>
        </div>
    </section>
    <!-- Product Section End -->




    <!-- Latest Blog Section Begin -->
    <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title" style="	background-color: #B50022;">
                        <h4>박스오피스 순위</h4>
                    </div>
                </div>
            </div>    	
	
	
	<div class="notice__chart__table">
    	<table class="box_office">
    		<thead>
    			<tr>
    				<th>순위</th>
    				<th>영화 제목</th>
    				<th>영화 개봉일</th>
    				<th>누적 매출액</th>
    				<th>누적 관객수</th>
    			</tr>
    		</thead>
    		
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
    </div>
    </div>
    </section>
	
	
	<section class="latest spad">
    <div class="container">
		<a class="section-title-a" href="./event/main">
			<div class="row">
            	<div class="col-lg-12">
                	<div class="section-title" style="	background-color: #B50022;">
                    	<h4>이벤트</h4>
                	</div>
            	</div>
            </div>
		</a>
	<div class="event_list">
		<div class="row">
			<c:forEach var="event" items="${eventList}">
				<!-- 디데이 계산을 위한 날짜 세팅 변환 -->
				<fmt:formatDate var="startTime" value="${event.event_start_time}" pattern="yyyy-MM-dd"/> 
				<fmt:formatDate var="lastTime"  value="${event.event_last_time}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="todayNow" value="${today}" pattern="yyyy-MM-dd"/> 
			
			    <fmt:parseDate value="${lastTime}" var="event_last" pattern="yyyy-MM-dd"></fmt:parseDate>
				<fmt:parseNumber value="${event_last.time / (1000*60*60*24)}" integerOnly="true" var="lastDate"></fmt:parseNumber>
			    <fmt:parseDate value="${todayNow}" var="now" pattern="yyyy-MM-dd"></fmt:parseDate>
			    <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="todayDate"></fmt:parseNumber>
		
				<div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="${event.event_thumb}">
                        	<c:if test="${lastDate - todayDate < 0}">
								<em id="finish">마감</em>
							</c:if>
                        </div>
                        <div class="blog__item__text">
                            <span><img src="./resources/img/icon/calendar.png" alt="">
									<fmt:formatDate value="${event.event_start_time}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${event.event_last_time}" pattern="yyyy.MM.dd."/>
						    		&nbsp;&nbsp;
						   			<c:if test="${lastDate - todayDate > 0}">
						   				<em id="d-day">D - ${lastDate - todayDate}</em> 
						   			</c:if>
							</span>
                            <h5>${event.event_title}</h5>
                            <div class="readmore">
	                            <a href="./event/detail?event_no=${event.event_no}&q=${lastDate - todayDate}">Read More</a>
	                            
					   			<c:if test="${lastDate - todayDate < 0}">
					   				<a href="./event/winner?event_no=${event.event_no}&q=${lastDate - todayDate}">당첨자 확인</a> 
					   			</c:if>
                            </div>
                        </div>
                    </div>
                </div>
			</c:forEach>	
		</div>
		</div>
	  
	</div>
    </section>
    <!-- Latest Blog Section End -->
	


<!-- Footer Section Begin -->
<footer class="footer">
	<div class="container" style="display: flex;">
		<div class="footer__about" style="width: 30%; margin: -10px;">
			<div class="footer__logo">
				<a href=""><img src="./resources/img/logo_gray.png"></a>
			</div>
		</div>
		<div class="footer_text">
			<div>
				<p class="footer_text" style="font-weight: 600; font-size: 12px; color: 555555;">(06234)
					서울특별시 강남구 테헤란로 124 4층</p>
				<p  class="footer_text" style="font-weight: 600; font-size: 12px;">POP
					COMPANY | 대표 김유은 | 사업자 등록번호 11110 22220 3333</p>
				<p  class="footer_text" style="font-weight: 600; font-size: 12px;">
					Copyright ©
					<script>
                               document.write(new Date().getFullYear());
                           </script>
					POPCORN BOX. All rights reserved
				</p>
				<p>
					<a href="">서비스 소개 </a> | <a href="">이용약관 </a> | <a href="">개인정보
						처리 방침 </a> | <a href="">고객센터 </a> | <a
						href="https://github.com/PopcornBox/popcorn_box">Github </a>
				</p>
			</div>
		</div>
		<div class="sns_btn" style="margin-left: 60px; font-size: 30px;">
			<a href=""><i class="fa-brands fa-instagram"
				style="color: #666; padding-left: 20px;"></i></a> 
			<a href=""><i class="fa-brands fa-facebook-f"
				style="color: #666; padding-left: 20px;"></i></a> 
			<a href=""><i
				class="fa-brands fa-twitter"
				style="color: #666; padding-left: 20px;"></i></a> 
			<a href=""><i
				class="fa-brands fa-github" style="color: #666; padding-left: 20px;"></i></a>
		</div>
	</div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="./resources/js/jquery-3.3.1.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<!-- <script src="./resources/js/jquery.nice-select.min.js"></script> -->
<script src="./resources/js/jquery.nicescroll.min.js"></script>
<script src="./resources/js/jquery.magnific-popup.min.js"></script>
<script src="./resources/js/jquery.countdown.min.js"></script>
<script src="./resources/js/jquery.slicknav.js"></script>
<script src="./resources/js/mixitup.min.js"></script>
<script src="./resources/js/owl.carousel.min.js"></script>
<script src="./resources/js/main.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

		
	
	<script>
			$(document).ready(function () {
				// 알림 메시지 있으면 띄워라.
				var message = '${msg}';
				if (message != null && message != '') {
					alert(message);
				}
			
			        // 검색어 읽어서 자동완성 시켜라.
				read_keyword();
				
				// 좋아요 top 5 띄워라.
				select_top5_1();
				select_top5_2();						  
										  
				function read_keyword() {
					
					$('#search_area').keyup(function() {
						var type = $('#type').val();
						var keyword = $('#search_area').val();
						console.log(type);
						console.log(keyword);
						
						if (keyword == '') {
							$('#recommend').html(' ');
						}
						
						 $.getJSON('/pjt/movie_search/' + type + '/' + keyword, function (data) {
				              	var text = '';
							 data.forEach(function(element) {
								 if (type == 1) {
									 if (element.indexOf(keyword) > -1) {
											text += '<div>' + element + '</div>'
										}
								 }
								 if (type == 2) {
									 if (element.indexOf(keyword) > -1) {
										text += '<div>' + element + '</div>'
									}
								 }
								 if (type == 3) {
									 if (element.indexOf(keyword) > -1) {
										text += '<div>' + element + '</div>'
									}
								 }
								 if (type == 4) {
									 if (keyword == 's' || keyword == 'sf') {
										 text = '<div>SF</div>'
									 }
									if (element.indexOf(keyword) > -1) {
										text += '<div>' + element + '</div>'
									}
								 }				 
							 }); // for 반복
							 
			             	$('#recommend').html(text);
							$('#recommend').find('div').each(function() {
								 $(this).click(function() {
									 var raw_keyword = $(this).text();
									 var real_keyword = raw_keyword.trim();
								
									 $('#search_area').val(real_keyword);
									 $('#recommend').html(' ');
								 });
							 });
							 
							 
			             }); // getJson
						
					});
					
				}
		             
				
				function select_top5_1() {
			
						 $.getJSON('/pjt/movie_like/top', function (data) {
				              	var text = '';
							 data.forEach(function(element) {
								var movie_image = element.movie_image; 
								var movie_no= element.movie_no;
								var movie_title = element.movie_title
								text += '<div class="set-bg poster"><img class="product__item__pic" src="' 
									+ movie_image 
									+ '"><p class="label"></p>'
									+'<div class="product__item__text">'
			                        +'<a href="./movie/detail?movie_no='
			                        + movie_no
			                        +'">'
			                        + movie_title
			                        +'</a><div class="rating"><i class="fa fa-star-o"></i></div></div></div>';
							 });
							 	$('#movie_like_list').html(text);						 
			             }); // getJson			
					  
					}	
										
										  
				function select_top5_2() {
					
				   timer = setInterval(function() {	
					   
					 $.getJSON('/pjt/movie_like/top', function (data) {
			              	var text = '';
						 data.forEach(function(element) {
							var movie_image = element.movie_image; 
							var movie_no= element.movie_no;
							var movie_title = element.movie_title
							text += '<div class="set-bg poster"><img class="product__item__pic" src="' 
								+ movie_image 
								+ '"><p class="label"></p>'
								+'<div class="product__item__text">'
		                        +'<a href="./movie/detail?movie_no='
		                        + movie_no
		                        +'">'
		                        + movie_title
		                        +'</a><div class="rating"><i class="fa fa-star-o"></i></div></div></div>';
						 });
						 	$('#movie_like_list').html(text);						 
		             }); // getJson		
		             
				   }, 30000);  // 30초 마다
				   
				}						  
				
	// -------------------- 박스 오피스 api 사용하기 ----------------------------------------------------
				
				var today = new Date();
				
				var m = today.getMonth() + 1;
				if (m < 10) {
					var month = '0' + m;
				} else {
					var month = m + '';
				}
				
				var d = today.getDate() - 1;
				
				if (d < 10) {
					var day = '0' + d;
				} else {
					var day = d + '';
				}
				
				var y = today.getFullYear();
				
				var year = y + '';
				
				var result = year + month + day;
				
				read_boxoffice();
				
				function read_boxoffice() {
					$.ajax({
						url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=c703c0c2818aa9a103c8b7f193e4b3bf&targetDt="
							+ result + "&itemPerPage=6",
							
						dataType : "xml",	
						
						success : function(data) {
							var $data = $(data)
										.find("boxOfficeResult>dailyBoxOfficeList>dailyBoxOffice");
							
							var text = '';
							
							if ($data.length > 0) {
								
								$.each($data, function(i, o) {

									var $rank = $(o).find("rank").text(); 
									var $movieNm = $(o).find("movieNm").text(); 
									var $openDt = $(o).find("openDt").text();
									var $salesAcc = $(o).find("salesAcc").text();
									var $audiAcc = $(o).find("audiAcc").text(); 
									
									text += '<tr><td>' + $rank + '</td>'
											  + '<td>' + $movieNm + '</td>'
											  + '<td>' + $openDt + '</td>'
											  + '<td>' + $salesAcc + '</td>'
											  + '<td>' + $audiAcc + '</td></tr>'

								});// end of each 

								$('#tbody').html(text);
						
							}
						},
						//에러 발생시 "실시간 박스오피스 로딩중"메시지가 뜨도록 한다.
						error : function() {
							alert("실시간 박스오피스 로딩중...");
						}
					});
				}
				
				
			});
	</script>	

</body>
</html>
