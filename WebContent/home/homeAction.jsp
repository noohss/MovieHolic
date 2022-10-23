<%@page import="vo.Random"%>
<%@page import="dao.GenreDao"%>
<%@page import="vo.Genre"%>
<%@page import="dao.RandomDao"%>
<%@page import="vo.Poster"%>
<%@page import="java.util.List"%>
<%@page import="dao.PosterDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PosterDao dao = PosterDao.getInstance();
	List<Poster> list = dao.selectAll();
	request.setAttribute("list", list);
	
	String genre_name = request.getParameter("genre_name");
	GenreDao gdao = GenreDao.getInstance();
	Genre gvo = gdao.randomGenre(genre_name);
	request.setAttribute("gvo", gvo);

	RandomDao rdao = RandomDao.getInstance();
	List<Random> rlist = rdao.randomMovie(gvo.getGenre_name());
	request.setAttribute("rlist", rlist);
	
	pageContext.forward("home.jsp");
%>