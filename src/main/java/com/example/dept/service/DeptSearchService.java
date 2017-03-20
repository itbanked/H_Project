package com.example.dept.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;
import com.example.util.Pagination;

@Service
public class DeptSearchService {
	
	@Autowired
	DeptMapper deptMapper;
	
	public List<Dept> getList() {
		return getList(false);
	}
	public List<Dept> getList(boolean WithEmp) {
		List<Dept> list = null;
		if (WithEmp)
			list = deptMapper.selectAllWithEmp();
		else
			list = deptMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo) {
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean WithEmp) {
		Pagination paging = new Pagination();
		paging.setTotalItem(deptMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Dept> list = null;
		if (WithEmp)
			list = deptMapper.selectPageWithEmp(paging);
		else
			list = deptMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("Depts", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public Dept getDeptByCode(String code) {
		Dept d = deptMapper.selectByCodeWithEmp(code);
		return d;
	}

}
