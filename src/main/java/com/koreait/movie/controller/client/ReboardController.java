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
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.domain.Reboard;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.reboard.ReboardService;
import com.koreait.movie.paging.PagingManager;

@Controller
public class ReboardController {
   
   @Autowired
   private ReboardService reboardService;
   @Autowired
   private PagingManager pagingManager;
   
   //글목록
   @GetMapping("/reboard/list")
   public ModelAndView reboardList(HttpServletRequest request){
      ModelAndView mav=new ModelAndView("client/reboard/reboardList");
      List reboardList = reboardService.selectAll();
      pagingManager.init(reboardList, request);
      mav.addObject("reboardList", reboardList);   
      mav.addObject("pagingManager", pagingManager);
      
      return mav;
   }
   
   //글쓰기폼요청
   @GetMapping("/reboard/write")
   public ModelAndView getWrite(HttpServletRequest request) {
	   ModelAndView mav=new ModelAndView("client/reboard/reboardWrite");
	   return mav;
   }
   
   //글쓰기
   @PostMapping("/reboard/regist")
   public ModelAndView regist(Reboard reboard,HttpServletRequest request) {
      ModelAndView mav=new ModelAndView("redirect:/client/reboard/list");
      reboardService.insert(reboard);
      return mav;
   }
   
   //글 상세보기
   @GetMapping("/reboard/detail")
    public ModelAndView getDetail(HttpServletRequest request, int reboard_id) {
      ModelAndView mav=new ModelAndView("client/reboard/reboardDetail");
      Reboard reboard=reboardService.select(reboard_id);
       mav.addObject("reboard", reboard);
       return mav;
    }
   
   //글수정
   @RequestMapping(value="/reboard/update",method = RequestMethod.POST)
      public ModelAndView update(Reboard reboard,HttpServletRequest request) {
      ModelAndView mav=new ModelAndView("redirect:/client/reboard/list");
      reboardService.update(reboard);
         System.out.println(reboard);
         return mav;
      }

     //글삭제     
   @PostMapping("/reboard/delete")
    public ModelAndView delete(HttpServletRequest request, int reboard_id) {
      ModelAndView mav=new ModelAndView("redirect:/client/reboard/list");
      reboardService.delete(reboard_id);
       return mav;
    }
   
   //답변쓰기폼요청
   @PostMapping("/reboard/replyform")
   public ModelAndView getReplyForm(HttpServletRequest request) {
	   ModelAndView mav=new ModelAndView("client/reboard/reboardReply");
	   return mav;
   }
      
   //답글쓰기
   @PostMapping("/reboard/reply")
   public ModelAndView getReply(Reboard reboard,HttpServletRequest request) {
      ModelAndView mav=new ModelAndView("redirect:/client/reboard/list");
      reboardService.reply(reboard);
      System.out.println(reboard);
      return mav;   
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