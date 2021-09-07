package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.model.service.premovie.PremovieService;

@Controller
public class PremovieController {
	@Autowired
	private PremovieService premovieService;
	
	@RequestMapping(value="/moviechart/preall", method=RequestMethod.GET)
	public String getList(Model model,HttpServletRequest request) {
		premovieService.deleteAllInfo();
		premovieService.deleteAll();
		premovieService.insert();
		List prechart=  premovieService.selectAll();
		model.addAttribute("prechart",prechart);
		System.out.println(model);
		return "client/moviechart/prelist";
	}
}
