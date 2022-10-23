package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Poster;

public class PosterDao {
	private static PosterDao dao = new PosterDao();
	private PosterDao() {};
	public static PosterDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<Poster> selectAll(){
		SqlSession mapper = factory.openSession();
		List<Poster> list = mapper.selectList("selectMv");
		mapper.close();
		return list;
	}
}
