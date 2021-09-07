package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.service.Reserv.ReservService;
import com.koreait.movie.model.service.client.ClientService;
import com.koreait.movie.model.service.moviechart.CgvChartService;

@Controller
public class ClientController {
  
	@Autowired
   private ClientService clientService;
   @Autowired
   private CgvChartService cgvchartService;
   @Autowired
   private ReservService reservService;
   
   
   public void getMovie(Model model,HttpServletRequest request) {
	   	cgvchartService.deleteAllInfo();
		cgvchartService.deleteAll();
		cgvchartService.insert();
		List chart=  cgvchartService.selectAll();
		model.addAttribute("chart",chart);
		
   }
   // 홈으로
   @RequestMapping(value = "/home", method = RequestMethod.GET )
   public ModelAndView getHome(HttpServletRequest request,Model model) {
	   ModelAndView mav=new ModelAndView("client/main/home");
	   getMovie(model,request);
      return mav;
   }
   // 홈으로
   @RequestMapping(value = "/home", method = RequestMethod.POST )
   public ModelAndView Home(HttpServletRequest request) {
	   ModelAndView mav=new ModelAndView("client/main/home");
	   return mav;
   }
   
   // 로그아웃
   @RequestMapping(value = "/logout", method = RequestMethod.GET )
   public ModelAndView logOut(HttpServletRequest request,Model model) {
	   ModelAndView mav=new ModelAndView("client/main/home");
	   getMovie(model,request);
	   System.out.println("로그인");
	   request.getSession().invalidate();
	   System.out.println("로그아웃");
	   return mav;
   }
   
   
   // 로그인
   @RequestMapping(value = "/login", method = RequestMethod.POST)
   public ModelAndView loginForm(Client client,HttpServletRequest request,Model model) {
	   ModelAndView mav=new ModelAndView("redirect:/client/home");
	   getMovie(model,request);
	   HttpSession session=request.getSession();
	   Client obj=clientService.login(client);	   
	   session.setAttribute("obj", obj);
	  // System.out.println("쿨라이언트 로그인 폼" +obj);
	   return mav;
	   
   }
 
	//회원가입
	 @RequestMapping(value="/regist",method=RequestMethod.POST)
	 public ModelAndView signup(Client client,HttpServletRequest request,Model model) { 
		 ModelAndView mav=new ModelAndView("client/main/home");
		 getMovie(model,request);
	   clientService.regist(client);
	    return mav;
	 }
	 	
   
	 //마이페이지
	 @RequestMapping(value="/mypage/detail",method = RequestMethod.GET)
	 public ModelAndView getDetail(int client_id,HttpServletRequest request) {		 
		 ModelAndView mav=new ModelAndView("client/mypage/detail");
		 Client client=clientService.select(client_id);
		 mav.addObject("client",client);
		 //System.out.println("클라이언틎"+client);
		 return mav;
	 }
	 //마이페이지
	 @RequestMapping(value="/mypage/detail",method = RequestMethod.POST)
	 public ModelAndView reDetail(Client client,HttpServletRequest request) {		 
		 clientService.update(client);	
		 ModelAndView mav=new ModelAndView("redirect:/client/mypage/detail?client_id="+client.getClient_id());
		 //System.out.println("클라이언틎"+client);
		 return mav;
	 }
	 
	 
     //회원탈퇴
     @PostMapping("/mypage/delete")
     public ModelAndView delete(int client_id,HttpServletRequest request) {
    	ModelAndView mav=new ModelAndView("redirect:/client/logout");
    	reservService.delete1(client_id);
    	clientService.delete(client_id);
        return mav;
     }
	 
     //비밀번호 확인 폼
     @RequestMapping(value = "/mypage/passform",method = RequestMethod.GET)
     public ModelAndView passform(int client_id,HttpServletRequest request) {
    	 ModelAndView mav=new ModelAndView("client/mypage/passCheck");
    	 return mav;   	 
     }
     
     //비밀번호 수정폼
     @RequestMapping(value = "/mypage/passCheck",method = RequestMethod.POST)
     public ModelAndView passCheck(int client_id,HttpServletRequest request) {
    	 ModelAndView mav=new ModelAndView("client/mypage/password");
    	 clientService.passCheck(client_id);
    	 return mav;
     }
     
     //비밀번호 수정
     @RequestMapping(value = "/mypage/password",method = RequestMethod.POST)
     public ModelAndView repass(Client client,HttpServletRequest request) {
    	 ModelAndView mav=new ModelAndView("redirect:/client/logout");
    	 clientService.updatePass(client);
    	 return mav;
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