package com.km.yak_erp.util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;



public class CustomMapArgumentResovler implements HandlerMethodArgumentResolver{
	@Override
    public Object resolveArgument(MethodParameter arg0, ModelAndViewContainer arg1, NativeWebRequest arg2,
            WebDataBinderFactory arg3) throws Exception {
        // TODO Auto-generated method stub
        CommandMap commandMap = new CommandMap(); // CommandMap 객체 생성
        
       HttpServletRequest request = (HttpServletRequest) arg2.getNativeRequest();
       Enumeration<?> enumeration = request.getParameterNames();
        
       String key = null;
       String[] values = null;
       while(enumeration.hasMoreElements()){ // request에 담겨있는 값을 iterator를 이용해서 하나씩 가져옴
           key = (String) enumeration.nextElement();
           values = request.getParameterValues(key);
           if(values != null){
               commandMap.put(key, (values.length > 1) ? values:values[0] ); // request에 담겨있는 모든 key와 value를 commandMap에 저장
           }
       }
       return commandMap; // 모든 파라미터가 담겨있는 commandMap 반환
    }
 
    @Override
    public boolean supportsParameter(MethodParameter arg0) {
        // TODO Auto-generated method stub
        return CommandMap.class.isAssignableFrom(arg0.getParameterType());
    }
}
