package com.koreait.movie.model.repository.admin;

import java.util.List;

import com.koreait.movie.domain.Admin;

public interface AdminDAO {
	public Admin login(Admin admin); //로그인
	public void regist(Admin admin);//관리자 등록
	public void update(Admin admin);//관리자 수정
	public void delete(int admin_id);//아이디, 패스워드가 모두 일치할 때 탈퇴시켜야 하기 때문에 Admin
	public List selectAll();
	public Admin select(int admin_id);
}