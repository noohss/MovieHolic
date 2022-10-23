<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@page import="vo.MovieVo"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="kensaku_header">
<br>
	<form action="searchAction.jsp" method="post">
		<ul class="searchBar">
			<li class="MST">
				<strong>영화 검색</strong></li>
			<li><input name="searchVal" type="text" minlength="2" placeholder=" 영화를 검색하세요." 
				class="searchBox" required></li>
			<li><button class="searchButton">
				<img alt="dod" src="../images/searchicon.png">
				</button></li>
		</ul>
	</form>
</div>
<br>
<hr>
