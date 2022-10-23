<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String member_id = request.getParameter("member_id");
	MemberDao dao = MemberDao.getInstance();
	
	dao.deleteMemberInfo(member_id);
	pageContext.forward("memberInfo.jsp");
%>