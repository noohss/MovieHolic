<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무비홀릭</title>
<link rel="stylesheet" href="../css/home2.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<style type="text/css">
body {
	background-color: rgb(247, 247, 247);
}

</style>
<body>
<%@include file="header.jsp" %>
<h3 style="font-weight: bold; 
	 text-align: center;
	 margin-top: 30px;">최신 개봉 영화</h3>
	<br>
<div class="swiper-container">
<div class="swiper-wrapper" style="height: 15%;">
<c:forEach var="vo" items="${list }">
	<div class="swiper-slide">
	<a href="#"><img src="${vo.poster_url }"></a>
	<div class="text">
	<h6>${vo.movie_title }</h6>
 	<span><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.release_date}"/></span> <br>
 	<span>${vo.runtime }</span> <br>
 	 <button class="w-btn-neon2" type="button" onclick="location.href='http://localhost:8080/project/movie/movie_info.jsp?movie_id=${vo.movie_id}';">
        자세히
    </button>
	</div>
    </div>
</c:forEach>
</div>
	<div class="swiper-button-next"></div>
	<div class="swiper-button-prev"></div>
	<div class="swiper-pagination"></div>
</div>
<br>
<hr>
<br>
<h3 style="font-weight: bold; 
	 text-align: center;">'${gvo.genre_name }' 장르 추천 영화</h3>
	 <br>
	 <br>
	 <div class="randomMovie">
		<c:forEach var="rvo" items="${rlist }">
			<div class="poster">
				<a href="#"><img src="${rvo.poster_url }"></a>
	<div class="text">
	<h6>${rvo.movie_title }</h6>
 	<span><fmt:formatDate pattern="yyyy-MM-dd" value="${rvo.release_date}"/></span> <br>
 	<span>${rvo.runtime }</span> <br>
 	 <button class="w-btn-neon2" type="button" onclick="location.href='http://localhost:8080/project/movie/movie_info.jsp?movie_id=${rvo.movie_id}';">
        자세히
    </button>
    </div>
			</div>
		</c:forEach>	 
	 </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

new Swiper('.swiper-container', {

	slidesPerView : 5, // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 10, // 슬라이드간 간격
	slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
	// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
	loopFillGroupWithBlank : true,

	loop : true, // 무한 반복

	pagination : { // 페이징
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},
	navigation : { // 네비게이션
		nextEl : '.swiper-button-next', // 다음 버튼
		prevEl : '.swiper-button-prev', // 이번 버튼
	},

});
</script>

</body>
<%@ include file="footer.jsp" %>
</html>