<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장르별 영화 찾기</title>
<link rel="stylesheet" href="../css/selectLayout.css">
<link rel="stylesheet" href="../css/freeboard.css">
</head>
<body>
<%@ include file="../home/header.jsp"%>
<br>
<h3 style="text-align: center; font-weight: bold;">장르별 영화 검색</h3>
<hr>
<br>
<form action="" name="frm1">
	<div class ="genre">
<p>
<input  type="checkbox" value="1">액션	
<input  type="checkbox" value="2">드라마	
<input  type="checkbox" value="3">범죄	
<input  type="checkbox" value="4">SF	
<input  type="checkbox" value="5">코미디	
<input  type="checkbox" value="6">멜로/로맨스	<br>
<input  type="checkbox" value="7">스릴러
<input  type="checkbox" value="8">공포	
<input  type="checkbox" value="9">전쟁
<input  type="checkbox" value="10">스포츠	
<input  type="checkbox" value="11">판타지	<br>	
<input  type="checkbox" value="12">뮤지컬
<input  type="checkbox" value="13">다큐멘터리	
<input  type="checkbox" value="14">애니메이션	
<input  type="checkbox" value="15">가족	
</p>
	</div>
<hr>
	<br>
	<div class="button">
	<input class="button1" type="button"  name="selectall" value="전체 해제" onclick="claerCheck()" >
	</div>
	<div class="button">
	<input class="button1" type="button" value="찾아보기" onclick="view()">
	</div> 
	<br>
	<br>
</form>
<br>
 	<div style="width: 58%; " class = "image">
 	<ul style="padding: 0; te" class="ulclass">
 <c:forEach var="vo" items="${list }">
	<li data-genre="${vo.genre_id }">
	<div class="wrap">
	<a href="#">	
	<img alt="${vo.movie_title }" src="${vo.poster_url }" data-genre="${vo.genre_id }">	</a>
	<div class="text">
	<h6>${vo.movie_title }</h6>
 	<span><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.release_date}"/></span> <br>
 	<span>${vo.runtime }</span> <br>
 	 <button class="w-btn-neon2" type="button" onclick="location.href='http://localhost:8080/project/movie/movie_info.jsp?movie_id=${vo.movie_id}';">
        자세히
    </button>
    </div>
    </div>
	</li> 
 </c:forEach>
</ul>
</div>	

<script type="text/javascript" src="select.js"></script>

</body>
<%@ include file="../home/footer.jsp"%>
</html>
 <%--     <div id="over">
 	<h3>${vo.movie_title }</h3>
 	<span>${vo.release_date }</span> <br>
 	<a href="www.naver.com">자세히</a>
 	</div>  --%>
	<%-- <h3>${vo.movie_title }</h3>
 	<span>${vo.release_date }</span> <br>
 	<button>자세히</button> --%>