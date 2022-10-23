<%@page import="dao.MovieDao2"%>
<%@page import="vo.contentVo"%>
<%@page import="vo.starAvgVo"%>
<%@page import="dao.MovieDao"%>
<%@page import="vo.MovieVo"%>
<%@page import="vo.commentVo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="dao.insertDao"%>
<%@page import="vo.starVo"%>
<%@page import="dao.starDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%

request.setCharacterEncoding("UTF-8");

//revuew id = 시퀀스
String member_id = request.getParameter("member_id");  //3
String content = request.getParameter("content");
//등록일자 : sysdate
//수정일자: 미정
int movie_id = Integer.parseInt(request.getParameter("movieid")); //2
int userStar;
if(request.getParameter("myStarRating") != null){
	userStar = Integer.parseInt(request.getParameter("myStarRating"));
}else{
	userStar = 0;
}

insertDao dao = insertDao.getInstance();
starVo vo = new starVo(member_id, content, movie_id, userStar);

dao.insert(vo);


//되돌아가기
String movieName = request.getParameter("movieName");  //1
MovieDao2 dao2 = MovieDao2.getInstance();

//update
dao2.updateAvg(movie_id);
//avg   
List<starAvgVo> list4 = dao2.searchAvg(movie_id);
//
pageContext.forward("../movie/movie_info.jsp?avg="  + list4.get(0).getStar_rating_avg() + "&movieName="+ movieName + "&movie_id=" +movie_id+ "&member_id="+ member_id + "");
%>