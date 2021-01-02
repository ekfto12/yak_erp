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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.banner_service;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.util.CommandMap;
import com.km.yak_erp.util.UploadFileUtils;
import com.km.yak_erp.vo.Banner;



@Controller
public class banner_controller {
	@Resource(name="uploadPath")
	private String uploadPath;
	@Resource(name="bannerService")
	 private banner_service bann_service;
	
	@RequestMapping(value = "/Banner", method = RequestMethod.GET)
	public ModelAndView baner(Model model) throws Exception{
		List<Banner> list = bann_service.search();
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
	    map.put("list", list);
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    mav.setViewName("Banner");
	    System.out.println(list);
		return mav;
	}
	
	
	@RequestMapping(value = "/banner_main", method = RequestMethod.GET)
	public ModelAndView banerr(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("banner_main");
		return mav;
	}
	
	
	
	 @RequestMapping(value="/bannerin", method=RequestMethod.POST)
	 public String bannerIn(Banner vo, MultipartFile file) throws Exception{
		 String imgUploadPath = uploadPath + File.separator + "imgUpload";
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		 String fileName = null;

		 if(file != null) {
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		 } else {
		  fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		 }
		 vo.setImg_dir(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		 vo.setImg_dirr(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		 bann_service.banner(vo);
		 return "redirect:/Banner";
	 }



}