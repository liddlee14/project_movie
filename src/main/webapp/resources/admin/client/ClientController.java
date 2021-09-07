package com.koreait.movie.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.client.ClientService;

@Controller
public class ClientController {
  
	@Autowired
   private ClientService clientService;
   
   // 홈으로
   @RequestMapping(value = "/home", method = RequestMethod.GET )
   public String getHome(HttpServletRequest request) {
      return "client/main/home";
   }
   // 홈으로
   @RequestMapping(value = "/home", method = RequestMethod.POST )
   public String Home(HttpServletRequest request) {
	   return "client/main/home";
   }
   
   // 로그아웃
   @RequestMapping(value = "/logout", method = RequestMethod.GET )
   public String logOut(HttpServletRequest request) {
	   System.out.println("로그인");
	   request.getSession().invalidate();
	   System.out.println("로그아웃");
	   return "client/main/home";
   }
   
   
   // 로그인
   @RequestMapping(value = "/login", method = RequestMethod.POST)
   public String loginForm(Client client,HttpServletRequest request) {
	   Client obj=clientService.login(client);	   
	   HttpSession session=request.getSession();
	   session.setAttribute("obj", obj);
	   System.out.println("쿨라이언트 로그인 폼" +obj);
	   return "client/main/home";
	   
   }
 
	//회원가입
	 @RequestMapping(value="/regist",method=RequestMethod.POST)
	 public String signup(Client client,HttpServletRequest request) { 
	   clientService.regist(client);
	    return "client/main/home";
	 }
	 	
   
	 //마이페이지
	 @RequestMapping(value="/mypage/detail",method = RequestMethod.GET)
	 public String getDetail(int client_id,Model model,HttpServletRequest request) {		 
		 Client client=clientService.select(client_id);
		 model.addAttribute("client",client);
		 System.out.println("클라이언틎"+client);
		 return "client/mypage/detail";
	 }
	 
	 //회원정보수
     @RequestMapping(value="/mypage/update",method = RequestMethod.POST)
     public String update(Client client,HttpServletRequest request) {
        clientService.update(client);
        System.out.println("수정후 클라이언트"+client);
     return "client/mypage/detail";
     }
	 
     //회원탈퇴
     @PostMapping("/mypage/delete")
     public String delete(int client_id,HttpServletRequest request) {
        clientService.delete(client_id);
        return "redirect:/client/home";
     }
	 
     //비밀번호 확인 폼
     @RequestMapping(value = "/mypage/passform",method = RequestMethod.GET)
     public String passform(int client_id,HttpServletRequest request) {
    	 return "client/mypage/passCheck";   	 
     }
     
     //비밀번호 수정폼
     @RequestMapping(value = "/mypage/passCheck",method = RequestMethod.POST)
     public String passCheck(int client_id,HttpServletRequest request) {
    	 clientService.passCheck(client_id);
    	 return "client/mypage/password";
     }
     
     //비밀번호 수정
     @RequestMapping(value = "/mypage/password",method = RequestMethod.POST)
     public String repass(Client client,HttpServletRequest request) {
    	 clientService.updatePass(client);
    	 return "redirect:/client/logout";
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