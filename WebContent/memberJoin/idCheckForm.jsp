<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheckForm.jsp</title>
</head>
<body>
	<div style="text-align: center">
	<h3>아이디 중복 확인</h3>
	<form action="idCheck.jsp" method="post">
		아이디: <input type="text" name="member_id" id="member_id" autofocus>
		<input type="submit" value="중복확인">
	</form>
	</div>
</body>
</html>