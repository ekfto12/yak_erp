package com.km.yak_erp.controller;



import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.service.banner_service;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.util.CommandMap;
import com.km.yak_erp.util.UploadFileUtils;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Drug;



@Controller
public class banner_controller {
	@Resource(name="uploadPath")
	private String uploadPath;
	@Resource(name="bannerService")
	 private banner_service bann_service;
	
	@RequestMapping(value = "/Banner", method = RequestMethod.GET)
	public ModelAndView baner(ModelAndView model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		Page page = new Page();
		page.setNum(num);
		 page.setCount(bann_service.searchcount(keyword));  
		 List<Banner> listt = null; 
		 page.setSearchTypeKeyword(keyword);
		 listt = bann_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
		 System.out.println(page.getDisplayPost());
		 System.out.println(page.getPostNum());
		 model.addObject("page", page);
		 model.addObject("listt", listt);   
		
		 model.addObject("pageNum", page.getPageNum());

		 model.addObject("startPageNum", page.getStartPageNum());
		 model.addObject("endPageNum", page.getEndPageNum());

		   model.addObject("prev", page.getPrev());
		   model.addObject("next", page.getNext());  

		   model.addObject("select", num);

		List<Banner> list = bann_service.search();
		
		Map<String, Object> map = new HashMap<String, Object>();
	    map.put("list", list);
	    model.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    model.setViewName("banner/Banner");
	    
	    return model;
	}
	
	
	
	
	@RequestMapping(value = "/banner_main", method = RequestMethod.GET)
	public ModelAndView banerr(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("banner/banner_main");
		return mav;
	}
	
	@RequestMapping(value = "/banner_search", method = RequestMethod.GET)
	public ModelAndView banerrr(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("banner/banner_search");
		return mav;
	}
	
	@RequestMapping(value="/bannerup", method=RequestMethod.POST)
	 public String bannerUpdate(Banner vo, MultipartFile file, RedirectAttributes redirect, ModelAndView mv, HttpServletResponse response, HttpServletRequest request) throws Exception{
		
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
		int result = bann_service.bannerEdit(vo);
		System.out.println(result);
		 if (result == 0) { 
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out = response.getWriter();
			 out.println("<script>");
			 out.println("alert('수정 실패');");
			 out.println("history.go(-1);");
			 out.println("</script>");
			 out.close();
		 }
		 System.out.println(vo.getBan_num());
		 redirect.addAttribute("ban_num", vo.getBan_num());
		 
		 return "redirect:/banner_view";
	 }
	
	
	@RequestMapping(value = "/banner_view", method = RequestMethod.GET)
	public ModelAndView bannerView(int ban_num, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{
		Banner banner = bann_service.bannerGet(ban_num);
		
		if (banner == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제 또는 없는 게시물입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} else {
			mv.setViewName("banner/banner_view");
			mv.addObject("banner", banner);
		}
		return mv;
	}
	
	@RequestMapping(value = "/banner_edit", method = RequestMethod.GET)
	public ModelAndView banerup(int ban_num, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{

		Banner list = bann_service.bannerGet(ban_num);
		if(list == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('실패');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}else {
			mv.addObject("banner", list); // 맵에 저장된 데이터를 mav에 저장
			mv.setViewName("banner/banner_edit");
		}
		
		
	    
		return mv;
	}
	
	
	
	 @RequestMapping(value="/bannerdel", method=RequestMethod.GET)
	public String bannerdel(Banner vo, HttpServletResponse response) throws Exception{
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter(); 
			out.println("<script>");
			List<Banner> list = bann_service.search();
			
		 if(list.isEmpty()) {
			 out.println("alert('삭제를 실패했습니다.');");
				out.println("history.go(-1);"); 
				out.println("</script>");
				out.close(); 
		 }
		 else {
			 bann_service.bannerDel(vo);
			 
				out.println("alert('삭제 되었습니다.');");
				out.println("location.href='/yak_erp/Banner';"); 
				out.println("</script>");
				out.close(); 
		 }
		 
			return null; 
	 }
	 
	 @RequestMapping(value="/bannerdrop", method=RequestMethod.GET)
		public String bannerdrop(Banner vo,   HttpServletResponse response) throws Exception{
			 response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter(); 
				out.println("<script>");
				List<Banner> list = bann_service.search();
				
			 if(list.isEmpty()) {
				 out.println("alert('삭제를 실패했습니다.');");
					out.println("history.go(-1);"); 
					out.println("</script>");
					out.close(); 
			 }
			 else {
				 
				 bann_service.bannerdrop(vo);
				 
					out.println("alert('삭제 되었습니다.');");
					out.println("location.href='/yak_erp/Banner';"); 
					out.println("</script>");
					out.close(); 
			 }
			 
				return null; 
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
