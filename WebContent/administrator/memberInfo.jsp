<%@page import="vo.MemberVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao dao = MemberDao.getInstance();
	List<MemberVo> list = dao.getMemberList();
	
	request.setAttribute("list", list);
	pageContext.forward("memberInfoForm.jsp");
%>