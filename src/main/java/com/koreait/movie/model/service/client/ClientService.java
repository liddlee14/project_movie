package com.koreait.movie.model.service.client;

import java.util.List;

import com.koreait.movie.domain.Client;

public interface ClientService {
	public Client login(Client client);
	public void regist(Client client);
	public void update(Client client);
	public void delete(int client_id);
	public List selectAll();
	public Client select(int client_id);
	
	public Client passCheck(int client_id);
	public void updatePass(Client client);
}
