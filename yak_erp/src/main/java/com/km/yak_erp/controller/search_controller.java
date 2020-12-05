package com.km.yak_erp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.search_service;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;

@Controller
public class search_controller {
	@Resource(name="searchService")
	 private search_service search_service;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView baner(ModelAndView mv, HttpServletRequest request,String search) throws Exception{
		String s[] = search.split(" ");
	    System.out.println("검색될 문자 개수 "+s.length);
	    List<Banner> list = new ArrayList<Banner>();
	    List<Business> listt = new ArrayList<Business>();
	    
	    
		list = search_service.searchBanner(search);
		listt = search_service.searchBusiness(search);
		
	
		mv.addObject("searchKeyword",search);
	    mv.addObject("banner", list); // 맵에 저장된 데이터를 mav에 저장
	    mv.addObject("business", listt);
	    mv.setViewName("search");
	    
		return mv;
	}
	
}
