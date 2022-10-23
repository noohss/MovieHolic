<%@page import="vo.MovieVo2"%>
<%@page import="vo.MovieVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%

MovieDao dao = MovieDao.getInstance(); 
request.setCharacterEncoding("UTF-8");
String query = request.getParameter("searchVal");
String pageE = request.getParameter("page");
String searchCnt = request.getParameter("cnt"); // 총 검색결과 출력용
String pageIn = request.getParameter("pageIn"); // 현재 페이지
Map<String, Object> map = new HashMap<>();


if(pageE == null){
	
	map.put("name", query);
	List<MovieVo2> list = dao.searchList1(map);
	
	request.setAttribute("dbdata", list);  // db데이터 애트리뷰트
	request.setAttribute("dbdataCnt", list.size()); //db 비교 cnt
	request.setAttribute("movieName", query);
	
	double check1 = (list.size()*0.1);
	check1 = Math.ceil(check1);
	request.setAttribute("pageButton", check1);
	
	pageIn = "1";                                  //현재 페이지용
	request.setAttribute("pageIn", pageIn);
	
	pageContext.forward("searchMainEnd.jsp");
	
}else{
	int pageInt = Integer.parseInt(pageE);
	// 0 ~ 9    0123456789 10개
	// 10 ~ 19 
	// 20 ~ 29
	// 30 ~ 39
	map.put("name", query);
	map.put("page", pageInt);
	map.put("page9", pageInt + 9);
	List<MovieVo2> list = dao.searchListPage(map);
	//수정
	request.setAttribute("dbdata", list);  // db데이터 애트리뷰트
	request.setAttribute("dbdataCnt", searchCnt); //db 비교 cnt  예 : 5개 길이
	request.setAttribute("movieName", query);	
	
	double check1 = Integer.parseInt(searchCnt); //36
	check1 = (check1*0.1);  // 36 * 0.1 = 3.6
	check1 = Math.ceil(check1);  // 4
	request.setAttribute("pageButton", check1);
	
	request.setAttribute("pageIn", pageIn); //현재 페이지
	
	pageContext.forward("searchMainEnd.jsp");
}












%>