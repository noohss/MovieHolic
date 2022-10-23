package dao;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.GenreVo2;
import vo.MovieVo2;
import vo.starAvgVo;


public class MovieDao2 {
	
	private static MovieDao2 dao = new MovieDao2();
	private MovieDao2() { }
	public static MovieDao2 getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<MovieVo2> searchList(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<MovieVo2> list = mapper.selectList("search.searchAll", map);
		mapper.close();
		return list;
		
	}
	
	public List<MovieVo2> searchListPage(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<MovieVo2> list = mapper.selectList("search.searchAllPage", map);
		mapper.close();
		return list;
		
	}
	
	public List<GenreVo2> searchGenre(Map<String, Object> map){  
		SqlSession mapper = factory.openSession();
		List<GenreVo2> list = mapper.selectList("search.genreSearch", map);
		mapper.close();
		return list;
		
	}
	
	public List<starAvgVo> searchAvg(int id) { 
		SqlSession mapper = factory.openSession();
		List<starAvgVo> list = mapper.selectList("search.avg" , id);
		mapper.close();
		return list;
	}
	
	
	public void updateAvg(int movie_id) {
		SqlSession mapper = factory.openSession();
		mapper.update("updateStar", movie_id);
		mapper.commit();
		mapper.close();
	}
	
	public int reviewSearch(Map<String, Object> map) { 
		SqlSession mapper = factory.openSession();
		int cnt = mapper.selectOne("reviewSearch" , map);
		mapper.close();
		return cnt;
	}

}
