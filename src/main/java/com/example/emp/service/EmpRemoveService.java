package com.example.emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Emp;
import com.example.mapper.EmpMapper;

@Service
public class EmpRemoveService {

	@Autowired
	EmpMapper empMapper;
	
	public void Remove( Emp emp, BindingResult errors ) {
		
		Emp validate = empMapper.selectById( emp.getEmpno() );
		
		if ( validate == null ) {
			errors.reject("Emp not exists", "해당 시리얼에 사원이 존재하지 않습니다..");
		}
		
		if ( !errors.hasErrors() ) {
			empMapper.delete(emp);
		}
	}
}
