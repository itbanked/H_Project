package com.example.domain;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Manchester {
	
	private Integer idno;
	private String team;
	private List<Players> playerss;
	
	
	public List<Players> getPlayerss() {
		return playerss;
	}
	
	public void setPlayerss(List<Players> playerss) {
		this.playerss = playerss;
	}
	
	public Integer getIdno() {
		return idno;
	}
	public void setIdno(Integer idno) {
		this.idno = idno;
	}
	
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	
	@Override
	public String toString() {
		String str= null;
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		return str;
	}
	
}
