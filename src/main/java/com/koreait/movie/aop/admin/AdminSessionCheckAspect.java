package com.koreait.movie.aop.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;

import com.koreait.movie.exception.LoginfailException;

public class AdminSessionCheckAspect {

	public Object sessionCheck(ProceedingJoinPoint joinPoint) throws Throwable {
		Object[] args=joinPoint.getArgs();
		HttpServletRequest request = null;
		HttpSession session=null;
		
		for(Object obj:args) {
			if(obj instanceof HttpServletRequest) {
				request=(HttpServletRequest)obj;
			}
		}
		
		String uri=request.getRequestURI();
		Object result=null;
		
		
		if(uri.equals("/admin/loginform") 
				|| uri.equals("/admin/home")
				|| uri.equals("/admin/regist")
				|| uri.equals("/admin/index")
				|| uri.equals("/admin/login")
				|| uri.equals("/admin/login/signup")) {
			//검증이 필요하지 않은 폼
			result=joinPoint.proceed();
		}else {
			//검증이 필요한 폼
			session=request.getSession();
			if(session.getAttribute("admin")==null) {
				throw new LoginfailException("로그인이 필요한 서비스 입니다.");
			}else {
				result=joinPoint.proceed();
			}
		}
		
		return result;
	}

}
