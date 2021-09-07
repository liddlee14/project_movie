package com.koreait.movie.controller.rest.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.model.service.client.ClientService;

@RestController
public class ClientController {
	
	@Autowired
	private ClientService clientService; 
	
	//회원 목록
	@GetMapping("/client")
	@ResponseBody
	public List<Client>getList(){
		List clientList=clientService.selectAll();
		return clientList;
	}
	
	//회원 상세보기
	@GetMapping("/client/{client_id}")
	@ResponseBody
	public Client getDetial(@PathVariable int client_id) {
		return clientService.select(client_id);
	}
		
	//회원 등록
	@PostMapping("/client")
	public String regist(@RequestBody Client client) {
		clientService.regist(client);
		return "ok";
	}
	
	//회원 수정
	@PutMapping("/client")
	public String update(@RequestBody Client client) {
		clientService.update(client);
		System.out.println("ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ");
		return "ok";
	}
	
	//회원 삭제
	@DeleteMapping("/client/{client_id}")
	public String delete(@PathVariable int client_id) {
		clientService.delete(client_id);
		return "ok";
	}
	
	@ExceptionHandler(DMLException.class)
	public String handle(DMLException e) {
		return e.getMessage();
	}
	
}










