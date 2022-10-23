<%@page import="java.util.ArrayList"%>
<%@page import="vo.contentVo"%>
<%@page import="vo.commentVo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="vo.StarRating"%>
<%@page import="vo.Director"%>
<%@page import="vo.Actor"%>
<%@page import="vo.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	MovieDao dao = MovieDao.getInstance();
	ActorDao dao1 = ActorDao.getInstance();
	DirectorDao dao2 = DirectorDao.getInstance();
	
		int movie_id = Integer.parseInt(request.getParameter("movie_id"));
	

	
	Movie vo = dao.selectOne(movie_id);
	Movie vo1 = dao.selectOne1(movie_id);
	Actor vo2 = dao1.selectOne2(movie_id);
	Director vo3 = dao2.selectOne3(movie_id);

	StarRating vo4 = dao.selectOne4(movie_id);

	pageContext.setAttribute("vo", vo);
	pageContext.setAttribute("vo1", vo1);
	pageContext.setAttribute("vo2", vo2);
	pageContext.setAttribute("vo3", vo3);
	pageContext.setAttribute("vo4", vo4);
	
	//곽
	
	starDao dao4 = starDao.getInstance();
	MovieDao2 dao5 = MovieDao2.getInstance();
	
	Map<String, Object> map = new HashMap<>();
	List<commentVo> list;
	List<contentVo> list2;
	List<contentVo> list3;
	
	
	float netiAvg = dao4.netistarcount(movie_id);
	
	pageContext.setAttribute("netiAvg", netiAvg);

	
	
	
	
	
	
	request.setCharacterEncoding("UTF-8");
	String memberid = request.getParameter("member_id");
	String name = request.getParameter("movieName");
	String avg = request.getParameter("avg");
	String genpage = request.getParameter("genpage");
	String member_id = "hwaminn9185";
	pageContext.setAttribute("member_id", member_id);
	pageContext.setAttribute("movieId", movie_id);
			
	map.put("movie_id", movie_id);
	map.put("member_id", member_id);
	int check;

	
	genpage = request.getParameter("genpage");
	//페이지 용
	if(genpage == null) genpage = "1";


	if(genpage == "1"){
		
		list2 = dao4.contentSearch(map);  // 본인 제외 리뷰 찾기 (핵심 rownum 사용)
		list = dao4.starcount(map);

		//별점 찾기 //댓글 가져오기
		check = dao5.reviewSearch(map);
		list3 = dao4.mycontentSearch(map);
		
		if(check > 0){
			request.setAttribute("detCnt", 99); 
			request.setAttribute("mycontent", list3);
			pageContext.setAttribute("mycontent", list3);
		}else{
			request.setAttribute("detCnt", 11);
		}
		
		if(list2.size() > 5){
			double size = list2.size(); // 9 1.8
			size = size/5; // 1.8
			size = Math.ceil(size);
			request.setAttribute("pageIzyou", size);
		}
		
		int page1 = 1;
		request.setAttribute("genpage", page1);
		request.setAttribute("sanseki", list.get(0).getA());
		request.setAttribute("detlist", list2);
	}





	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 정보</title>
<link rel="stylesheet" href="../css/movie_info.css" />
<link rel="stylesheet" href="../css/tab.css" />

</head>
<body>
<%@ include file="../home/header.jsp"%>
	<main class="content">
		<article id="mainContent" class="article">
			<div class="section_detail">
				<!-- 상세상단 기본정보 -->
				<div class="box_basic" data-tiara-layer="main">
					<div class="info_poster">
						<div class="thumb_img">
							<span class="bg_img"
								style="background-image:url(${vo.poster_url})"></span>

						</div>
					</div>
					<div class="info_detail">
						<div class="detail_tit">
							<div class="detail_tit_fixed" aria-hidden="true">
								<div class="inner_tit">
									<span class="txt_tit"></span>
								</div>
							</div>
							<h3 class="tit_movie">
								<span class="txt_tit"> ${vo.movie_title } </span>
							</h3>
							<div>
							${vo.movie_title_en }
							</div>
						</div>
						<div class="detail_cont">
							<div class="inner_cont">
								<dl class="list_cont">
									<dt>개봉</dt>
									<dd>${vo.release_date }</dd>
								</dl>
								<dl class="list_cont">
									<dt>장르</dt>
									<dd>${vo1.genre_name }</dd>
								</dl>

								<dl class="list_cont">
									<dt>등급</dt>
									<dd>${vo.view_rating }</dd>
								</dl>

								<dl class="list_cont">
									<dt>상영시간</dt>
									<dd>${vo.runtime }</dd>
								</dl>
							</div>
							<div class="inner_cont">
								<dl class="list_cont">
									<dt>평점</dt>
									<dd><span style="color:red;">★</span>${vo.star_rating_avg }</dd>
								</dl>
								<dl class="list_cont">
									<dt>누적관객</dt>
									<dd>${vo.cum_audience }</dd>
								</dl>
								<dl class="list_cont">
									<dt>감독</dt>
									<dd>${vo3.dir_name }</dd>
								</dl>
								<dl class="list_cont">
									<dt>출연진</dt>
									<dd>${vo2.actor_name }</dd>
								</dl>

							</div>

						</div>
					</div>

				</div>
				<!-- 상세하단 -->
				<div id="css_tabs">
					<!-- 라디오 버튼 -->
					<input id="tab1" type="radio" name="tab" checked="checked" /> <input
						id="tab2" type="radio" name="tab" /> <input id="tab3"
						type="radio" name="tab" />

					<!-- 라벨 : 화면에 표시되는 탭 제목 -->
					<label for="tab1">줄거리</label>
					<label for="tab2">예고편</label> 
					<label for="tab3">리뷰</label>
				
					<!-- 탭 내용 : 탭 제목을 선택했을 때 표시되는 본문 -->
					<div class="tab1_content">
						${vo.plot }
					</div>
					<div class="video-list">
						<ul>
							<li>${vo.trailer_url }</li>
						</ul>
					</div>
					<div class="tab3_content">
					
					<%@ include file="../review/starReview.jsp" %>
					</div>
				</div>
			</div>
		</article>
	</main>
<%@ include file="../home/footer.jsp"%>
</body>
</html>