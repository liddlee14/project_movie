package com.koreait.movie.model.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;
import com.koreait.movie.model.repository.client.ClientDAO;
@Service
public class ClientServiceImpl implements ClientService{
	@Autowired
	private ClientDAO clientDAO;
	
	@Override
	public Client login(Client client) throws MemberExistException{
		
		return clientDAO.login(client);
	}

	@Override
	public void regist(Client client) throws DMLException{
		clientDAO.regist(client);
		
	}

	@Override
	public void update(Client client) {
		clientDAO.update(client);
		
	}

	@Override
	public void delete(int client_id) throws DMLException {
		clientDAO.delete(client_id);
		
	}
	

	@Override
	public List selectAll() {
		
		return clientDAO.selectAll();
	}


	@Override
	public Client select(int client_id) {
		
		return clientDAO.select(client_id);
	}

	@Override
	public Client passCheck(int client_id) {
		
		return clientDAO.passCheck(client_id);
	}

	@Override
	public void updatePass(Client client) {
		clientDAO.updatePass(client);
		
	}

}
