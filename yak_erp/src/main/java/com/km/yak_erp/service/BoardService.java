package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.SmsVo;

public interface BoardService {
	void testJobMethod();
	void sendSms(SmsVo vo);
	public List<SmsVo> recordSmsSelect(String to);
	public List<SmsVo> recordSmsAll();
}
