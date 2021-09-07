package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.domain.Client;
import com.koreait.movie.domain.Reserv;
import com.koreait.movie.model.service.Reserv.ReservService;
import com.koreait.movie.model.service.moviechart.CgvChartService;

@Controller
public class ReservController {
   @Autowired
   private ReservService reService;
   @Autowired
   private CgvChartService cgvchartService;
   
   @GetMapping("/reserv/regist")
   public ModelAndView reservform(HttpServletRequest request) {
	  ModelAndView mav=new ModelAndView("/client/reserv/reservation");
	  
	  cgvchartService.deleteAllInfo();
      cgvchartService.deleteAll();
      cgvchartService.insert();
      List cgvchartList=cgvchartService.selectAll();
      mav.addObject("cgvchartList",cgvchartList);
      System.out.println(cgvchartList);
      return mav;
   } 
   @PostMapping("/reserv/insert")
   public String getSeat(Reserv reserv,HttpServletRequest request) {
      reService.insert(reserv);
      
      return "redirect:/client/reserv/seat/list";
   }
   
   @GetMapping("/reserv/seat/list")
   public ModelAndView getSeatList(HttpServletRequest request) {
	   System.out.println();
	  ModelAndView mav=new ModelAndView("/client/reserv/seat");
	  
	   //저장
	   return mav;
   } 
   
   
   @PostMapping("/reserv/update")
   public String getList(String seat,HttpServletRequest request) {
	   reService.update(seat);
	   
	   return "redirect:/client/reserv/list";
   }
  
   @GetMapping("/reserv/list")
   public ModelAndView List(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  Client client=(Client)session.getAttribute("obj");
	  
	  List reserv=reService.select(client.getClient_id());
	  ModelAndView mav = new ModelAndView("/client/reserv/list");
	  mav.addObject("reserv",reserv); 
	  
	  return mav;
   }
   
   @PostMapping("/reserv/list")
   public ModelAndView delete(int reserv_id,HttpServletRequest request) {
	   ModelAndView mav=new ModelAndView("redirect:/client/reserv/list");
	   reService.delete(reserv_id);
	   return mav;
   }
   
   
   
   
}














