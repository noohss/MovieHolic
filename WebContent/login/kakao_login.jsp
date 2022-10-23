<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String kakao_email = request.getParameter("kakao_email");
	String kakao_nickname = request.getParameter("kakao_nickname");
	String kakao_gender = request.getParameter("kakao_gender");
	
	session.setAttribute("kakao_email", kakao_email);
	session.setAttribute("kakao_nickname", kakao_nickname);
	session.setAttribute("kakao_gender", kakao_gender);
	session.setAttribute("sessionId", session.getId());
	
	out.print("<script>");
		out.print("alert('로그인 되었습니다.');");
		out.print("location.href='../home/homeAction.jsp';");
	out.print("</script>");
%>