<%@page import="java.sql.Date"%>
<%@page import="dao.MovieDao"%>
<%@page import="vo.MovieVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 영화id: 시퀀스 입력
	String movie_title = request.getParameter("movie_title"); // 영화제목
	String movie_title_en = request.getParameter("movie_title_en"); // 영문제목
	String temp1 = request.getParameter("release_date"); // 개봉일자
	Date release_date = Date.valueOf(temp1);
	String runtime = request.getParameter("runtime"); // 상영시간
	String cum_audience = request.getParameter("cum_audience"); // 누적관객
	String view_rating = request.getParameter("view_rating"); // 관람등급
	String plot = request.getParameter("plot"); // 줄거리
	String poster_url = request.getParameter("poster_url"); // 포스터주소
	String trailer_url = request.getParameter("trailer_url"); // 예고편주소
	String temp2 = request.getParameter("star_rating_avg");
	double star_rating_avg = Double.parseDouble(temp2); // 평점
	
	MovieVo vo = new MovieVo(movie_title, movie_title_en, release_date, runtime, cum_audience, view_rating
			, plot, poster_url, trailer_url, star_rating_avg);
	
	MovieDao dao = MovieDao.getInstance();
	dao.insertMovieInfo(vo);
	
	out.print("<script>");
	out.print("alert('영화정보가 입력되었습니다.');");
	out.print("location.href='insertMovieForm.jsp';");
	out.print("</script>");
	
%>