package com.koreait.movie.aop.admin;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.LoginfailException;
import com.koreait.movie.exception.MemberExistException;

@ControllerAdvice
public class AllExceptionHandler {
	@ExceptionHandler(LoginfailException.class)
	public String handle(LoginfailException e,Model model) {
		model.addAttribute("e",e);
		return "error/result";
	}
	
	@ExceptionHandler(MemberExistException.class)
	public String handleException(MemberExistException e, Model model) {
		model.addAttribute("e", e);
		return "error/result";
	}
	@ExceptionHandler(DMLException.class)
	public String handleException(DMLException e ,Model model) {
		model.addAttribute("e", e);
		return "error/result";
	}
	
	
}
