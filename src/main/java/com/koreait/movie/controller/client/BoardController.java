package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.domain.Board;
import com.koreait.movie.model.service.board.BoardService;
import com.koreait.movie.paging.PagingManager;

@Controller
public class BoardController {

   @Autowired
   private BoardService boardService;
   
   @Autowired
   private PagingManager pagingManager;
   
   //글목록
      @RequestMapping(value="/list", method=RequestMethod.GET)
      public ModelAndView boardList(HttpServletRequest request){
         ModelAndView mav=new ModelAndView("client/board/review");
         List boardList = boardService.selectAll();
         pagingManager.init(boardList, request);
         mav.addObject("boardList", boardList);
         mav.addObject("pagingManager", pagingManager);
         
         return mav;
      }
         
      
      
        //글 상세보기
    
      @GetMapping("/list/detail") 
      public ModelAndView boardDetail(HttpServletRequest request, int board_id) { 
         ModelAndView mav=new ModelAndView("client/board/reviewDetail");
         Board board=boardService.select(board_id);
         mav.addObject("board", board);
        
        return mav; 
        }
      
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
       public ModelAndView editDetail(HttpServletRequest request, int board_id) {
         ModelAndView mav=new ModelAndView("client/board/reviewEdit");
         Board board=boardService.select(board_id);
         mav.addObject("board",board);
          System.out.println(board);
          
          return mav;
       }
      
      //글수정
      @RequestMapping(value="/update",method = RequestMethod.POST)
         public ModelAndView update(Board board,HttpServletRequest request) {
         ModelAndView mav=new ModelAndView("redirect:/client/list");
         boardService.update(board);
            System.out.println(board);
            return mav;
         }
   
        
      
        //글삭제
        
      @PostMapping("/delete")
       public ModelAndView delete(HttpServletRequest request, int board_id) {
         ModelAndView mav=new ModelAndView("redirect:/client/list");
         boardService.delete(board_id);
          return mav;
       }
        
        
      
      
   
   

}