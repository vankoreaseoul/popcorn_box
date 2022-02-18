<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
		<title>Popcorn box</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" 
        		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
	</head>

	<body>
		<h1>NEW EVENT</h1>
		
		<hr>
		
	    <div>
			<form action="./register" method="post">
				<label for="event_title" > 이벤트 제목
				<input type="text" id="event_title" name="event_title" required autofocus />
				<br>
				<label for="event_thumb" > 이벤트 썸네일 이미지 url
				<input type="url" id="event_thumb" name="event_thumb" required  />
				<br>
				<label for="event_content" > 이벤트 내용 이미지 url
				<input type="url" id="event_content" name="event_content" required />
				<br>
				<label for="event_start_time" > 이벤트 시작 날짜
				<input type="date" id="event_start_time" name="event_start_time" required />
				<br>
				<label for="event_last_time" > 이벤트 마감 날짜
				<input type="date" id="event_last_time" name="event_last_time" required />
				<br>
				
				<input type="submit" value="등록" />
			</form>
		</div>
			
			
			
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script>
			$(document).ready(function() {
				var dateElement = $('#event_start_time');
				var date = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().slice(0, -14);
				dateElement.value = date;
			    dateElement.attr("min", date);
			    
			    var dateElement2 = $('#event_last_time');
				var date2 = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().slice(0, -14);
				dateElement2.value = date;
			    dateElement2.attr("min", date);
			    
			    $('#event_start_time').change(function() {
			    	if($('#event_start_time').val() != null) {
			    		var limit = $('#event_start_time').val();
			    		$('#event_last_time').attr("min", limit);
			    	}
			    });
			   
			});
	

		</script>
    </body>
</html>