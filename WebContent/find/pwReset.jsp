<%@page import="dao.SHA256"%>
<%@page import="vo.MemberVo"%>
<%@page import="vo.RandomPassword"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	SHA256 sha256 = new SHA256();
	RandomPassword rp = RandomPassword.getInstance();
	MemberVo vo = new MemberVo();
	MemberDao dao = MemberDao.getInstance();

	String member_id = request.getParameter("member_id");
	String rawMember_pw = rp.getRandomPassword(10); // 10자리 난수 비밀번호 생성
	String member_pw = sha256.encrypt(rawMember_pw); // SHA256 해쉬 암호화

	vo.setMember_id(member_id);
	vo.setMember_pw(member_pw);
	
	int count = dao.idDuplicationCheck(member_id);
	
	out.print("<script>");
	
	if(count == 1) {
		dao.changePw(vo);
		request.setAttribute("member_pw", rawMember_pw);
		pageContext.forward("pwResetForm.jsp");
	} else if(count == 0){
		out.print("alert('존재하지 않는 아이디입니다.');");
		out.print("location.href='pwResetForm.jsp';");
	} else {
		out.print("alert('오류');");
		out.print("location.href='pwResetForm.jsp';");
	}
	
	out.print("</script>");
	
%>