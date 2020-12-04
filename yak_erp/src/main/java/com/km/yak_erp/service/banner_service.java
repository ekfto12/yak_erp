package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Banner;

public interface banner_service {
	void banner(Banner vo) throws Exception;
	List<Banner> search() throws Exception;
	void bannerDel(Banner vo) throws Exception;
}
