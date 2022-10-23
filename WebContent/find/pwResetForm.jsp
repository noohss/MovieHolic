<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie holic</title>
	<link rel="stylesheet" href="../css/input-box.css">
</head>
<body>
	<div class="box">
		<div class="input-box">
			<a href="../home/homeAction.jsp"><img alt="logo" src="${pageContext.request.contextPath }/images/logo.jpg" style="width: 180px; height: auto; border-radius: 8px; margin-bottom: 20px;"></a>
			
			<h1 class="input-box__title">비밀번호 재설정</h1>
			
			<form action="pwReset.jsp" method="post" class="input-box__form" autocomplete="off">
				<div class="input-box__form--box">
		            <input id="member_id" type="text" name="member_id" placeholder="아이디 입력" required>
		            <label for="member_id">아이디 입력</label>
		        </div>
		        <input type="submit" class="input-box__form--submit" value="재설정" style="border-bottom: none;">
			</form>
			<span>
				재설정된 비밀번호: <c:out value="${member_pw }" />
			</span>
			
			<a href="${pageContext.request.contextPath}/login/loginForm.jsp" style="margin-top: 20px;">로그인</a>
			
			<span>비밀번호는 마이페이지에서 바꿀 수 있습니다.</span>
		</div>
	</div>
	
	<%@include file="../home/footer.jsp" %>
</body>
</html>