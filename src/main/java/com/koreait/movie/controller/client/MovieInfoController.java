package com.koreait.movie.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.domain.Board;
import com.koreait.movie.domain.MovieInfo;
import com.koreait.movie.model.service.movieinfo.MovieInfoService;
import com.koreait.movie.model.service.premovie.PremovieService;

@Controller
public class MovieInfoController {
	@Autowired
	private MovieInfoService movieinfoService;
	
	@RequestMapping(value="/moviechart/info", method=RequestMethod.GET)
	public String getList(Model model,HttpServletRequest request,String title) {
		movieinfoService.deleteAll();
		movieinfoService.insert();
		MovieInfo movieinfo=  movieinfoService.select(title);
		model.addAttribute("info",movieinfo);
		//System.out.println(model);
		return "client/moviechart/info";
		
	}
	
}
