package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;



=======
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;

>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
@Repository("drug_dao")
public class drug_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
<<<<<<< HEAD
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception{
=======
	
	public int drug_add(Drug vo) throws Exception{
		return sqlSession.insert("drug.drug_add", vo);
	}
	public Drug drug_get(String drug_name) throws Exception{
		return sqlSession.selectOne("drug.drug_get", drug_name);
	}
	
    public int drug_edit(Drug vo) throws Exception{
		return sqlSession.update("drug.drug_edit", vo);
	}
    public void drug_del(Drug vo) throws Exception{
		sqlSession.delete("drug.drug_del", vo);
	}
    public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception{
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		 return sqlSession.selectList("drug.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("drug.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("drug.searchcount", data); 
}
<<<<<<< HEAD
	
=======
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
}
