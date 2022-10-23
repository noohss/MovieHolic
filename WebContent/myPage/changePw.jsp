<%@page import="dao.MemberDao"%>
<%@page import="vo.MemberVo"%>
<%@page import="dao.SHA256"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	SHA256 sha256 = new SHA256();
	MemberVo vo = new MemberVo();
	MemberDao dao = MemberDao.getInstance();
	
	String member_id = request.getParameter("member_id");
	String rawMember_pw = request.getParameter("member_pw");
	String member_pw = sha256.encrypt(rawMember_pw);
	
	vo.setMember_id(member_id);
	vo.setMember_pw(member_pw);
	
	dao.changePw(vo);
	
	out.print("<script>");
    
    out.print("alert('비밀번호가 변경되었습니다. 다시 로그인하십시오.');");
    out.print("location.href='../login/logout.jsp';");

    out.print("</script>");
%>