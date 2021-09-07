package com.koreait.movie.model.repository.Reboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Reboard;
import com.koreait.movie.exception.DMLException;
@Repository
public class MybatisReBoardDAO implements ReBoardDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insert(Reboard reboard) throws DMLException{
		sqlSessionTemplate.insert("Reboard.insert",reboard);//게시물넣기
		reboard.setTeam(reboard.getReboard_id());//얻어진 pk를 team에 적용
		sqlSessionTemplate.update("Reboard.updateTeam",reboard);// team수정
	}

	@Override
	public List selectAll() {
		
		return sqlSessionTemplate.selectList("Reboard.selectAll");
	}

	@Override
	public Reboard select(int reboard_id) {
		
		return sqlSessionTemplate.selectOne("Reboard.select", reboard_id);
	}

	@Override
	public void update(Reboard reboard) {
		int result=sqlSessionTemplate.update("Reboard.update",reboard);
	
	}

	@Override
	public void delete(int reboard_id) throws DMLException{
		int result=sqlSessionTemplate.delete("Reboard.delete",reboard_id);
		if(result==0) {
			throw new DMLException("글삭제에 실패하셨습니다.");
		}
	}



	@Override
	public void reply(Reboard reboard) {		
		sqlSessionTemplate.update("Reboard.updateStep", reboard);//자리확보
		sqlSessionTemplate.insert("Reboard.reply",reboard);//답변등록		
	
		System.out.println("2");
	}

}
