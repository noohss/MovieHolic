package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Director;

public class DirectorDao {
	private static DirectorDao dao = new DirectorDao();
	private DirectorDao() {}
	public static DirectorDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

	public Director selectOne3(int movie_id) {
		SqlSession mapper = factory.openSession();
		Director vo3 = mapper.selectOne("selectOne3",movie_id);
		mapper.close();
		return vo3;
	}
	
}
