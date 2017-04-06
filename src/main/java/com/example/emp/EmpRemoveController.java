package com.example.emp;

import java.math.BigDecimal;

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
import com.example.emp.service.EmpRemoveService;
import com.example.emp.service.EmpSearchService;
import com.example.form.EmpForm;
import com.example.form.MemberForm;
import com.example.mapper.EmpMapper;
import com.example.mapper.MemberMapper;

@Controller
@RequestMapping("/emp")
public class EmpRemoveController {
	
	static Log log = LogFactory.getLog(EmpRemoveController.class);

	@Autowired
	EmpSearchService empSearchService;
	
	@Autowired
	EmpRemoveService empRemoveService;
	
	@Autowired
	EmpMapper empMapper;
	
	@GetMapping("/remove/{id}")
	public String RemoveForm(EmpForm empForm, @PathVariable int id) {
		log.info("RemoveForm()");
		
		Emp e = empSearchService.getEmpById(id);

		empForm.SetEmp(e);
		
		System.out.println("Current Membersrl(RemoveForm) : " + empForm.getEmpno());
		
		return "emp/RemoveEmp";
	}
	
	@PostMapping("/remove")
	public String remove(EmpForm empForm, BindingResult errors) {
		Emp e = empSearchService.getEmpById(empForm.getEmpno());
		
		System.out.println("Current Membersrl(RemoveProcess01) : " + empForm.getEmpno());
	
		return removeProcess(empForm, errors);
	}
	
	public String removeProcess(@Valid EmpForm empForm, BindingResult errors) {
		log.info("RemoveMember(" + empForm + ")");
		System.out.println("Current Membersrl(RemoveProcess02) : " + empForm.getEmpno());
		
		System.out.println(empForm);
		
		// Validate
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "emp/RemoveEmp";
		}
		
		// Register
		empRemoveService.Remove(empForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "emp/RemoveEmp";
		}

		return "redirect:/emp/RemoveSuccess/"; 
	}
	
	@GetMapping("/RemoveSuccess")
	public String modifySuccess(Model model) {
		return "emp/RemoveEmpSuccess";
	}

}
