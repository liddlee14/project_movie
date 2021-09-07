package com.koreait.movie.model.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.Admin;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.repository.admin.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	@Override
	public Admin login(Admin admin) throws MemberExistException {
		
		return adminDAO.login(admin);
	}

	@Override
	public void regist(Admin admin) throws DMLException {
		adminDAO.regist(admin);
		
	}

	@Override
	public void update(Admin admin) throws DMLException{
		adminDAO.update(admin);
		
	}

	@Override
	public void delete(int admin_id) {
		adminDAO.delete(admin_id);
		
	}

	@Override
	public List selectAll() throws DMLException {
		
		return adminDAO.selectAll();
	}

	@Override
	public Admin select(int admin_id) {
		
		return adminDAO.select(admin_id);
	}

}