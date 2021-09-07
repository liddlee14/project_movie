package com.koreait.movie.model.service.moviechart;

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
import com.koreait.movie.model.repository.moviechart.CgvChartDAO;

@Service
public class CgvChartServiceImpl implements CgvChartService {
	@Autowired
	private CgvChartDAO cgvchartDAO;
	CgvChart cgvchart;
	@Override
	public void insert() {
		 
	      Document doc=null;
	      
	      try {
	         doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
	        
	         }
	         
	   
	      catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      	 Elements ranks = doc.select(".rank");
	      	 
	         Elements imgs = doc.select(".thumb-image > img");
	         Elements movieTitles = doc.select("div.box-contents strong.title");
	         Elements movieOpenDates = doc.select(".txt-info strong");
	        
	         
	         //System.out.println("현재"+movieTitles);
	         for(int i=0;i< ranks.size();i++) {
	            
	            String rank=ranks.get(i).text();
	            String img=imgs.get(i).attr("src");
	            String title=movieTitles.get(i).text();
	            String date=movieOpenDates.get(i).text();
	            
	           
	           System.out.println(title);
	            cgvchart=new CgvChart();
	            cgvchart.setRank(rank);
	            cgvchart.setImg(img);
	            cgvchart.setTitle(title);
	            cgvchart.setDate(date);
	           
	            //list.add(movieChart);
	            cgvchartDAO.insert(cgvchart);
	}
	         }
	         //moviechartDAO.insert(list);
	
	@Override
	public void update(CgvChart cgvchart) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		cgvchartDAO.deleteAll();
		
	}

	@Override
	public List selectAll() {
		return cgvchartDAO.selectAll();
	}
	@Override
	public void deleteAllInfo() {
		cgvchartDAO.deleteAllInfo();
		
	}
	
}
