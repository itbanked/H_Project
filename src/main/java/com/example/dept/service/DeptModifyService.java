package com.example.dept.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;

@Service
public class DeptModifyService {
	
	@Autowired
	DeptMapper deptMapper;
	
	public void Modify( Dept dept, BindingResult errors ) {
		Dept dummy = deptMapper.selectByCode( Integer.toString( dept.getDeptno() ) );
		if ( dummy == null ) {
			errors.reject("Invalid informations", "유효한 정보가 아닙니다.");
		}
		
		if ( !errors.hasErrors() ) {
			deptMapper.updateByDeptNo(dept);
		}
	}
	

}
