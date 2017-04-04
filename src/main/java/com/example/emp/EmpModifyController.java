package com.example.emp;

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

import com.example.domain.Emp;
import com.example.domain.Member;
import com.example.emp.service.EmpModifyService;
import com.example.emp.service.EmpSearchService;
import com.example.form.EmpForm;

@Controller
@RequestMapping("/emp")
public class EmpModifyController {
	
	static Log log = LogFactory.getLog(EmpModifyController.class);

	@Autowired
	EmpSearchService empsearchservice;
	
	@Autowired
	EmpModifyService empModifyService;
	
	@GetMapping("/modify/{id}")
	public String modifyForm(EmpForm empForm, @PathVariable String id, Model model) {
		log.info("modifyForm()");
		
		Emp e = empsearchservice.getEmpById(Integer.parseInt(id));
		
		empForm.SetEmp(e);
		
		System.out.println("Selected Emp : " + e);
		model.addAttribute("empForm", empForm);
		
		return "emp/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid EmpForm empForm, BindingResult errors) {
		log.info("modify(" + empForm + ")");
		
		System.out.println(empForm);
		
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "emp/modifyForm";
		}
		
		// Modify
		empModifyService.Modify(empForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "emp/modifyForm";
		}
		
		return "redirect:/emp/modifySuccess/" + empForm.getEmpno(); 
	}
	
	@GetMapping("/modifySuccess/{id}")
	public String modifySuccess(@PathVariable String id, Model model) {
		Emp e = empsearchservice.getEmpById(Integer.parseInt(id));
		model.addAttribute("emp", e);
		return "emp/modifySuccess";
	}
}
