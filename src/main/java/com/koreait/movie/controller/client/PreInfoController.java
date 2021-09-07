package com.koreait.movie.controller.client;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.PreInfo;
import com.koreait.movie.model.service.preinfo.PreInfoService;

@Controller
public class PreInfoController {
	@Autowired
	private PreInfoService preinfoService;
	
	@RequestMapping(value="/moviechart/preinfo", method=RequestMethod.GET)
	public String getList(Model model,HttpServletRequest request,String p_title) {
		preinfoService.deleteAll();
		preinfoService.insert();
		PreInfo preinfo=  preinfoService.select(p_title);
		System.out.println("찍힌것"+preinfo);
		model.addAttribute("info",preinfo);
		//System.out.println(model);
		return "client/moviechart/preinfo";
		
	}
	
}
