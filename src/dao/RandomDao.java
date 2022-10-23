package dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Random;

public class RandomDao {
	private static RandomDao dao = new RandomDao();
	private RandomDao() {};
	public static RandomDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<Random> randomMovie(String genre_name){
		SqlSession mapper = factory.openSession();
		List<Random> list = mapper.selectList("randomMovie", genre_name);
		mapper.close();
		return list;
	}
}
