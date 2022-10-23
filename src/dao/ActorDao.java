package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Actor;

public class ActorDao {
	private static ActorDao dao = new ActorDao();
	private ActorDao() {};
	public static ActorDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<Actor> selectAll(){
		SqlSession mapper = factory.openSession();
		List<Actor> list = mapper.selectList("selectAll");
		mapper.close();
		return list;
	}
	
	public Actor selectOne2(int movie_id) {
		SqlSession mapper = factory.openSession();
		Actor vo2 = mapper.selectOne("selectOne2",movie_id);
		mapper.close();
		return vo2;
	}
	
	
}
