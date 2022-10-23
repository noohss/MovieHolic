package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.starVo;

public class insertDao {
	private static insertDao dao = new insertDao();
	private insertDao() {}
	public static insertDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public void insert(starVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("starComment.insert", vo);  
		mapper.commit();
		mapper.close();
	}
	
	
}


