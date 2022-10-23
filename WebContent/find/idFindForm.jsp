<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie holic</title>
	<link rel="stylesheet" href="../css/input_box.css">
</head>
<body>
	<div class="box">
		<div class="input-box">
			<a href="../home/homeAction.jsp"><img alt="logo" src="../images/logo.jpg" style="width: 180px; height: auto; border-radius: 8px; margin-bottom: 20px;"></a>
			
			<h1 class="input-box__title">아이디 찾기</h1>
			
			<form action="idFind.jsp" method="post" class="input-box__form" autocomplete="off">
				<div class="input-box__form--box">
		            <input id="phone" type="text" name="phone" placeholder="휴대전화 입력" required>
		            <label for="phone">휴대전화 입력</label>
		        </div>
		        <span class="input-box__form--condition">
		        	'-'하이픈 기호 사용하기
		        </span>
		        <button type="button" class="input-box__form--submit" onclick="valid_check()">아이디 찾기</button>
			</form>
			<span>
				아이디: <c:out value="${member_id }" />
			</span>
			<a href="${pageContext.request.contextPath}/login/loginForm.jsp" style="margin-top: 20px;">로그인</a>
		</div>
	</div>
	
	<%@include file="../home/footer.jsp" %>
	
	<script type="text/javascript">
	function valid_check() { //회원가입 form 유효성 검사.
		const frm = document.forms[0];
		const phone = frm.phone;
		let regex;
		let isValid = true;

		regex = /^\d{3}-\d{4}-\d{4}$/;
		if(regex.test(phone.value) === false) {
			alert('잘못된 핸드폰번호 형식입니다. ( - (하이픈)기호를 사용해야합니다.)');
			phone.focus();
			isValid = false;
		}
		
		if(isValid) {
			frm.submit();
		} else {
			alert('아이디 찾기 실패');
		}
		
	}
	</script>
</body>
</html>