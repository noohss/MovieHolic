package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Genre;

public class GenreDao {
	private static GenreDao dao = new GenreDao();
	private GenreDao() {};
	public static GenreDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	
	public List<Genre> selectAll(){
		SqlSession mapper = factory.openSession();
		List<Genre> list = mapper.selectList("selectAll");
		mapper.close();
		return list;
	}
	
	public Genre selectOne(int movie_id) {
		SqlSession mapper = factory.openSession();
		Genre vo = mapper.selectOne("selectOne",movie_id);
		mapper.close();
		return vo;
	}
	
	public Genre randomGenre(String genre_name) {
		SqlSession mapper = factory.openSession();
		Genre vo = mapper.selectOne("randomGenre",genre_name);
		mapper.close();
		return vo;
	}
}
