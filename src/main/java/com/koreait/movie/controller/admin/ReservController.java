package com.koreait.movie.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.koreait.movie.model.service.Reserv.ReservService;
import com.koreait.movie.paging.PagingManager;

@Controller
public class ReservController {
	@Autowired
	private ReservService reservService;
	 @Autowired
	private PagingManager pagingManager;
	
	@GetMapping("/reserv/list")
	public String getList(Model model,HttpServletRequest request) {
		List reservList=reservService.selectAll();
		 pagingManager.init(reservList, request);
		model.addAttribute("reservList",reservList);
		model.addAttribute("pagingManager", pagingManager);
		return "/admin/reserv/list";
	}
	
}
