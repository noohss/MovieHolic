<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/header.css">
  <style type="text/css">
.searchBox {
	width: 250px;
	height: 31px;
	margin-top: 1px;
}

.searchButton {
	width: 40px;
	height: 31px;
	margin-top: 5.5px;
}
  </style>
  </head>
  <body>
	<header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="${pageContext.request.contextPath }/home/homeAction.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <img class="logo" alt="" src="../images/logo.jpg">
        </a>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="${pageContext.request.contextPath }/genre/action.jsp" class="nav-link px-2 text-white">장르별</a></li>
          <li><a href="#" class="nav-link px-2 text-white">커뮤니티</a></li>
          <li><a href="#" class="nav-link px-2 text-white">고객센터</a></li>
        </ul>
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="${pageContext.request.contextPath }/search/searchAction.jsp" method="post">
          <input style="border-radius: 5px;" name="searchVal" type="text" minlength="2" placeholder=" 영화를 검색하세요." 
				class="searchBox" required>
				<button style="border-radius: 5px; border: 1px solid lightgray;" class="searchButton">
				<img alt="dod" src="../images/searchicon.png"></button>
        </form>
        
        <!-- 바뀐부분 시작 -->
        <c:if test="${user_info != null || kakao_nickname != null}">
          <div class="text-end">
           	<c:if test="${user_info != null}">
           		<c:if test="${user_info.member_id != 'administrator'}">
           			<c:out value="${user_info.last_name }"></c:out>
	               	<c:out value="${user_info.first_name }"></c:out>
	               	님
	               	<button type="button" onclick="location.href='${pageContext.request.contextPath}/login/logout.jsp'" class="btn btn-outline-light me-2">로그아웃</button>
	                <button type="button" onclick="location.href='${pageContext.request.contextPath}/myPage/myPageForm.jsp'" class="btn btn-warning">마이페이지</button>
           		</c:if>
               	<c:if test="${user_info.member_id == 'administrator'}">
               		<c:out value="${user_info.last_name }"></c:out>
	               	<c:out value="${user_info.first_name }"></c:out>
	               	님
               		<button type="button" onclick="location.href='${pageContext.request.contextPath}/login/logout.jsp'" class="btn btn-outline-light me-2">로그아웃</button>
            		<button type="button" onclick="location.href='${pageContext.request.contextPath}/administrator/insertMovieForm.jsp'" class="btn btn-warning">관리자페이지</button>
               	</c:if>
           	</c:if>
            <c:if test="${kakao_nickname != null }">
            	<c:out value="${kakao_nickname }"></c:out>
            	님
            	<button type="button" onclick="location.href='javascript:kakaoLogout();'" class="btn btn-outline-light me-2">로그아웃</button>
            <button type="button" onclick="location.href='javascript:secession();'" class="btn btn-outline-light me-2">연결끊기</button>
            </c:if>
          </div>
		</c:if>

        <c:if test="${user_info == null && kakao_nickname == null}">
          <div class="text-end">
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/login/loginForm.jsp'" class="btn btn-outline-light me-2">로그인</button>
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/memberJoin/memberJoinForm.jsp'" class="btn btn-warning">회원가입</button>
          </div>
        </c:if>
      </div>
    </div>
  	</header>
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <script>
  	  window.Kakao.init('f5e1add89e9146d7b0a8199f215193e4');
  
	  function kakaoLogout() {
	    	if (!Kakao.Auth.getAccessToken()) {
			    console.log('로그인되지 않았습니다.');
			    return;
		    }
		    Kakao.Auth.logout(function(response) {
		    	console.log(response);
	    		alert('로그아웃되었습니다.');
			    window.location.href='${pageContext.request.contextPath}/login/logout.jsp';
		    });
	  };
	  
	  function secession() {
			Kakao.API.request({
		    	url: '/v1/user/unlink',
		    	success: function(response) {
		    		//console.log(response);
		    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
		    		window.location.href='${pageContext.request.contextPath}/login/logout.jsp';
		    	},
		    	fail: function(error) {
		    		console.log('탈퇴 미완료');
		    		console.log(error);
		    	},
			});
	  };
  </script>
  <!-- 바뀐부분 끝 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>

