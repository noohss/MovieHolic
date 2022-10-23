<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/input_box.css">
    <title>movie holic</title>
</head>
<body>
	<div class="box">
		<div class="input-box">
			<a href="../home/homeAction.jsp"><img alt="logo" src="image/logo.jpg" style="width: 180px; height: auto; border-radius: 8px; margin-bottom: 20px;"></a>
			
	        <h1 class="input-box__title">로그인</h1>
	        
	        <form action="login.jsp" method="post" class="input-box__form" autocomplete="off">
	            <div class="input-box__form--box">
	                <input id="username" type="text" name="member_id" placeholder="아이디" required>
	                <label for="username">아이디</label>
	            </div>
	            <div class="input-box__form--box">
	                <input id="password" type="password" name="member_pw" placeholder="비밀번호" required>
	                <label for="password">비밀번호</label>
	        	</div>
	        	<input type="submit" class="input-box__form--submit" value="로그인" style="border-bottom: none;">
	        </form>
	        
	        <a href="../memberJoin/memberJoinForm.jsp">회원가입</a>
	        <a href="../find/idFindForm.jsp">아이디 찾기</a>
	        <a href="../find/pwResetForm.jsp">비밀번호 찾기</a>
	        
	        <a href="javascript:kakaoLogin();"><img src="image/kakao_login.png" alt="카카오계정 로그인" style="width: 270px; height: auto;"/></a>
	    </div>
    </div>

    <form action="kakao_login.jsp" method="post" id="kakao-form">
    	<input name="kakao_email" type="hidden" id="kakao_email">
    	<input name="kakao_nickname" type="hidden" id="kakao_nickname">
    	<input name="kakao_gender" type="hidden" id="kakao_gender">
    </form>
    
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('f5e1add89e9146d7b0a8199f215193e4');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email, gender', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    //console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            const kakao_email = kakao_account.email;
                            const kakao_nickname = kakao_account.profile.nickname;
                            const kakao_gender = kakao_account.gender;
                            //console.log(a);
                            document.getElementById('kakao_nickname').value = kakao_nickname;
                            document.forms[1].submit();
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    <%@include file="../home/footer.jsp" %>
</body>
</html>