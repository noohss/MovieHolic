<%@page import="dao.MemberDao"%>
<%@page import="vo.MemberVo"%>
<%@page import="dao.SHA256"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	SHA256 sha256 = new SHA256();
	
	// member_info 테이블 순서
	String member_id = request.getParameter("member_id"); // 아이디
	String rawMember_pw = request.getParameter("member_pw"); // 비밀번호
	String member_pw = sha256.encrypt(rawMember_pw); // SHA256 해쉬 암호화
	
	String first_name = request.getParameter("first_name"); // 이름
	String last_name = request.getParameter("last_name"); // 성
	String phone = request.getParameter("phone"); // 전화번호
	String temp = request.getParameter("birth_date"); // 생년월일
	Date birth_date = Date.valueOf(temp);
	String gender = request.getParameter("gender"); // 성별

	MemberVo vo = new MemberVo(member_id, member_pw, first_name, last_name, phone, 
			birth_date, gender, null);
	MemberDao dao = MemberDao.getInstance();

    out.print("<script>");
    
    int count = dao.idDuplicationCheck(member_id);
    if(count == 0){
    	dao.joinInsert(vo);
    	out.print("alert('회원가입 되었습니다.');");
    	out.print("location.href='../login/loginForm.jsp';");
 	} else {
    	out.print("alert('이미 존재하는 아이디입니다. 다시 입력하십시오.');");
    	out.print("location.href='memberJoinForm.jsp';");
    }
    out.print("</script>");
%>