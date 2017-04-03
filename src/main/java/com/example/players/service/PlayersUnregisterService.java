package com.example.players.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mapper.PlayersMapper;

@Service
public class PlayersUnregisterService {

	@Autowired
	PlayersMapper playersMapper;
	
	public void unregister(int memberno){
		
		playersMapper.deleteByMemberno(memberno);
	}
}
