package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.banner_dao;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;

@Service("bannerService")
public class banner_service_impl implements banner_service{
	@Resource(name="banner_dao")
    private banner_dao bannerDAO;
	
	@Override
	public void banner(Banner vo) throws Exception{
		bannerDAO.bannerIn(vo);
	}
	
	@Override
	public List<Banner> search() throws Exception{
		return bannerDAO.bannerSearch();
	}
	
	@Override
	public void bannerDel(Banner vo) throws Exception{
		bannerDAO.bannerDel(vo);
	}
	
	@Override
	public Banner bannerGet(int ban_num) throws Exception{
		return bannerDAO.bannerGet(ban_num);
	}
	
	@Override
	public int bannerEdit(Banner vo) throws Exception{
		return bannerDAO.bannerUp(vo);
	}
	
	@Override
	public void bannerdrop(Banner vo) throws Exception{
		bannerDAO.bannerdrop(vo);
	}
	@Override
	public int count() throws Exception {
	 return bannerDAO.count();
	}
	
	@Override
	public List<Banner> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return bannerDAO.listPage(displayPost, postNum,keyword);
	}
	
	@Override
	public int searchcount(String keyword) throws Exception{
		return bannerDAO.searchcount(keyword);
	}
}
