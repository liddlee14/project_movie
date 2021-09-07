package com.koreait.movie.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.Admin;
import com.koreait.movie.model.service.admin.AdminService;
import com.koreait.movie.paging.PagingManager;

@Controller
public class AdminController {

   @Autowired
   private AdminService adminService;
   @Autowired
	private PagingManager pagingManager;
	

   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String goHome(HttpServletRequest request) {
     
      return "admin/main/home";
   }
   // 로그인폼
   @RequestMapping(value = "/index", method = RequestMethod.GET)
   public String startloginForm(HttpServletRequest request) {
      return "start/index";
   }
   
   // 로그인폼
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String loginForm(HttpServletRequest request) {
      return "admin/login/loginform";
   }

   // 로그인
   @RequestMapping(value = "/home", method = RequestMethod.POST)
   public String loginCheck(Admin admin, HttpServletRequest request) {
      Admin obj = adminService.login(admin);
      HttpSession session=request.getSession();
      session.setAttribute("admin", obj);// request 아닌 세션에 저장
      return "admin/main/home";
   }

     // 회원가입폼
     @RequestMapping(value = "login/signup", method = RequestMethod.GET)
     public String signform(HttpServletRequest request) {
      return "admin/login/signup";
      
     }
   
   
     //회원가입
     @RequestMapping(value="/regist",method=RequestMethod.POST)
     public String signup(Admin admin,HttpServletRequest request) { 
        adminService.regist(admin);     
        return "admin/login/loginform";
     }
    
     //관리자 목록
     @RequestMapping(value = "member/list",method = RequestMethod.GET)
     public String adminList(Model model,HttpServletRequest request) {
        List adminList=adminService.selectAll();
        pagingManager.init(adminList, request);
        model.addAttribute("adminList",adminList);
    	model.addAttribute("pagingManager", pagingManager);
        
        return "admin/member/list";
     }
     
     //관리자 상세보기
     @GetMapping("member/detail")
     public String adminDetail(int admin_id,Model model,HttpServletRequest request) {
        Admin admin=adminService.select(admin_id);
        model.addAttribute("admin",admin);     
        return "admin/member/Mdetail";
     }
     
        //관리자 정보 수정
      @RequestMapping(value="member/update",method = RequestMethod.POST)
      public String update(Admin admin,HttpServletRequest request) {
         adminService.update(admin);
         System.out.println(admin);
         return "redirect:/admin/member/list";
      }
     
      //관리자 삭제
      @PostMapping("member/delete")
      public String delete(int admin_id,HttpServletRequest request) {
         adminService.delete(admin_id);
         return "redirect:/admin/member/list";
      }
      
      

      
   
}








