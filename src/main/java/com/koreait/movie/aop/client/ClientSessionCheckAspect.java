package com.koreait.movie.aop.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.LoginfailException;

public class ClientSessionCheckAspect {
	
	public Object sessionCheck(ProceedingJoinPoint joinPoint) throws Throwable {
		
		Object[] args=joinPoint.getArgs();
		HttpServletRequest request=null;
		HttpSession session=null;
		
		for(Object obj:args) {
			if(obj instanceof HttpServletRequest) {
				request=(HttpServletRequest)obj;
			}
		}
		
		String uri= request.getRequestURI();
		
		Object result=null; 
		
		if(uri.equals("/client/home") 
		|| uri.equals("/client/logout") 
	    || uri.equals("/client/login")
	    || uri.equals("/client/regist")
	    
	    
	    ){
			
			
			result=joinPoint.proceed();
		}else {
			session=request.getSession();
			if(session.getAttribute("obj")==null) {
				throw new LoginfailException("로그인이 필요한 서비스 입니다");
			}else {
				//로그인 한 사람에게는 헤택을 주자 
				Client client = (Client)session.getAttribute("obj");
				
				result=joinPoint.proceed();
				if(result instanceof ModelAndView) {
					ModelAndView mav=(ModelAndView)result;
					mav.addObject("obj", client);
					result=mav;
				}
			}
		}
		
		return result;
		
	}
}
