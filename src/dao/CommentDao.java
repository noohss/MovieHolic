package dao;

import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Comment;
import mybatis.SqlSessionBean;

public class CommentDao {
	private static CommentDao dao = new CommentDao();
	private CommentDao() { }
	public static CommentDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int updateCmtCount(int review_id) {
		SqlSession mapper = factory.openSession();
		int result = mapper.update("updateCmtCount",review_id);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public int delete(int review_id) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("comments.delete", review_id);
		mapper.commit(); mapper.close();
		return result;	
	}
	
	public int insert(Comment vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("comments.insert", vo);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public List<Comment> getComments(int review_id){
		SqlSession mapper = factory.openSession();
		List<Comment> list = mapper.selectList("getComments", review_id);
		mapper.close();
		return list;
	}
	
	
	
}
