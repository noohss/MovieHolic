<%@page import="vo.Movie"%>
<%@page import="java.util.List"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%

MovieDao dao = MovieDao.getInstance();
List<Movie> list = dao.selectAll();
pageContext.setAttribute("list", list);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table border="1">
<tr>
	<th>영화ID</th>
	<th>영화 제목</th>
	<th>리뷰 ID</th>
	<th>개봉 일자</th>
	<th>상영 시간</th>
	<th>누적 관객</th>
	<th>관람 등급</th>
	<th>줄거리</th>
	<th>포스터 주소</th>
	<th>예고편</th>
</tr>
<c:forEach var="movie" items="${list }">
<tr>
	<td>${movie.movie_id }</td>
	<td><a href="${pageContext.request.contextPath}/movie_info.jsp?movie_id=${movie.movie_id }">
	${movie.movie_title }</a></td>
	<td>${movie.review_id }</td>
	<td>${movie.release_date }</td>
	<td>${movie.runtime }</td>
	<td>${movie.cum_audience }</td>
	<td>${movie.view_rating }</td>
	<td>${movie.plot }</td>
	<td>${movie.poster_url }</td>
	<td>${movie.trailer_url }</td>
	
</tr>
</c:forEach>
</table> 
</body>
</html>