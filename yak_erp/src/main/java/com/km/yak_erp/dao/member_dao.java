package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD

=======
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
import com.km.yak_erp.vo.Member;
import com.km.yak_erp.vo.Member_f;
import com.km.yak_erp.vo.Member_question;



@Repository("member_dao")
public class member_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member selectByEmail(String email) {
        return (Member)sqlSession.selectOne("member.selectByEmail", email);
    }
 
    public Member selectById(String id) {
        return (Member)sqlSession.selectOne("member.selectById", id);
    }
    
<<<<<<< HEAD
	public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception{
=======
    public int member_add(Member vo) throws Exception{
		return sqlSession.insert("member.member_add", vo);
	}
    
    public int idCheck(String id) throws Exception{
		return sqlSession.selectOne("member.idCheck", id);
	}
    public Member member_get(String id) throws Exception{
		return sqlSession.selectOne("member.member_get", id);
	}
    public int member_edit(Member vo) throws Exception{
		return sqlSession.update("member.member_edit", vo);
	}
    public void member_del(Member vo) throws Exception{
		sqlSession.delete("member.member_del", vo);
	}
    public int member_editt(Member vo) throws Exception{
		return sqlSession.update("member.member_editt", vo);
	}
    
    public List<Member_f> fa_get(String id) throws Exception{
		return sqlSession.selectList("member.fa_get", id);
	}
    public List<Member_question> qu_get(String id) throws Exception{
		return sqlSession.selectList("member.qu_get", id);
	}
    
    public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception{
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		 return sqlSession.selectList("member.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("member.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("member.searchcount", data); 
}
<<<<<<< HEAD
	
=======
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
}
