package com.example.dept;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Dept;
import com.example.domain.Member;
import com.example.dept.service.DeptModifyService;
import com.example.dept.service.DeptSearchService;
import com.example.form.DeptForm;

@Controller
@RequestMapping("/dept")
public class DeptModifyController {
	
	static Log log = LogFactory.getLog(DeptModifyController.class);

	@Autowired
	DeptSearchService deptsearchservice;
	
	@Autowired
	DeptModifyService deptModifyService;
	
	@GetMapping("/modify/{id}")
	public String modifyForm(DeptForm deptForm, @PathVariable String id, Model model) {
		log.info("modifyForm()");
		
		Dept dept = deptsearchservice.getDeptByCode(id);
		
		deptForm.SetDept(dept);
		
		System.out.println("Selected Dept : " + dept);
		model.addAttribute("deptForm", deptForm);
		
		return "dept/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid DeptForm deptForm, BindingResult errors) {
		log.info("modify(" + deptForm + ")");
		
		System.out.println(deptForm);
		
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/modifyForm";
		}
		
		// Modify
		deptModifyService.Modify(deptForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/modifyForm";
		}
		
		return "redirect:/dept/modifySuccess/" + deptForm.getDeptno(); 
	}
	
	@GetMapping("/modifySuccess/{id}")
	public String modifySuccess(@PathVariable String id, Model model) {
		Dept e = deptsearchservice.getDeptByCode(id);
		model.addAttribute("dept", e);
		return "dept/modifySuccess";
	}
}
