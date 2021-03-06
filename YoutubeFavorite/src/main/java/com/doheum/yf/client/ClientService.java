package com.doheum.yf.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doheum.yf.client.dao.ClientMapper;
import com.doheum.yf.model.YoutubeVO;

@Service
public class ClientService {
	@Autowired
	private ClientMapper mapper;
	
	public List<YoutubeVO> getList() {		
		return mapper.getList();
	}
}
