<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie holic</title>
	<link rel="stylesheet" href="css/myPage.css">
</head>
<body>
	<%@include file="../home/header.jsp" %>
	
	<div class="myPage">
		<h2 class="myPage__title">마이페이지</h2>
		<h4 class="myPage__title">
			${user_info.last_name }
			${user_info.first_name }
			님 안녕하세요.
		</h4>
		<table class="myPage__table">
			<tr>
				<td>아이디</td>
				<td>${user_info.member_id }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${user_info.phone }</td>
			</tr>
			<c:if test="${user_info.gender == 'male' }">
				<tr>
					<td>성별</td>
					<td>남성</td>
				</tr>
			</c:if>
			<c:if test="${user_info.gender == 'female' }">
				<tr>
					<td>성별</td>
					<td>여성</td>
				</tr>
			</c:if>
			<tr>
				<td>생년월일</td>
				<td>${user_info.birth_date }</td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td>${user_info.reg_date }</td>
			</tr>
		</table>
		
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/myPage/changePwForm.jsp'"
		class="myPage__button">
			비밀번호 변경
		</button>
	</div>
	
	<%@include file="../home/footer.jsp" %>
</body>
</html>