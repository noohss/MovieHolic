<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

footer{
	margin-left: -10px;
	margin-bottom: 0px;
	text-align: center;
	padding: 20px;
	position : relative;
	max-width: 100%;
	width: 100%;
	bottom : 0;
}
ul{
	margin: 0px 0px;
}

li {
	font-size: 20px;
}
</style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
</head>
<body>
</body>
  <footer>
  <hr>
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="${pageContext.request.contextPath }/home/homeAction.jsp" class="nav-link px-2 text-muted">홈</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath }/genre/action.jsp" class="nav-link px-2 text-muted">장르별</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">커뮤니티</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">고객센터</a></li>
    </ul>
    <p class="text-center text-muted">© 2022 Company, Movie Holic</p>
  </footer>
</html>