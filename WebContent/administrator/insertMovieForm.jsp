<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>moive holic</title>
	<link rel="stylesheet" href="../css/input_box2.css">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<%@include file="adminHeader.jsp" %>
	<div class="abc"></div>
	<div class="box">
		<div class="input-box">
			<h1 class="input-box__title">관리자 페이지</h1>
			<h4>영화 입력</h4>
	        
	        <form action="insertMovieInfo.jsp" method="post" class="input-box__form">
	            
	            <div class="input-box__form--box">
	                <input id="movie_title" type="text" name="movie_title" placeholder="영화제목" required>
	                <label for="movie_title">영화제목</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="movie_title_en" type="text" name="movie_title_en" placeholder="영문제목" required>
	                <label for="movie_title_en">영문제목</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="release_date" type="text" name="release_date" placeholder="개봉일자" required>
	                <label for="release_date">개봉일자</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="runtime" type="text" name="runtime" placeholder="상영시간" required>
	                <label for="runtime">상영시간</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="cum_audience" type="text" name="cum_audience" placeholder="누적관객" required>
	                <label for="cum_audience">누적관객</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="view_rating" type="text" name="view_rating" placeholder="관람등급" required>
	                <label for="view_rating">관람등급</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="plot" type="text" name="plot" placeholder="줄거리" required>
	                <label for="plot">줄거리</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="poster_url" type="text" name="poster_url" placeholder="포스터주소" required>
	                <label for="poster_url">포스터주소</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="trailer_url" type="text" name="trailer_url" placeholder="예고편주소" required>
	                <label for="trailer_url">예고편주소</label>
	        	</div>
	        	
	        	<div class="input-box__form--box">
	                <input id="star_rating_avg" type="text" name="star_rating_avg" placeholder="평점" required>
	                <label for="star_rating_avg">평점</label>
	        	</div>
	        	
	        	<input type="submit" class="input-box__form--submit" value="영화입력" style="border-bottom: none;">
	        </form>
		</div>
	</div>
	
	<%@include file="../home/footer.jsp" %>
</body>
</html>