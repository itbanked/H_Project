package com.example.dept;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.country.service.CountrySearchService;
import com.example.dept.service.DeptSearchService;
import com.example.domain.Country;
import com.example.domain.Dept;
import com.example.exception.NotFoundRuntimeException;

@Controller
@RequestMapping("/dept")
public class DeptSearchController {
	
	static Log log = LogFactory.getLog(DeptSearchController.class);
	
	@Autowired
	DeptSearchService service;
	
	@GetMapping("/list")
	public String getList(Model model) {
		log.info("getList()");
		
		List<Dept> list = service.getList(); 
		model.addAttribute("list", list);
		
		return "dept/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model) {
		log.info("getPage(" + pageNo + ")");
		
		Map<String, Object> page = service.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "dept/page";
	}
	
	
	@GetMapping("/item/{code}")
	public String getItem(@PathVariable String code, Model model) {
		log.info("getItem(" + code + ")");
		
		Dept d = service.getDeptByCode(code);
		model.addAttribute("dept", d);
		
		return "dept/item";
	}
	
	
	
	
	

}
