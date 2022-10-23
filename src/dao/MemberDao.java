package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.MemberVo;
import mybatis.SqlSessionBean;

public class MemberDao {
	private static MemberDao dao = new MemberDao();
	private MemberDao() {}
	public static MemberDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public void joinInsert(MemberVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("member.joinInsert", vo);
		mapper.commit();
		mapper.close();
	}
	
	public MemberVo login(Map<String, String> map) {
		SqlSession mapper = factory.openSession();
		MemberVo vo = mapper.selectOne("member.login", map);
		mapper.close();
		return vo;
	}
	
	public int idDuplicationCheck(String member_id) {
		SqlSession mapper = factory.openSession();
		int count = mapper.selectOne("member.idDuplicationCheck", member_id);
		mapper.close();
		return count;
	}
	
	public List<MemberVo> getMemberList() {
		SqlSession mapper = factory.openSession();
		List<MemberVo> list = mapper.selectList("member.getMemberList");
		mapper.close();
		return list;
	}
	
	public void deleteMemberInfo(String member_id) {
		SqlSession mapper = factory.openSession();
		mapper.delete("member.deleteMemberInfo", member_id);
		mapper.commit();
		mapper.close();
	}
	
	public String idFind(String phone) {
		SqlSession mapper = factory.openSession();
		String member_id = mapper.selectOne("member.idFind", phone);
		mapper.close();
		return member_id;
	}
	
	public void changePw(MemberVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.update("member.changePw", vo);
		mapper.commit();
		mapper.close();
	}
}
