package com.koreait.movie.model.service.movieinfo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.koreait.movie.domain.CgvChart;
import com.koreait.movie.domain.MovieInfo;
import com.koreait.movie.model.repository.moviechart.CgvChartDAO;
import com.koreait.movie.model.repository.movieinfo.MovieInfoDAO;

@Service
public class MovieInfoServiceImpl implements MovieInfoService {
	@Autowired
	private MovieInfoDAO movieinfoDAO;
	String info;
	@Override
	public void insert() {
		 
	      Document doc=null;
	      Document doc2=null;
	      try {
	         doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
	         
	         }
	         
	   
	      catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      	Elements titles=doc.select("div.box-contents strong.title");
	         Elements movieInfos=doc.select("div.box-contents a").not(".link-reservation");
	         Elements ranks = doc.select(".rank");
	         for(int i=0;i< ranks.size();i++) {
	            info=movieInfos.get(i).attr("abs:href");
	            //System.out.println(info);
	            try {
					doc2=Jsoup.connect(info).get();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            Elements images = doc2.select(".thumb-image > img");
		         
		         
		         Elements specs=doc2.select("div.spec > dl");
		         Elements plots=doc2.select("div.sect-story-movie");
		         //System.out.println(specs);
		         
		         String image=images.attr("src");
		         
		         String i_title=titles.get(i).text();
		         System.out.println(i_title);
		         
		         String spec=specs.text() ;
		         System.out.println(spec);
		         
		         String plot=plots.text();
		         System.out.println(plot);
		         
		         MovieInfo movieinfo=new MovieInfo();
		         movieinfo.setTitle(i_title);
		         movieinfo.setI_title(i_title);
		         movieinfo.setImage(image);
		         movieinfo.setSpec(spec);
		         movieinfo.setPlot(plot);
		         movieinfoDAO.insert(movieinfo);
	         }
	         
	         
	        
	        
	       
	        	 
	         
	         }
	
	         
	
	@Override
	public void update(MovieInfo movieinfo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		movieinfoDAO.deleteAll();
		
	}

	@Override
	public List selectAll() {
		return movieinfoDAO.selectAll();
	}



	@Override
	public MovieInfo select(String title) {
		return movieinfoDAO.select(title);
	}
	
}
