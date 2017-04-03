package com.example.players.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Players;
import com.example.mapper.ManchesterMapper;
import com.example.mapper.PlayersMapper;
import com.example.util.Pagination;

@Service
public class PlayersSearchService {

	@Autowired
	PlayersMapper playersMapper;
	
	@Autowired
	ManchesterMapper manchesterMapper;
	
	public List<Players> getListAll(){
		
		List<Players> list = playersMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo){
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean withManchester){
		Pagination paging = new Pagination();
		paging.setTotalItem(playersMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Players> list = null;
		if(withManchester)
			list = playersMapper.selectPgeWithManchester(paging);
		else
			list = playersMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("players", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public Players getPlayersByMemberno(int memberno){
		Players players = null;
		
		players = playersMapper.selectByMemberno(memberno);
		
		return players;
	}

}
