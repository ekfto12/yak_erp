package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;

public interface banner_service {
	void banner(Banner vo) throws Exception;
	List<Banner> search() throws Exception;
	void bannerDel(Banner vo) throws Exception;
	Banner bannerGet(int ban_num) throws Exception;
	int bannerEdit(Banner vo) throws Exception;
	void bannerdrop(Banner vo) throws Exception;
public int count() throws Exception;
	
	public List<Banner> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
