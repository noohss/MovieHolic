<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String phone = request.getParameter("phone");
	
	MemberDao dao = MemberDao.getInstance();
	String member_id = dao.idFind(phone);

	out.print("<script>");
	
	if(member_id != null) {
		out.print("alert('아이디를 찾았습니다.');");
		request.setAttribute("member_id", member_id);
		pageContext.forward("idFindForm.jsp");
	} else {
		out.print("alert('아이디를 찾지 못했습니다.');");
		out.print("location.href='idFindForm.jsp';");
	}

    out.print("</script>");
%>