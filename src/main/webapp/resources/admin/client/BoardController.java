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

import com.koreait.movie.domain.Board;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.board.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	//글목록
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public String boardList(HttpServletRequest request, Model model){
			List boardList = boardService.selectAll();
			model.addAttribute("boardList", boardList);
			
			return "client/board/review";
		}
			
		
		
		  //글 상세보기
	 
		@GetMapping("/list/detail") 
		public String boardDetail(HttpServletRequest request, int board_id, Model model) { 
			Board board=boardService.select(board_id);
			model.addAttribute("board", board);
		  
		  return "client/board/reviewDetail"; }
		
		//글 등록 양식
		
		@GetMapping("/registform")
		public String registForm(HttpServletRequest request) {
			
			return "client/board/reviewWrite";
		}
		  
		
		//글 등록
		@PostMapping("/submit")
		public String regist(Board board,HttpServletRequest request) { //json 과의 매핑 때문에..
			boardService.insert(board);
			
			return "redirect:/client/list";
		} 
		
		
		//글 수정 상세보기
		@GetMapping("/list/edit")
	    public String editDetail(HttpServletRequest request, int board_id,Model model) {
	       Board board=boardService.select(board_id);
	       model.addAttribute("board",board);
	       System.out.println(board);
	       
	       return "client/board/reviewEdit";
	    }
		
		//글수정
		@RequestMapping(value="/update",method = RequestMethod.POST)
	      public String update(Board board,HttpServletRequest request) {
	         boardService.update(board);
	         System.out.println(board);
	         return "redirect:/client/list";
	      }
	
		  
		
		  //글삭제
		  
		@PostMapping("/delete")
	    public String delete(HttpServletRequest request, int board_id) {
	       boardService.delete(board_id);
	       return "redirect:/client/list";
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