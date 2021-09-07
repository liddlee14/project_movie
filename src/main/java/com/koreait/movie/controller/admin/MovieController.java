package com.koreait.movie.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.model.service.moviechart.CgvChartService;


@Controller
public class MovieController {
	@Autowired
	private CgvChartService cgvchartService;
	

	/*@RequestMapping(value="/moviechart/list", method=RequestMethod.GET)
	public void getCrawling() {
		moviechartService.insert();
	}*/
	@RequestMapping(value="/moviechart/all", method=RequestMethod.GET)
	public String getList(Model model,HttpServletRequest request) {
		cgvchartService.insert();
		List chart=  cgvchartService.selectAll();
		model.addAttribute("chart",chart);
		System.out.println(model);
		return "admin/moviechart/list";
	}
	
	
	
}