package dao;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.GenreVo;
import vo.GenreVo2;
import vo.Movie;
import vo.MovieGenreVo;
import vo.MovieVo;
import vo.MovieVo2;
import vo.SelectMovie;
import vo.StarRating;
import vo.starAvgVo;


public class MovieDao {
	
	private static MovieDao dao = new MovieDao();
	private MovieDao() { }
	public static MovieDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<MovieVo> searchList(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<MovieVo> list = mapper.selectList("search.searchAll", map);
		mapper.close();
		return list;
		
	}
	
	public List<GenreVo> searchGenre(Map<String, Object> map){  
		SqlSession mapper = factory.openSession();
		List<GenreVo> list = mapper.selectList("search.genreSearch", map);
		mapper.close();
		return list;
		
	}
	
	public List<MovieVo> searchFirstList() {
		SqlSession mapper = factory.openSession();
		List<MovieVo> list = mapper.selectList("search.searchFirst");
		mapper.close();
		return list;
	}
	
	public List<Movie> selectAll(){
		SqlSession mapper = factory.openSession();
		List<Movie> list = mapper.selectList("selectAll");
		mapper.close();
		return list;
	}
	
	public Movie selectOne(int movie_id) {
		SqlSession mapper = factory.openSession();
		Movie vo = mapper.selectOne("selectOne",movie_id);
		mapper.close();
		return vo;
	}
	
	public StarRating selectOne4(int movie_id) {
		SqlSession mapper = factory.openSession();
		StarRating vo4 = mapper.selectOne("selectOne4",movie_id);
		mapper.close();
		return vo4;
	}
	
	public int insert(Movie vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("insert", vo);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public Movie selectOne1(int movie_id) {
		SqlSession mapper = factory.openSession();
		Movie vo1 = mapper.selectOne("selectOne1",movie_id);
		mapper.close();
		return vo1;
	}
	
	public List<MovieGenreVo> all(){
		SqlSession mapper = factory.openSession();
		List<MovieGenreVo>list = mapper.selectList("gallery.all");
		mapper.close();
		return list;
	}
	public List<GenreVo> genreAll(){
		SqlSession mapper = factory.openSession();
		List<GenreVo>list = mapper.selectList("gallery.genre");
		mapper.close();
		return list;
	}
	public List<SelectMovie> selectGenre(int genre_id){
		SqlSession mapper = factory.openSession();
		List<SelectMovie>list = mapper.selectList("genreSelect", genre_id);
		mapper.close();
		return list;
	}
	public List<MovieVo> getMovieInfo(int movie_id){
		SqlSession mapper = factory.openSession();
		List<MovieVo> list = mapper.selectList("movieinfo", movie_id);
		mapper.close();
		return list;
	}
	
	public List<MovieVo2> searchList1(Map<String, Object> map){
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
	
	public List<GenreVo2> searchGenre1(Map<String, Object> map){  
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
	
	public void insertMovieInfo(MovieVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("movieInfo.insertMovieInfo", vo);
		mapper.commit();
		mapper.close();
	}
	
}
