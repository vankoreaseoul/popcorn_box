<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Popcorn Box</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />

<!-- Google Font -->
<link
   href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
   rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/bootstrap_watch.min.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/elegant-icons.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css"
   type="text/css">
<!-- <link rel="stylesheet" href="../resources/css/nice-select.css"
	type="text/css"> -->
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/slicknav.min.css"
   type="text/css">
<link rel="stylesheet" href="../resources/css/style.css" type="text/css">

    <script src="https://kit.fontawesome.com/a39158855c.js" crossorigin="anonymous"></script>

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
					<li><a href="../user/signin">로그인</a></li>
					<li><a href="../user/register">회원가입</a></li>
					<li><a href="../user/mypage">마이페이지</a></li>
			                <li><a href="./event/main">이벤트</a></li>
				</c:if>
				<c:if test="${not empty signInUserNickname}">
					<%-- 로그인 되어 있는 경우 --%>
					<li><span>${signInUserNickname} 님</span></li>
					<li>　</li>
					<li><a href="../user/signout">로그아웃</a></li>
					<li><a href="../user/register">회원가입</a></li>
					<li><a href="../user/mypage">마이페이지</a></li>
					<li><a href="../event/main">이벤트</a></li>
				</c:if>
            </ul>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>PopcornBox</p>
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
	                                  <a href="../"><img src="../resources/img/popcornbox_logo.png" alt="logo"></a>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-5">
	                            <div class="header__top__right">
	                                <div class="header__top__links">
	                                	<c:if test="${empty signInUserNickname}">
											<%-- 로그인 되어 있지 않은 경우 --%>
											<a href="../user/signin"><i class="fa-solid fa-lock"></i>로그인</a>
		                                    <a href="../user/register"><i class="fa-solid fa-user-plus"></i>회원가입</a>
		                                    <a href="../user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
										</c:if>
										<c:if test="${not empty signInUserNickname}">
											<%-- 로그인 되어 있는 경우 --%>
											<c:if test="${empty accessToken}">
												<%-- 일반 로그인의 경우 --%>  
												<span>${signInUserNickname} 님</span><br>
												<a href="../user/signout"><i class="fa-solid fa-lock"></i>로그아웃</a>
												<a href="../user/register"><i class="fa-solid fa-user-plus"></i>회원가입</a>
			                                    <a href="../user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
		                                    </c:if>	 
		                                    <c:if test="${not empty accessToken}">
		                                    	<%-- 카카오 로그인의 경우 --%>  
			                                    <span>${signInUserNickname} 님</span><br>
			                                    <a href="https://kauth.kakao.com/oauth/logout?client_id=cc1754dab9a17adb7dd44164ff108ba7&logout_redirect_uri=http://localhost:8181/pjt/user/kakaologout">
			                                    	<i class="fa-solid fa-lock"></i>로그아웃</a>
												<a href="./user/register"><i class="fa-solid fa-user-plus"></i>회원가입</a>
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
                            <li><a href="../">홈</a></li>
                            <li><a href="../movie/mainlist">차트</a></li>
                            <li><a href="../board/main">커뮤니티</a></li>
                            <li><a href="../event/main">이벤트</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

		<hr>
		<h4>userInfo 페이지입니다.</h4>
		<!-- https://melonpeach.tistory.com/42 확인한번만해볼것 -->
		<section id="container">
			<form action="/user/userInfoUpdate" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="user_id">아이디</label>
					<input class="form-control" type="text" id="user_id" name="user_id" value="${user_id}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_pwd">비밀번호</label>
					<input class="form-control" type="password" id="user_pwd" name="user_pwd" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_nickname">닉네임</label>
					<input class="form-control" type="text" id="user_nickname" name="user_nickname" value="${SignInUserNickname}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_email">이메일</label>
					<input class="form-control" type="text" id="user_email" name="user_email" value="${user_email}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_update_time">가입 일자</label>
					<input class="form-control" type="text" id="user_update_time" name="user_update_time" value="${user_update_time}"/>
				</div>
			
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cancel btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
                
		<input type="button" value="메인으로" class="btn" onclick="location.href='/pjt'">
		
		
	<!-- Js Plugins -->
   <script src="../resources/js/jquery-3.3.1.min.js"></script>
   <script src="../resources/js/bootstrap.min.js"></script>
   <!-- <script src="../resources/js/jquery.nice-select.min.js"></script> -->
   <script src="../resources/js/jquery.nicescroll.min.js"></script>
   <script src="../resources/js/jquery.magnific-popup.min.js"></script>
   <script src="../resources/js/jquery.countdown.min.js"></script>
   <script src="../resources/js/jquery.slicknav.js"></script>
   <script src="../resources/js/mixitup.min.js"></script>
   <script src="../resources/js/owl.carousel.min.js"></script>
   <script src="../resources/js/main.js"></script>
 
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>