package com.koreait.movie.model.service.reboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.Reboard;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.model.repository.Reboard.ReBoardDAO;
@Service
public class ReboardServiceImlp implements ReboardService{
	
	@Autowired
	private ReBoardDAO reboardDAO;
	
	@Override
	public void insert(Reboard reboard) throws DMLException {
		reboardDAO.insert(reboard);
		
	}

	@Override
	public List selectAll() {
		
		return reboardDAO.selectAll();
	}

	@Override
	public Reboard select(int reboard_id) {
		
		return reboardDAO.select(reboard_id);
	}

	@Override
	public void update(Reboard reboard) {
		reboardDAO.update(reboard);
		
	}

	@Override
	public void delete(int reboard_id)throws DMLException {
		reboardDAO.delete(reboard_id);
		
	}

	@Override
	public void reply(Reboard reboard) {
		reboardDAO.update(reboard);
		reboardDAO.reply(reboard);
		System.out.println("1");
		
	}

}
