package com.example.manchester.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mapper.ManchesterMapper;

@Service
public class ManchesterUnRegisterService {

	@Autowired
	ManchesterMapper manchesterMapper;
	
	public void unregister(int idno){
		
		manchesterMapper.deleteByIdno(idno);
	}
}
