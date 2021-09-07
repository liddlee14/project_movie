package com.koreait.movie.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.Admin;
import com.koreait.movie.domain.Comment;
import com.koreait.movie.model.service.comment.CommentService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	  @RequestMapping(value="/comment/regist",method=RequestMethod.POST)
	     public String signup(Comment comment,HttpServletRequest request) { 
	        commentService.regist(comment);  
	        
	        return "admin/customer/list";
	     }
	  
	  @RequestMapping(value="/comment/list",method=RequestMethod.GET)
	  public String getList(Model model,HttpServletRequest request) {
		  
		  List commentList=commentService.selectAll();
		  model.addAttribute("commentList",commentList);
		  
		  return "admin/customer/detail";
	  }
}
