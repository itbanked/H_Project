package com.example.manchester.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Manchester;
import com.example.mapper.ManchesterMapper;

@Service
public class ManchesterRegisterService {

	@Autowired
	ManchesterMapper manchesterMapper;
	
	public void register(Manchester manchester, BindingResult errors){
		
		Manchester confirm = manchesterMapper.selectByIdno(manchester.getIdno());
		if(confirm != null){
			errors.reject("InvalidIdno", "유효한Idno가 아닙니다.");
		}
		
		if(!errors.hasErrors()){
			manchesterMapper.insert(manchester);
		}
	}
	
}
