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
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/bootstrap_watch.min.css" type="text/css">
<!--  <link rel="stylesheet" href="../resources/css/bootstrap_watch.min.css"
   type="text/css">-->
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
<script src="https://kit.fontawesome.com/a39158855c.js"crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/a39158855c.js" crossorigin="anonymous"></script>

</head>

<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

<body>         

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
						<li></li>
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

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>



	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-7">
						<div class="header__top__left">
							<a href="../"><img src="../resources/img/popcornbox_logo.png"
								alt="logo"></a>
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
										<span>${signInUserNickname} 님</span>
										<br>
										<a href="../user/signout"><i class="fa-solid fa-lock"></i>로그아웃</a>
										<a href="../user/register"><i
											class="fa-solid fa-user-plus"></i>회원가입</a>
										<a href="../user/mypage"><i class="fa-solid fa-user"></i>마이페이지</a>
									</c:if>
									<c:if test="${not empty accessToken}">
										<%-- 카카오 로그인의 경우 --%>
										<span>${signInUserNickname} 님</span>
										<br>
										<a
											href="https://kauth.kakao.com/oauth/logout?client_id=cc1754dab9a17adb7dd44164ff108ba7&logout_redirect_uri=http://localhost:8181/pjt/user/kakaologout">
											<i class="fa-solid fa-lock"></i>로그아웃
										</a>
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
							<li class="active"><a href="../board/main">커뮤니티</a></li>
							<li><a href="../event/main">이벤트</a></li>
						</ul>
					</nav>
				</div>
				<div class="search_option">
					<div class="header__nav__option">
						<div>
							<form name="search" method="get" action="./search">
								<select name="type" class="nice-select search"
									style="padding-bottom: 1px;">
									<option value="1">제목</option>
									<option value="2">내용</option>
									<option value="3">제목+내용</option>
									<option value="4">작성자</option>
								</select> <input class="search" type="text" name="keyword"
									placeholder="검색어 입력" required
									oninvalid="this.setCustomValidity('검색어를 입력하세요.')"
									oninput="setCustomValidity('')" /> <input class="btn"
									type="submit" value="" />

							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="canvas__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<div class="container-fluid">
		<div class="container">


			<table class="table table-hover">
				<thead>
					<tr>
						<th></th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="board" items="${boardList}">
						<tr>
							<td>${board.board_no}</td>
							<td><a href="./detail?board_no=${board.board_no}">${board.board_title}</a>
								<span>[${board.board_reply_cnt}]</span></td>
							<td>${board.user_nickname}</td>
							<td><fmt:formatDate value="${board.board_update_time}"
									pattern="yyyy/MM/dd HH:mm" /></td>
							<td>${board.board_view_cnt}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>



			<div id="main-insertbtn">
				<a href="./insert" class="btn btn-outline-dark">새 글 작성</a>
			</div>
			<c:if test="${signInUserPosition eq 'A'}">
				<div id="main-insertbtn">
					<a href="./insert" class="btn btn-outline-dark">공지 작성</a>
				</div>
			</c:if>
			<c:if test="${signInUserPosition eq 'B'}">
				<div id="main-insertbtn">
					<a href="./insert" class="btn btn-outline-dark">공지 작성</a>
				</div>
			</c:if>

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
                            <li class="active"><a href="../board/main">커뮤니티</a></li>
                            <li><a href="../event/main">이벤트</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="search_option">
                    <div class="header__nav__option">
                         <div>
							<form name="search" method = "get"  
								action ="./search" >
			                    <select name="type" class="nice-select search" style="padding-bottom: 1px;">
			                        <option value="1">제목</option>
			                        <option value="2">내용</option>
			                        <option value="3">제목+내용</option>
			                        <option value="4">작성자</option>
			                    </select>
			                    <input class="search" type="text" name="keyword" placeholder="검색어 입력"
			                    	required oninvalid="this.setCustomValidity('검색어를 입력하세요.')"
											 oninput = "setCustomValidity('')"/>
			                    <input class="btn" type="submit" value="" />
			                </form>
			            </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

   <div class="container-fluid">
      <div class="container">
         <table class="table table-hover">
            <thead>
               <tr>
                  <th></th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="board" items="${boardList}">
                  <tr>
                     <td>${board.board_no}</td>
                     <td><a href="./detail?board_no=${board.board_no}">${board.board_title}</a></td>
                     <td>${board.user_nickname}</td>
                     <td><fmt:formatDate value="${board.board_update_time}"
                           pattern="yyyy/MM/dd HH:mm" /></td>
                     <td>${board.board_view_cnt}</td>
                  </tr>
               </c:forEach>
            </tbody>

         </table>
         
         <div class="pageNumber_wrapping">
         	<div class="pageNumber_area">
         		<ul id="pageNumber" class="pageNumber">
         			<!-- https://kimvampa.tistory.com/170?category=843151 -->
         			<!-- 페이지 번호 버튼 -->
         			<c:forEach var="num" begin="${pagingView.startPage}" end="${pagingView.endPage}">
         				<li class="pageNumber_btn"><a href="${num}">${num}</a></li>
         			</c:forEach>
         		</ul>
         	</div>
         </div>
         
         <form id="pagingviewForm" method="GET">
         	<input type="hidden" name="pageNum" value="${PagingView.pcri.pageNum}">
         	<input type="hidden" name="pageNum" value="${PagingView.pcri.contents}">
         </form>


         <nav>
            <!-- 메뉴 -->
            <ul>
               <%-- <li><a href="../">메인</a></li>--%>
               <div id="main-insertbtn">
                  <a href="./insert" class="btn btn-outline-dark">새 글 작성</a>
               </div>

            </ul>
         </nav>

      </div>

   </div>

		</div>






	</div>





	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="../resources/img/logo_white.png" alt=""></a>
						</div>
						<p>
							Copyright ©
							<script>
								document.write(new Date().getFullYear());
							</script>
							2020 All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
        	<div class="row">
                   <div class="footer__about">
                       <div class="footer__logo">
                           <a href="../"><img src="../resources/img/popcornbox_logo.png"></a>
                       </div>
                   </div>
               <div class="footer_text">
               	<div>
                	<p>popcompany | 대표 김유은</p>
                	<p>서울특별시 강남구 테헤란로 124 4층 | 사업자 등록번호 11110 22220 3333</p>
                	<p>
                		   <a href="../">서비스 소개 </a>
                           | 
                           <a href="../">이용약관 </a>
                           | 
                           <a href="../">개인정보 처리 방침 </a>
                           | 
                           <a href="../">고객센터 </a>
                           | 
                       	<a href="https://github.com/PopcornBox/popcorn_box">Github </a>
                       </p>
                       <p>Copyright ©
                           <script>
                               document.write(new Date().getFullYear());
                           </script>2020 Popcorn Box. All rights reserved  
                       </p>
                       
               	</div>
               </div>
        	</div>
           </div>
    </footer>
    <!-- Footer Section End -->







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

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>