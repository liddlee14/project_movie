package com.koreait.movie.controller.admin;

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
import com.koreait.movie.paging.PagingManager;

@Controller
public class BoardController {
   
   @Autowired
   private BoardService boardService;
   @Autowired
	private PagingManager pagingManager;
   
   //글목록
   @RequestMapping(value="board/list", method=RequestMethod.GET)
   public String boardList(Model model,HttpServletRequest request){
      List boardList = boardService.selectAll();
      pagingManager.init(boardList, request);
      model.addAttribute("boardList", boardList);
  	  model.addAttribute("pagingManager", pagingManager);
      
      return "admin/board/reviewList";
   }
      
   
   //글 상세보기
   @GetMapping("board/detail")
    public String boardDetail(int board_id,Model model,HttpServletRequest request) {
       Board board=boardService.select(board_id);
       model.addAttribute("board",board);
       
       return "admin/board/reviewDetail";
    }
   
      
   //글삭제   
   
   @PostMapping("board/delete")
    public String delete(int board_id,HttpServletRequest request) {
       boardService.delete(board_id);
       return "redirect:/admin/board/list";
    }
   
   @ExceptionHandler(MemberExistException.class)
    public String handleException(MemberExistException e, Model model,HttpServletRequest request) {
       model.addAttribute("e", e);
       return "error/result";
    }
    @ExceptionHandler(DMLException.class)
    public String handleException(DMLException e ,Model model,HttpServletRequest request) {
       model.addAttribute("e", e);
       return "error/result";
    }
   
   
   
   
}
