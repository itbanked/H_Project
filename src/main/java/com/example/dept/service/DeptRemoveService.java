package com.example.dept.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;

@Service
public class DeptRemoveService {

	@Autowired
	DeptMapper deptMapper;
	
	public void Remove( Dept dept, BindingResult errors ) {
		
		Dept validate = deptMapper.selectByCode( Integer.toString( dept.getDeptno() ) );
		
		if ( validate == null ) {
			errors.reject("Dept not exists", "해당 시리얼에 부서가 존재하지 않습니다..");
		}
		
		if ( !errors.hasErrors() ) {
			deptMapper.deleteByDeptNo( dept.getDeptno() );
		}
	}
}
