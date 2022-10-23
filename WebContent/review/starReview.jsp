<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="css/starReview.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
		<div>
			<table>
				<tr>
					<td><div
							>
							<strong><font size="5px">네티즌 총 별점</font></strong>
						</div>
						<div id="avgStar">
						<font
						style="max-width: ${netiAvg * 20 }px; overflow: hidden; position: absolute;
						">
									<a title=" ${netiAvg } /5"><img
										alt="star22" src="../images/star2.png"
										style="max-width: initial; margin-bottom: -2px;
										size: 30px;"></a>
							</font><img alt="star11" src="../images/star1.png"
								style="margin-bottom: -2px; size: 30px;"></div>
						<div> ${netiAvg } / 5</div>
					<td><div style="margin-top: -20px; margin-left: 35px;">
							<strong><font size="5px">&nbsp;&nbsp;&nbsp;&nbsp;리뷰 참여 수</font></strong>
						</div>

						<div style="float: right; margin-left: 10px;">
							 ${sanseki } <strong>명</strong>
						</div></td>

				</tr>

			</table>

		</div>
		<c:if test="${detCnt != '99' }">
		<div id="MyreviewTable">
			<br>
			<br>
			<br>
			<h4>내 별점 주기</h4>
			<div id="smallreviewtable">
			<form action="../review/starInsertAction2.jsp" method="post">
				<input style="display: none;" value="${member_id }" name="member_id">
				<input style="display: none;" value="${movieId }" name="movieid">
				<input style="display: none;" value="${movieName }" name="movieName">
				<br>
				<table>
					<tr>
						<td><strong> <font style="font-size: 24px;">${movieName }</font></strong></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><div style="float: left; margin-top: 1px;">별점</div>
						&nbsp;&nbsp;
						<select name="myStarRating" style="margin-right: 700px;">
						    <option value="5" selected="selected">5점</option>
						    <option value="4">4점</option>
						    <option value="3">3점</option>
						    <option value="2">2점</option>
						    <option value="1">1점</option>
						</select>
						</td>
						<td>
						
						</td>
						<td></td>
						<td></td>

					</tr>
					<tr>
						<td><div class="tag">
							<div style="float: left; margin-top: 2.5px;
							padding-left: 10px; padding-top: 3.5px;">
							</div>
							<div style="float: left;
							padding-top: 4px;">${member_id }</div>
							</div></td>
							<td> </td>
							<td> </td>
							<td> </td>
					</tr>
					<tr>
						<td>
						<textarea name="content" id="textinput" cols="75" rows="2" 
						style="resize: none; font-size: 15;" required></textarea>
						<button >등록</button>
						</td>
						<td></td>
							<td> </td>
							<td> </td>
					</tr>
				</table>
				</form>
				
				
			</div>
		</div>
		</c:if>
		
		
		<c:if test="${detCnt == '99' }">
		<div id="MyreviewTable">
			<br>
			<h3>내 별점 </h3>
			<div id="smallreviewtable">
				<table>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><div style="float: left; margin-top: 1px;">별점</div>
						
 						<font
						style="max-width: ${mycontent[0].user_star * 20}px; overflow: hidden; position: absolute;
						">
									<a title=" ${mycontent[0].user_star } /5"><img
										alt="star22" src="../images/star2.png"
										style="max-width: initial; margin-bottom: -2px;"></a>
							</font><img alt="star11" src="../images/star1.png"
								style="margin-bottom: -2px;">
						<div style="position: absolute; margin-left: 170px;
						margin-top: -19px;"> &nbsp;${member_id } </div>

						</td>

					</tr>
					<tr>
						<td>
							</td>
					</tr>
				</table>
				<div class="iyi">
					<div style="float: left; margin-top: 20px; margin-left: 3px;
					width: 100%;">
						<textarea id="mydeltu1" name="" cols="75" rows="2" readonly
					style="resize: none; font-size: 15; overflow: hidden;">${mycontent[0].content }</textarea>	
					<input id="insertDouroku" type="button" value="수정"
							style="margin-left: 10px; height: 41px; margin-top: -1px;">
						</div>
						</div>		
			</div>
		</div>
		</c:if>
		
		<h3 style="margin-top: 100px;">네티즌 리뷰</h3>
		
		<c:if test="${sanseki > 1}">
		<c:forEach var="z" begin="0" end="${sanseki-2 }">
				
				
		<div style="padding-bottom: 5px;">
			<table style="border: 1px solid black; width: 50%; text-align: left;">
				<tr style="text-align: left;">
				<td>${detlist[z].member_id } </td></tr>
				<tr>
				<td> 별점 : 
				<div id="tauserDet">
						<font
						style="max-width: ${detlist[z].user_star * 20}px; overflow: hidden; position: absolute;
						">
									<a title=" ${detlist[z].user_star } /5"><img
										alt="star22" src="../images/star2.png"
										style="max-width: initial; margin-bottom: -2px;"></a>
							</font><img alt="star11" src="../images/star1.png"
								style="margin-bottom: -2px;"></div>
						<div style="position: absolute; margin-left: 170px;
						margin-top: -19px;"> ${detlist[z].user_star } / 5</div></td>
				</tr>
				
				<tr>
					<td>
					<textarea id="mydeltu1" name="" cols="75" rows="2" readonly
					style="resize: none; font-size: 15; overflow: hidden;">${detlist[z].content }</textarea>
					</td>
				
				</tr>
			</table>
		</div>
	
		
		</c:forEach>
		</c:if>
	
		
		
		<c:if test="${sanseki <= 1}">
		현재 네티즌 리뷰가 없습니다.
		</c:if>
		
		

<br>
		<br>	



</body>
</html>