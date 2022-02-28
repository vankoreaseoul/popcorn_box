<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Popcorn Box</title>
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
   

<<<<<<< HEAD
		<ul>
			<li><a href="./userInfo">회원정보확인</a></li>
		</ul>
		
		<button type="button">전체활동기록</button>
		<button type="button">작성한 게시글</button>
		<button type="button">작성한 댓글</button>
		<button type="button">좋아요한 영화</button>
		

		<div>
			<table>
				<th>활동 내역</th><th>게시물 번호</th><th>게시글 제목</th><th>작성 일자</th>
				<c:forEach items="${mypageBoardResult.myBoardList}" var="signInUserNickname">
					<tr>
						<td>커뮤니티 게시글</td>
						<td>${signInUserNickname.board_no}</td>
						<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_title}</a></td>
						<td><fmt:formatDate value="${signInUserNickname.board_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
						</br>
					</tr>
				</c:forEach>
				<c:forEach items="${mypageBoardReplyResult.myBoardReplyList}" var="signInUserNickname">
					<tr>
						<td>게시판 댓글</td>
						<td>${signInUserNickname.board_no}<span>-</span>${signInUserNickname.board_reply_no}</td>
						<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_reply_content}</a></td>
						<td><fmt:formatDate value="${signInUserNickname.board_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
					</tr>
				</c:forEach>
				<c:forEach items="${mypageEventReplyResult.myEventReplyList}" var="signInUserNickname">
					<tr>
						<td>이벤트 댓글</td>
						<td>${signInUserNickname.event_no}<span>-</span>${signInUserNickname.event_reply_no}</td>
						<td><a href="../event/detail?event_no=${signInUserNickname.event_no}&q=0">${signInUserNickname.event_reply_content}</a></td>
						<td><fmt:formatDate value="${signInUserNickname.event_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
					</tr>
				</c:forEach>
				<c:forEach items="${mypageMovieReplyResult.myMovieReplyList}" var="signInUserNickname">
					<tr>
						<td>영화 댓글</td>
						<td>${signInUserNickname.movie_no}<span>-</span>${signInUserNickname.movie_reply_no}</td>
						<td><a href="../movie/detail?movie_no=${signInUserNickname.movie_no}&q=0">${signInUserNickname.movie_reply_content}</a></td>
						<td><fmt:formatDate value="${signInUserNickname.movie_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>


=======
			<!-- 좋아요한 영화 전용 table -->
>>>>>>> branch 'master' of https://github.com/PopcornBox/popcorn_box.git
			<table>
				<c:forEach items="${mypageMovieLikeResult.myMovieLikeList}" var="signInUserNickname">
					<tr align="center">
						<td>내가 좋아요한 영화</td>
					</tr>
					<tr>
						<td>${signInUserNickname.movie_no}</td>
						<td><a href="../movie/detail?movie_no=${signInUserNickname.movie_no}">${signInUserNickname.movie_no}</a></td>
						<td><fmt:formatDate value="${signInUserNickname.like_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
					</tr>
				</c:forEach>
			</table>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>마이 페이지</h4>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- UserName start -->
	<section class="breadcrumb-option"
		style="padding-top: 10px; padding-bottom: 40px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h2>"${signInUserNickname}님 환영합니다!"</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- UserName End -->


	<!-- mypage List start -->
	<section class="shopping-cart spad" style="padding:0px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="user__chart__table">
						<table>
							<tbody>
								<tr style="cursor: pointer;" onclick="location.href='./userInfo'"> 
									<td class="user__chart__item">
									<i class="fa-solid fa-user"></i></td>
									<td class="chart__info">회원정보 확인</td>
								</tr>
								<tr style="cursor: pointer;" >
									<td class="user__chart__item">
									<i class="fa-solid fa-rectangle-list"></i></td>
									<td class="chart__info" id="load_all">전체활동 기록
										<table id="openAllLog" value="hide">
											<tbody>
												<c:forEach items="${mypageBoardResult.myBoardList}" var="signInUserNickname">
													<tr>
														<td>커뮤니티 게시글</td>
														<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_title}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.board_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
												<c:forEach items="${mypageBoardReplyResult.myBoardReplyList}" var="signInUserNickname">
													<tr>
														<td>게시판 댓글</td>
														<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.board_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
												<c:forEach items="${mypageEventReplyResult.myEventReplyList}" var="signInUserNickname">
													<tr>
														<td>이벤트 댓글</td>
														<td><a href="../event/detail?event_no=${signInUserNickname.event_no}&q=0">${signInUserNickname.event_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.event_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
												<c:forEach items="${mypageMovieReplyResult.myMovieReplyList}" var="signInUserNickname">
													<tr>
														<td>영화 댓글</td>
														<td><a href="../movie/detail?movie_no=${signInUserNickname.movie_no}">${signInUserNickname.movie_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.movie_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</td>
								</tr>
								<tr style="cursor: pointer;">
									<td class="user__chart__item">
									<i class="fa-solid fa-pen-to-square"></i></td>
									<td class="chart__info" id="load_board">작성한 게시글
										<table id="openBoardLog" value="hide">
											<tbody>
												<c:forEach items="${mypageBoardResult.myBoardList}" var="signInUserNickname">
													<tr>
														<td>커뮤니티 게시글</td>
														<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_title}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.board_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</td>
								</tr>
								<tr style="cursor: pointer;">
									<td class="user__chart__item">
									<i class="fa-solid fa-comment-dots"></i></td>
									<td class="chart__info" id="load_reply">작성한 댓글
										<table id="openReplyLog" value="hide">
											<tbody>
												<c:forEach items="${mypageBoardReplyResult.myBoardReplyList}" var="signInUserNickname">
													<tr>
														<td>게시판 댓글</td>
														<td><a href="../board/detail?board_no=${signInUserNickname.board_no}">${signInUserNickname.board_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.board_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
												<c:forEach items="${mypageEventReplyResult.myEventReplyList}" var="signInUserNickname">
													<tr>
														<td>이벤트 댓글</td>
														<td><a href="../event/detail?event_no=${signInUserNickname.event_no}&q=0">${signInUserNickname.event_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.event_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
												<c:forEach items="${mypageMovieReplyResult.myMovieReplyList}" var="signInUserNickname">
													<tr>
														<td>영화 댓글</td>
														<td><a href="../movie/detail?movie_no=${signInUserNickname.movie_no}">${signInUserNickname.movie_reply_content}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.movie_reply_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</td>
								</tr>
								<tr style="cursor: pointer;">
									<td class="user__chart__item">
									<i class="fa-solid fa-heart"></i></td>
									<td class="chart__info" id="load_like">좋아요한 영화
										<table id="openLikeLog" value="hide">
											<tbody>
												<tr align="center">
													<td colspan = "5">내가 좋아요한 영화</td>
												</tr>
												<c:forEach items="${mypageMovieLikeResult.myMovieLikeList}" var="signInUserNickname">
													<tr>
														<td>${signInUserNickname.movie_no}</td>
														<td><a href="../movie/detail?movie_no=${signInUserNickname.movie_no}">${signInUserNickname.movie_no}</a></td>
														<td><fmt:formatDate value="${signInUserNickname.like_update_time}" pattern="yyyy/MM/dd HH:mm" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
					</div>
				</div>
			</div>
	</section>
	<!-- mypage end -->




		<%@include file="../footer.jsp" %>
	<!-- Footer Section End -->

<script>
		    $(document).ready(function(){
			    
			    var message = '${msg}';
				if (message != null && message != '') {
					alert(message);
				}
			    
    			// type 이 radio 이고 class 가 start_type_radio 인 input 을 click 했을 경우
                $('input[type="radio"][class="data_type_radio"]').on('click',function(){
					
                    // startSetting 에 checked된 radio button의 value 값을 넣는다.
                    var startSetting = $('input[type=radio][class="data_type_radio"]:checked').val();
                   
                   // startSetting이 later인 경우 style display를 flex로 변경한다. 
                   if(startSetting == 'later'){
                        $('#task_boardLog_setting').css('display','flex');
                   
                   // 그외의 경우 style display를 none 으로 변경한다.
                    }else{
                        $('#task_boardLog_setting').css('display','none');
                    }
                });
            });
	</script>

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
	<script>
		$(document).ready(function () {
				var message = '${msg}';
				if (message != null && message != '') {
					alert(message);
				}
			});
	</script>	

	<script>
		    $(document).ready(function(){
			    
			    var message = '${msg}';
				if (message != null && message != '') {
					alert(message);
				}
		    
		    // 전체 기록 호출
	        $(function(){
	            $("#load_all").click(function(e){ // click event for load more
	                $("#openAllLog").toggle(); // hidden div show them
	            });
	            $("#openAllLog").hide();
	        });
		    
		    // 작성한 게시글 호출
	        $(function(){
	            $("#load_board").click(function(e){ // click event for load more
	                $("#openBoardLog").toggle(); // hidden div show them
	            });
	            $("#openBoardLog").hide();
	        });
		    
		    // 작성한 댓글 호출
	        $(function(){
	            $("#load_reply").click(function(e){ // click event for load more
	                $("#openReplyLog").toggle(); // hidden div show them
	            });
	            $("#openReplyLog").hide();
	        });
		    
		    // 좋아요한 영화 호출
		    // 작성한 댓글 호출
	        $(function(){
	            $("#load_like").click(function(e){ // click event for load more
	                $("#openLikeLog").toggle(); // hidden div show them
	            });
	            $("#openLikeLog").hide();
	        });
	        
});			    
	</script>

</body>
</html>