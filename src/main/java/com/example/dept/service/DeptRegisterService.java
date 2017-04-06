package com.example.dept.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;

@Service
public class DeptRegisterService {
	
	@Autowired
	DeptMapper deptMapper;
	
	
	public void register( Dept dept, BindingResult errors ) {
		Dept Validate = deptMapper.selectByCode( Integer.toString( dept.getDeptno() ) );
		if ( Validate != null ) {
			errors.reject("Invalid Dept Code", "이미 해당 부서가 존재합니다.");
		}
		
		if ( !errors.hasErrors() ) {
			deptMapper.insert(dept);
		}
	}
	

}
