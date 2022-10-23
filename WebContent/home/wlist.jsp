<%@page import="vo.Wlist"%>
<%@page import="java.util.List"%>
<%@page import="dao.WlistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	WlistDao dao = WlistDao.getInstance();
	List<Wlist> list = dao.selectWlist();
	request.setAttribute("list", list);
	pageContext.forward("wlistView.jsp");
%>