package com.koreait.movie.model.service.premovie;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.CgvChart;
import com.koreait.movie.domain.Premovie;
import com.koreait.movie.model.repository.premovie.PremovieDAO;

@Service
public class PremovieServiceImpl implements PremovieService {
	@Autowired
	private PremovieDAO premovieDAO;

	@Override
	public void insert() {
		Document doc=null;
	      
	      try {
	         doc = Jsoup.connect("http://www.cgv.co.kr/movies/pre-movies.aspx").get();
	        
	         }
	         
	   
	      catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      	
	         Elements imgs = doc.select(".thumb-image > img");
	         Elements movieTitles = doc.select("div.box-contents strong.title");
	         Elements movieOpenDates = doc.select(".txt-info strong");
	         
	         for(int i=0;i< movieTitles.size()-1;i++) {
	            
	           
	            String img=imgs.get(i).attr("src");
	            String title=movieTitles.get(i).text();
	            String date=movieOpenDates.get(i).text();
	            
	            
	            Premovie premovie=new Premovie();
	            
	            premovie.setP_img(img);
	            premovie.setP_title(title);
	            premovie.setP_date(date);
	            
	            //list.add(movieChart);
	            premovieDAO.insert(premovie);
	}
	         //moviechartDAO.insert(list);
		
	}

	@Override
	public void deleteAll() {
		premovieDAO.deleteAll();
		
	}

	@Override
	public List selectAll() {
		return premovieDAO.selectAll();
	}
	@Override
	public void deleteAllInfo() {
		premovieDAO.deleteAllInfo();
		
	}

}
