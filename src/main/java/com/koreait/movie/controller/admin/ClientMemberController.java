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

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.client.ClientService;
import com.koreait.movie.paging.PagingManager;

@Controller
public class ClientMemberController {
      @Autowired
      private ClientService clientService;
      @Autowired
  	  private PagingManager pagingManager;
  	

      //회원목록
      @RequestMapping(value = "clientmember/list",method = RequestMethod.GET)
      public String clientList(Model model,HttpServletRequest request) {
         List clientList=clientService.selectAll();
         pagingManager.init(clientList, request);
         model.addAttribute("clientList",clientList);
         model.addAttribute("pagingManager", pagingManager);
 		
        
      return "admin/clientmember/list";
      }
   
      //회원상세보기
      @GetMapping("clientmember/detail")
      public String adminDetail(int client_id,Model model,HttpServletRequest request) {
         Client client=clientService.select(client_id);
         model.addAttribute("client",client);
      //System.out.println(client);
      return "admin/clientmember/Cdetail";      
      }
      
      //회원정보수정
      @RequestMapping(value="clientmember/update",method = RequestMethod.POST)
      public String update(Client client,HttpServletRequest request) {
         clientService.update(client);
         //System.out.println(client);
      return "redirect:/admin/clientmember/list";
      }
      
      //회원삭제
      @PostMapping("clientmember/delete")
      public String delete(int client_id,HttpServletRequest request) {
         clientService.delete(client_id);
         return "redirect:/admin/clientmember/list";
      }
    
    
      @ExceptionHandler(MemberExistException.class)
      public String handleException(MemberExistException e, Model model,HttpServletRequest servlet) {
         model.addAttribute("e", e);
         return "error/result";
      }
      
      @ExceptionHandler(DMLException.class)
      public String handleException(DMLException e ,Model model,HttpServletRequest servlet) {
         model.addAttribute("e", e);
         return "error/result";
      }
         
   
}




