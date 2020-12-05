package com.km.yak_erp.controller;



import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.banner_service;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.service.business_service;
import com.km.yak_erp.util.CommandMap;
import com.km.yak_erp.util.UploadFileUtils;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;



@Controller
public class blist_controller {
	@Resource(name="businessService")
	 private business_service business_service;
	
	/*
	@RequestMapping(value="/blist", method = RequestMethod.GET)
    public void getList(Model model) throws Exception {
        List<Business> list = null;
        list = business_service.list();
        System.out.println(list);
        model.addAttribute("list", list);
    }
	*/
	
	@RequestMapping(value="/blistpage", method = RequestMethod.GET)
    public void getListpage(Model model, @RequestParam("num") int num) throws Exception {
		 int count = business_service.count();
		  
		 
		 
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 10;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 출력할 게시물
		 int displayPost = (num - 1) * postNum;
		    
		 List<Business> list = null; 
		 list = business_service.listPage(displayPost, postNum);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);
		}


}
