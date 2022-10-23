package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Wlist;

public class WlistDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static WlistDao dao = new WlistDao();
	public static WlistDao getInstance() {
		return dao;
	}
	
	public List<Wlist> selectWlist(){
		SqlSession mapper = factory.openSession();
		List<Wlist> result = mapper.selectList("selectWlist");
		mapper.close();
		return result;
	}
	
	public int insert(Wlist vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("winsert", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
}
