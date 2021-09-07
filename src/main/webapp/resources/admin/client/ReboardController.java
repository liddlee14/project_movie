package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.Reboard;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.reboard.ReboardService;

@Controller
public class ReboardController {
	
	@Autowired
	private ReboardService reboardService;
	
	//글목록
	@GetMapping("/reboard/list")
	public String reboardList(HttpServletRequest request, Model model){
		List reboardList = reboardService.selectAll();
		model.addAttribute("reboardList", reboardList);		
		return "client/reboard/reboardList";
	}
	
	//글쓰기폼요청
	@GetMapping("/reboard/write")
	public String getWrite(HttpServletRequest request) {
		return "client/reboard/reboardWrite";
	}
	
	//글쓰기
	@PostMapping("/reboard/regist")
	public String regist(Reboard reboard,HttpServletRequest request) {
		reboardService.insert(reboard);
		return "redirect:/client/reboard/list";
	}
	
	//글 상세보기
	@GetMapping("/reboard/detail")
    public String getDetail(HttpServletRequest request, int reboard_id,Model model) {
       Reboard reboard=reboardService.select(reboard_id);
       model.addAttribute("reboard", reboard);
       return "client/reboard/reboardDetail";
    }
	
	//글수정
	@RequestMapping(value="/reboard/update",method = RequestMethod.POST)
      public String update(Reboard reboard,HttpServletRequest request) {
         reboardService.update(reboard);
         System.out.println(reboard);
         return "redirect:/client/reboard/list";
      }

	  //글삭제	  
	@PostMapping("/reboard/delete")
    public String delete(HttpServletRequest request, int reboard_id) {
       reboardService.delete(reboard_id);
       return "redirect:/client/reboard/list";
    }
	
	//글쓰기폼요청
	@PostMapping("/reboard/replyform")
	public String getReplyForm(HttpServletRequest request) {
		return "client/reboard/reboardReply";
	}
		
	//답글쓰기
	@PostMapping("/reboard/reply")
	public String getReply(Reboard reboard,HttpServletRequest request) {
		reboardService.reply(reboard);
		System.out.println(reboard);
		return "redirect:/client/reboard/list";	
	}
	
	
	  @ExceptionHandler(MemberExistException.class) 
	  public String handleException(HttpServletRequest request, MemberExistException e, Model model) { 
		  model.addAttribute("e", e); 
		  return "error/result"; 
		  }
	  
	  @ExceptionHandler(DMLException.class) 
	  public String handleException(HttpServletRequest request, DMLException e ,Model model) {
	  model.addAttribute("e", e); 
	  return "error/result"; 
	  }
	
	
	
	
	
	
	
}
