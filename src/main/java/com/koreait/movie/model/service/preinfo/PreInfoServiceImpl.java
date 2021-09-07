package com.koreait.movie.model.service.preinfo;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.MovieInfo;
import com.koreait.movie.domain.PreInfo;
import com.koreait.movie.model.repository.preinfo.PreInfoDAO;

@Service
public class PreInfoServiceImpl implements PreInfoService {
	@Autowired
	private PreInfoDAO preinfoDAO;
	String info;
	@Override
	public void insert() {
		 
	      Document doc=null;
	      Document doc2=null;
	      try {
	         doc = Jsoup.connect("http://www.cgv.co.kr/movies/pre-movies.aspx").get();
	         
	         }
	         
	   
	      catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }	
	      	Elements p_doc=doc.select("div.sect-movie-chart ol").not("ol:first-child");
	      	Elements p_titles=p_doc.select("div.box-contents strong.title");
	         Elements movieInfos=doc.select("div.box-contents a").not(".link-reservation");
	        //System.out.println(p_doc);
	       
	        for(int i=0;i<p_titles.size()-1;i++) {
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
		         String p_title=p_titles.get(i).text();
		         String i_title=p_titles.get(i).text();
		         //System.out.println(i_title);
		         
		         String spec=specs.text() ;
		         //System.out.println(spec);
		         
		         String plot=plots.text();
		         //System.out.println(plot);
		         
		         PreInfo preinfo=new PreInfo();
		         preinfo.setP_title(p_title);
		         preinfo.setI_title(i_title);
		         preinfo.setImage(image);
		         preinfo.setSpec(spec);
		         preinfo.setPlot(plot);
		         preinfoDAO.insert(preinfo);
	         }
	         
	         
	        
	        
	       
	        	 
	         
	         }
	
	         
	
	@Override
	public void update(PreInfo preinfo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		preinfoDAO.deleteAll();
		
	}

	@Override
	public List selectAll() {
		return preinfoDAO.selectAll();
	}



	@Override
	public PreInfo select(String p_title) {
		return preinfoDAO.select(p_title);
	}



	
}
