package com.example.emp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.City;
import com.example.domain.Emp;
import com.example.mapper.CityMapper;
import com.example.mapper.EmpMapper;
import com.example.util.Pagination;

@Service
public class EmpSearchService {
	static Log log = LogFactory.getLog(EmpSearchService.class);
	
	@Autowired
	EmpMapper empMapper;
	
	public List<Emp> getListAll() {
		log.info("getListAll()");
		return getListAll(false);
	}
	
	public List<Emp> getListAll(boolean withDept) {
		log.info("getListAll(" + withDept + ")");
		List<Emp> list=null;
		if (withDept)
			list = empMapper.selectAllWithDept();
		else
			list = empMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo) {
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean withDept) {
		Pagination paging = new Pagination();
		paging.setTotalItem(empMapper.CountAll());
		paging.setPageNo(pageNo);
		
		List<Emp> list=null;
		if (withDept)
			list = empMapper.selectPageWithDept(paging);
		else
			list = empMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("emps", list);
		map.put("paging", paging);
		
		return map;
	}
	
	
	public Emp getCityById(int id) {
		log.info("getCityById(" + id + ")");
		return getCityById(id, false);
	}
	public Emp getCityById(int id, boolean withDept) {
		log.info("getCityById(" + id + ", " + withDept + ")");
		Emp emp=null;
		if (withDept)
			emp = empMapper.selectByIdWithDept(id);
		else
			emp = empMapper.selectById(id);
		
		return emp;
	}
	
	

}
