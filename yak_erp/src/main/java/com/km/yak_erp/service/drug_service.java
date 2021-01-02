package com.km.yak_erp.service;

import java.util.List;

<<<<<<< HEAD

import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;

public interface drug_service {
	
	//List<Business> list() throws Exception;
	
	public int count() throws Exception;
=======
import com.km.yak_erp.vo.Drug;

public interface drug_service {
	Drug drug_get(String id) throws Exception;
	int drug_add(Drug vo) throws Exception;
	int drug_edit(Drug vo) throws Exception;
	void drug_del(Drug vo) throws Exception;
	
public int count() throws Exception;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
	
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
<<<<<<< HEAD

	}

=======
}
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
