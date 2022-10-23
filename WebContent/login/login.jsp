<%@page import="vo.MemberVo"%>
<%@page import="dao.MemberDao"%>
<%@page import="dao.SHA256"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	SHA256 sha256 = new SHA256();

	String member_id = request.getParameter("member_id");
	
	String rawMember_pw = request.getParameter("member_pw");
	String member_pw = sha256.encrypt(rawMember_pw); // SHA256 해쉬 암호화
	
	MemberDao dao = MemberDao.getInstance();
	Map<String, String> map = new HashMap<>();
	map.put("member_id", member_id);
	map.put("member_pw", member_pw);
	
	out.print("<script>");
	
	MemberVo vo = dao.login(map);
	
	if(vo != null) {
		session.setAttribute("user_info", vo);
		session.setAttribute("sessionId", session.getId());
		out.print("alert('로그인 되었습니다.');");
		out.print("location.href='../home/homeAction.jsp';");
	} else {
		out.print("alert('아이디 또는 비밀번호가 잘못되었습니다.');");
		out.print("location.href='loginForm.jsp';");
	}
	out.print("</script>");
%>