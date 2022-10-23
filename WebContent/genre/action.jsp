<%@page import="java.time.LocalDate"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.PageVo"%>
<%@page import="java.util.Map"%>
<%@page import="vo.MovieVo"%>
<%@page import="vo.MovieGenreVo"%>
<%@page import="vo.GenreVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MovieDao dao = MovieDao.getInstance();
List<MovieGenreVo> list = dao.all();
request.setAttribute("list", list);

pageContext.forward("view.jsp");
%>