package com.km.yak_erp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.BoardService;
import com.km.yak_erp.vo.SmsVo;

/**
 * 컨트롤더
 */
@Controller
public class Sms_controller {
	
	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = "/sms", method = RequestMethod.GET)
	public String home() {
		return "sms/sms";
	}
	
	@RequestMapping(value = "/smsList", method = RequestMethod.GET)
	public ModelAndView smsList(ModelAndView model) {
		List<SmsVo> list = boardService.recordSmsAll();
		
		model.addObject("list", list);
		model.setViewName("sms/smsList");
		
		return model;
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(HttpServletRequest request) {
		System.out.println("enter in Controller");
		String to = (String)request.getParameter("to");
		String text = (String)request.getParameter("text");
		System.out.println("to, text at controller --> " + to + ", " + text);
		SmsVo vo = new SmsVo();
		vo.setSms_to(to); vo.setSms_text(text);
		boardService.sendSms(vo);
		return "redirect:/sms";
	}
	
	@RequestMapping(value = "/record", method = RequestMethod.POST)
	public String record(HttpServletRequest request) {
		if(request.getParameter("to") == null || request.getParameter("to").equals("")) {
			List<SmsVo> list = boardService.recordSmsAll();
			for(int i = 0; i < list.size(); i++) {
				System.out.println(i + " :: " + list.get(i).getSms_to());
				System.out.println(i + " :: " + list.get(i).getSms_text());
				System.out.println(i + " :: " + list.get(i).getS_date());
			}
			System.out.println(list.toString());
			return "redirect:/sms";
		}
		else {
			String to = (String)request.getParameter("to");
			List<SmsVo> list = boardService.recordSmsSelect(to);
			for(int i = 0; i < list.size(); i++) {
				System.out.println(i + " :: " + list.get(i).getSms_to());
				System.out.println(i + " :: " + list.get(i).getSms_text());
				System.out.println(i + " :: " + list.get(i).getS_date());
			}
			System.out.println(list.toString());
			return "redirect:/sms";
		}
	}
}
