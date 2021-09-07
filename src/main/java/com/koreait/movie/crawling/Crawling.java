package com.koreait.movie.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.koreait.movie.domain.CgvChart;


public class Crawling {
	   //private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	   
	   /**
	    * Simply selects the home view to render by returning its name.
	    */
	   @RequestMapping(value = "test", method = RequestMethod.GET)
	   public String home(Locale locale, Model model) {
	      Gson gson;
	      String json = null;
	      List <CgvChart>list=new ArrayList<CgvChart>();
	      Document doc;
	      
	      try {
	         doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
	         Elements ranks = doc.select(".rank");
	         Elements imgs = doc.select(".thumb-image > img");
	         Elements movieTitles = doc.select("div.box-contents strong.title");
	         Elements movieOpenDates = doc.select(".txt-info strong");
	         
	         for(int i=0;i< ranks.size();i++) {
	            
	            String rank=ranks.get(i).text();
	            String img=imgs.get(i).attr("src");
	            String movieTitle=movieTitles.get(i).text();
	            String movieOpenDate=movieOpenDates.get(i).text();
	            int seq=i;
	            
	            CgvChart movieChart=new CgvChart();
	            
	            list.add(movieChart);
	         }
	            gson =new Gson();
	            json=gson.toJson(list);
	            System.out.println(json);
	   
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      
	   
	      return json;
	   }
	   
	}