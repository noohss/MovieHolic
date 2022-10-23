<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 검색</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/searchMain2.css">
</head>
<body>

	<%@ include file="../home/header.jsp"%>
	<br>
	<div class="keltukaMain">

		<c:if test="${dbdataCnt == '0' }">
			<!-- 검색결과 없음 -->
			<div id="SearchFalse">
				<br>
				<h2>죄송합니다.</h2>
				<b> 검색 결과가 없습니다.</b>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button">영화 등록 요청하기</button>
			</div>
		</c:if>

		<c:if test="${dbdataCnt != '0' }">
			<!-- 검색 결과 있음 -->
			<b style="margin-left: 13px;">&#39; <font color="#e53935">${movieName }</font>
				&#39; 에 대한 영화 검색결과 입니다.
			</b>
			<font style="font-size: 13px; margin-left: 10px;">( 검색 결과 :
				${dbdataCnt } 건)</font>
			<br>
			<br>
			<br>
			<c:set var="loop" value="true" />
			<c:forEach var="i" begin="0" end="${dbdataCnt-1 }">
				<c:if test="${dbdata[i].movie_title == null}">
					<c:set var="loop" value="false" />
				</c:if>
				<c:if test="${loop }">
					<form action="../movie/movie_info.jsp" method="post">
					<input name="movie_id" value="${dbdata[i].movie_id }" style="display: none;">
					<input name="movieName" value="${dbdata[i].movie_title }" style="display: none;">
					
					<button style="border: 0; outline: 0; background-color: white;">  
					<table class="mainTable">
						<tr>
							<td rowspan="8" class="gan"><img alt=""
								src="${dbdata[i].poster_url }" class="imgcss"></td>
							<td style="font-size: 1.8em; min-width: 700px;"><strong>${dbdata[i].movie_title }</strong>
								<font style="color: rgb(169, 169, 169); font-size: 0.7em;">${dbdata[i].release_date }
									개봉</font></td>
						</tr>
						<tr>
							<td><strong>네티즌 평점 : </strong> <font
								style="max-width: ${dbdata[i].star_rating_avg * 20}px; overflow: hidden; position: absolute;">
									<font title=" ${dbdata[i].star_rating_avg } /5" class="imgDiv"><img
										alt="star22" src="../images/star2.png"
										style="max-width: initial; margin-bottom: -2px;"></font>
							</font> <img alt="star11" src="../images/star1.png"
								style="margin-bottom: -2px;"></td>
						</tr>
						<tr>
							<td><strong>누적 관객 수 : </strong>${dbdata[i].cum_audience }</td>
						</tr>


						<tr>
							<td><strong>상영 시간 : </strong>${dbdata[i].runtime }</td>
						</tr>

						<tr>
							<td><strong>시청 등급 : </strong>${dbdata[i].view_rating }</td>
						</tr>

					</table> </button>
					</form>
					<c:if test="${i == 9}">
						<c:set var="loop" value="false" />
					</c:if>

				</c:if>
						
			</c:forEach>
	
			<c:if test="${pageButton > 1 }">
				<div id="dobogi">
					<br>
					<table>
						<tr>
							<td><button type="button" id="maeiButton"
							style="margin-top: -18px; text-align: center; display: none;" onclick="maei()">이전</button></td>
							<c:forEach var="pg" begin="1" end="${pageButton }">
								<td><form action="searchAction.jsp" method="post" id="nex${pg }">
										<input name="searchVal" value="${movieName }"
											style="display: none;"> 
										<input name="page"
											value="${(9 * (pg-1)) + pg}" style="display: none;" id="pag">
										<input name="cnt" value="${dbdataCnt }" style="display: none;">
										<input name="pageIn" value="${pg }" style="display: none;">
										<button id="page${pg }" class="butmous">${pg }</button>
									</form></td>
							</c:forEach>
							<td><button type="button" id="nextButton"
									style="margin-top: -18px; text-align: center;" onclick="next()">다음</button></td>
						</tr>
					</table>
				</div>
				
				
				
				<script type="text/javascript">
				
				let a = document.getElementById('nex${pageIn-1}');
				let b = document.getElementById('nex${pageIn+1}');
			
				if(a != null){
					document.getElementById('maeiButton').style.display ="block";								
				}
 				if(b == null){
					document.getElementById('nextButton').style.display ="none";
				}
				function next() {
					document.getElementById('nex${pageIn+1}').submit();
					 
				}
				function maei() {
					document.getElementById('nex${pageIn-1}').submit();
					 
				}
				document.getElementById('page${pageIn}').style.color = 'darkorange';
				document.getElementById('page${pageIn}').type='button';
				
				
				</script>
			</c:if>
		</c:if>




	</div>
</body>
<%@ include file="../home/footer.jsp"%>
</html>