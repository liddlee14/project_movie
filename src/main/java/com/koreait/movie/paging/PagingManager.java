package com.koreait.movie.paging;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import lombok.Data;

@Data
public class PagingManager {
	int totalRecord;//총 게시물 수
	int pageSize=5;//페이지당 보여줄 레코드 수

	int totalPage; //총 페이지 수(나머지 숨겨진 데이터를 보기위한 페이지 분할된 총 수)
	int blockSize=10;
	int currentPage=1;//현재 페이지
	int firstPage;
	int lastPage;
	int curPos;
	int num;
	
	public void init(List list, HttpServletRequest request) {
		totalRecord=list.size();
		totalPage=(int)Math.ceil((float)totalRecord/pageSize);
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		firstPage=currentPage- ((currentPage-1)%blockSize);
		lastPage=firstPage+(blockSize-1);
		curPos = (currentPage-1)*pageSize; //페이지당 시작 리스트 내의 인덱스 위치 1-0, 2-10 
		num=totalRecord - curPos;
	}

}
