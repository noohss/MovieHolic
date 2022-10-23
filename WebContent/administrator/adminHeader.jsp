<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/header.css">
  <style type="text/css">

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
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
          <input type="search" class="form-control form-control-dark" placeholder="검색어를 입력하세요." aria-label="Search">
        </form>
               	<c:if test="${user_info.member_id == 'administrator'}">
        	<div class="text-end">
	            <button type="button" onclick="location.href='${pageContext.request.contextPath}/administrator/insertMovieForm.jsp'" class="btn btn-outline-light me-2">영화입력</button>
	            <button type="button" onclick="location.href='${pageContext.request.contextPath}/administrator/memberInfo.jsp'" class="btn btn-warning">회원정보</button>
	            <button type="button" onclick="location.href='${pageContext.request.contextPath}/login/logout.jsp'" class="btn btn-outline-light me-2">로그아웃</button>
        	</div>
       	</c:if>
      </div>
    </div>
  	</header>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
