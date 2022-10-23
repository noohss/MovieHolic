package dao;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.commentVo;
import vo.contentVo;


public class starDao {
	
	private static starDao dao = new starDao();
	private starDao() { }
	public static starDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	
	public List<commentVo> starcount(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<commentVo> list = mapper.selectList("star.starFirst", map);
		mapper.close();
		return list;
		
	}
	
	public List<contentVo> contentSearch(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<contentVo> list = mapper.selectList("star.contentSearch", map);
		mapper.close();
		return list;
		
	}
	
	public List<contentVo> mycontentSearch(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<contentVo> list = mapper.selectList("star.MycontentSearch", map);
		mapper.close();
		return list;
		
	}
	
	public List<contentVo> contentPageSearch(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<contentVo> list = mapper.selectList("star.contentPageSearch", map);
		mapper.close();
		return list;
		
	}
	
	public float netistarcount(int movie_id){
		SqlSession mapper = factory.openSession();
		if(mapper.selectOne("star.avg", movie_id) != null) {
			float result = mapper.selectOne("star.avg", movie_id);
			mapper.close();
			return result;
		}else {
			return 0;
		}
	}
	

}