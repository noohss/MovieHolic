<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/input-box.css">
    <title>movie holic</title>
</head>
<body>
	<div class="box">
	<div class="input-box">
		<a href="../home/homeAction.jsp"><img alt="logo" src="../login/image/logo.jpg" style="width: 180px; height: auto; border-radius: 8px; margin-bottom: 20px;"></a>
		
        <h1 class="input-box__title">회원가입</h1>
        
        <span class="input-box__form--condition">
        	가입을 하면 무비홀릭의
        	<a href="termsOfService.jsp">이용약관</a>, 
        	<a href="personal_information.jsp">개인정보 취급방침 및 개인정보 3자 제공</a>
        	에 동의하게 됩니다.
        </span>
        
        <form action="memberJoin.jsp" method="post" class="input-box__form" autocomplete="off">
        	<div class="input-box__form--box">
        		<input id="last_name" name="last_name" type="text" placeholder="성" required>
        		<label for="last_name">성</label>
        	</div>
        	<div class="input-box__form--box">
        		<input id="first_name" name="first_name" type="text" placeholder="이름" required>
        		<label for="first_name">이름</label>
        	</div>
        	<div class="input-box__form--box">
        		<input id="member_id" name="member_id" type="text" placeholder="아이디" required>
        		<label for="member_id">아이디</label>
        	</div>
        	<span class="input-box__form--condition">
        		알파벳 소문자와 숫자만 입력 가능, (8~15)자리
        	</span>
        	<div class="input-box__form--box">
        		<input id="member_pw" name="member_pw" type="password" placeholder="비밀번호" required>
        		<label for="member_pw">비밀번호</label>
        	</div>
        	<span class="input-box__form--condition">
        		숫자/영어/특수문자 하나 이상 포함, (8~20)자리
        	</span>
        	<div class="input-box__form--box">
	        	<input id="birth_date" name="birth_date" type="date" placeholder="생년월일(8자)" 
	        	value="2000-01-01" required>
	        	<label for="birth_date">생년월일</label>
        	</div>
        	<div></div>
			
			<div class="input-box__form--radio">
			    <span style="margin-right: 25px">성별: </span>
			    	<span>남성</span>
			    	<input type="radio" name="gender" value="male" checked style="margin-right: 25px">
				    <span>여성</span>
				    <input type="radio" name="gender" value="female">
			</div>

        	<div class="input-box__form--box">
        		<input id="phone" name="phone" type="text" placeholder="휴대전화" required>
        		<label for="phone">휴대전화</label>
        	</div>
        	<span class="input-box__form--condition">
        		'-'하이픈 기호 사용하기
        	</span>
			<button type="button" class="input-box__form--submit" onclick="valid_check()">회원가입</button>
        </form>
    </div>
    </div>
    
    <script src="js/validation.js"></script>
    <%@include file="../home/footer.jsp" %>
</body>
</html>