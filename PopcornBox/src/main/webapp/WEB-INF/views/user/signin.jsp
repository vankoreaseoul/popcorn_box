<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Popcorn Box</title>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" 
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container-fluid">
			<header class="text-center">
				<h1>로그인</h1>
			</header>
			
			<nav> <!-- TODO: 페이지 이동 메뉴 -->
			</nav>
			
			<div>
				<form action="./signin" method="post">
					<div>
						<input type="text" name="user_id" placeholder="아이디 입력" required />
					</div>
					<div>
						<input type="password" name="user_pwd" placeholder="비밀번호 입력" required />
					</div>
					<div>
						<input type="submit" value="로그인" />
					</div>
					<li>
						<a href="./register">회원가입</a>
					</li>
					<li>
						<a href="./find">아이디/비밀번호 찾기</a>
					</li>
					<div>
						<input type="hidden" name="url" value="${url}" />
					</div>
				</form>
			</div>
			
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>