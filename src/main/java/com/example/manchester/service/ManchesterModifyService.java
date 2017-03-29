package com.example.manchester.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Manchester;
import com.example.mapper.ManchesterMapper;

@Service
public class ManchesterModifyService {

	@Autowired
	ManchesterMapper manchesterMapper;
	
	public void modify(Manchester manchester, BindingResult errors){
		if(manchester.getIdno() != null){
			Manchester check = manchesterMapper.selectByIdno(manchester.getIdno());
			if(check == null){
				errors.reject("Invalid Idno","유효한 Idno가 아닙니다.");
			}
		}
		
		if(!errors.hasErrors()){
			manchesterMapper.updateByIdno(manchester);
		}
	}
}
