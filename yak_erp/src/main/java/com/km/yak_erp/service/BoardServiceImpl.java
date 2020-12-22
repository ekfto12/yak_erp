package com.km.yak_erp.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.SmsDAO;
import com.km.yak_erp.dao.business_dao;
import com.km.yak_erp.vo.SmsVo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	// @Resource(name="SmsDAO")
	@Inject
	private SmsDAO smsDAO;

	/**
	 * 테스트용 주기적으로 실행된 메소드 이다.
	 */
	@Override
	public void testJobMethod() {
		System.out.println("test job....");
		SmsVo vo = new SmsVo();

		String api_key = "NCSDXB2S6SOLMKCD";
		String api_secret = "EMFPSVLLBS9WSJLF3XZLNF1IAKA21LFA";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", "01092085293"); vo.setSms_to(params.get("to"));
		params.put("from", "01092085293");
		params.put("type", "SMS");
		params.put("text", "약 드실 시간입니다 ~"); vo.setSms_text(params.get("text"));
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
			
			SimpleDateFormat day = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat time = new SimpleDateFormat("hh:mm a");
			vo.setS_date(day.format(new Date()) + " " + time.format(new Date()));

			smsDAO.insert(vo);
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

	}

	@Override
	public void sendSms(SmsVo vo) {
		System.out.println("send sms init");

		String api_key = "NCSDXB2S6SOLMKCD";
		String api_secret = "EMFPSVLLBS9WSJLF3XZLNF1IAKA21LFA";
		Message coolsms = new Message(api_key, api_secret);

		System.out.println("to, text at serviceimpl --> " + vo.getSms_to() + ", " + vo.getSms_text());
		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", vo.getSms_to());
		params.put("from", "01092085293");
		params.put("type", "SMS");
		params.put("text", vo.getSms_text());
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());

			SimpleDateFormat day = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat time = new SimpleDateFormat("hh:mm a");
			vo.setS_date(day.format(new Date()) + time.format(new Date()));

			smsDAO.insert(vo);
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

	@Override
	public List<SmsVo> recordSmsSelect(String to) {
		return smsDAO.select(to);
	}

	@Override
	public List<SmsVo> recordSmsAll() {
		return smsDAO.select();
	}
}
