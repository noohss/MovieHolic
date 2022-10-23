<%@page import="java.util.List"%>
<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie holic</title>
	<link rel="stylesheet" href="css/memberInfoForm.css">
</head>
<body>
	<%@include file="adminHeader.jsp" %>
	
	<div class="member-info">
		<h2>관리자 페이지</h2>
		<h4>회원 정보</h4>
		<table>
			<tr>
				<td>회원id</td>
				<td>성</td>
				<td>이름</td>
				<td>연락처</td>
				<td>생년월일</td>
				<td>성별</td>
				<td>가입일자</td>
				<td>회원삭제</td>
			</tr>
			<%
				@SuppressWarnings("unchecked")
				List<MemberVo> list = (List<MemberVo>)request.getAttribute("list");
				for(MemberVo vo : list) {
			%>
			<tr>
				<td><%= vo.getMember_id()%></td>
				<td><%= vo.getLast_name()%></td>
				<td><%= vo.getFirst_name()%></td>
				<td><%= vo.getPhone()%></td>
				<td><%= vo.getBirth_date()%></td>
				<td><%= vo.getGender()%></td>
				<td><%= vo.getReg_date()%></td>
				<td><a href="deleteMemberInfo.jsp?member_id=<%= vo.getMember_id()%>">삭제</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
	
	<%@include file="../home/footer.jsp" %>
</body>
</html>