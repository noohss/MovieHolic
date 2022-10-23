<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<a href="../home/homeAction.jsp"><img alt="logo" src="../images/logo.jpg" style="width: 180px; height: auto; border-radius: 8px; margin-bottom: 20px;"></a>
			
			<h1 class="input-box__title">비밀번호 바꾸기</h1>
			
			<form action="changePw.jsp" method="post" class="input-box__form" autocomplete="off">
				<div class="input-box__form--box">
		            <input id="member_id" type="text" name="member_id" value="${user_info.member_id }" readonly>
		            <label for="member_id">아이디</label>
		        </div>
				<div class="input-box__form--box">
		            <input id="member_pw" type="text" name="member_pw" placeholder="비밀번호" required>
		            <label for="member_pw">비밀번호</label>
		        </div>
		        <span class="input-box__form--condition">
	        		숫자/영어/특수문자 하나 이상 포함, (8~20)자리
	        	</span>
		        <button type="button" class="input-box__form--submit" onclick="valid_check()">비밀번호 바꾸기</button>
			</form>
		</div>
	</div>
	
	<%@include file="../home/footer.jsp" %>
	
	<script type="text/javascript">
		function valid_check() { //회원가입 form 유효성 검사.
			const frm = document.forms[0];
			const member_pw = frm.member_pw;
			let regex;
			let isValid = true;
		
			// 3. (1)비밀번호는 숫자, 영어, 특수문자들을 각각 하나 이상 포함해야한다.
			//		(허용되는 특수문자: !, @, #, $, %, ^, +, -, =), 공백 포함 불가.
			//	  (2)비밀번호는 최소 8자리 최대 20자리이다.
			regex = /^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^+\-=])(?=\S+$).*$/;
			if(regex.test(member_pw.value) === false) {
				alert('비밀번호는 숫자, 영어, 특수문자를 하나 이상 포함해야합니다.');
				member_pw.focus();
				isValid = false;
			}
			regex = /^[0-9a-zA-Z!@#$%^+-=]{8,20}$/;
			if(regex.test(member_pw.value) === false) {
				alert('비밀번호는 최소 8자리 최대 20자리입니다.');
				member_pw.focus();
				isValid = false;
			}
	
			if(isValid) {
				frm.submit();
			} else {
				alert('비밀번호 변경 실패');
			}
			
		}
	</script>
</body>
</html>