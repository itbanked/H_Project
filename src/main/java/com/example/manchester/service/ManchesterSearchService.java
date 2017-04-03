package com.example.manchester.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Manchester;
import com.example.mapper.ManchesterMapper;

@Service
public class ManchesterSearchService {
	
	@Autowired
	ManchesterMapper manchesterMapper;
	
	public List<Manchester> getListAll(){
		return getListAll(false);
	}
	
	public List<Manchester> getListAll(boolean withPlayers){

		List<Manchester> list = null;
		if(withPlayers)
			list = manchesterMapper.selectAllWithPlayers();
		else
			list = manchesterMapper.selectAll();
		return list;
	}
	public Manchester getPlayersByIdno(Integer idno){
		return getPlayersByIdno(idno, false);
	}
	
	
	public Manchester getPlayersByIdno(Integer idno, boolean withPlayers){
		Manchester m = null;
		if(withPlayers)
			m = manchesterMapper.selectByIdnoWithPlayers(idno);
		else
			m = manchesterMapper.selectByIdno(idno);
		return m;
	}
}
