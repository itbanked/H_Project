package com.example.dept;

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

import com.example.dept.service.DeptRegisterService;
import com.example.dept.service.DeptSearchService;
import com.example.domain.Dept;
import com.example.form.DeptForm;
import com.example.mapper.DeptMapper;

@Controller
@RequestMapping("/dept")
public class DeptRegisterController {
	
	static Log log = LogFactory.getLog(DeptRegisterController.class);

	@Autowired
	DeptSearchService deptSearchService;
	
	@Autowired
	DeptRegisterService deptRegisterService;
	
	@Autowired
	DeptMapper deptMapper;
	
	@GetMapping("/Register")
	public String registerForm(DeptForm deptForm) {
		log.info("registerForm()");
		return "dept/RegisterDept";
	}

	@PostMapping("/Register")	
	public String register(@Valid DeptForm deptForm, BindingResult errors, Boolean Checked) {
		log.info("AddDept(" + deptForm + ")");
		
		System.out.println(deptForm);
		
		// Validate
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/RegisterDept";
		}
		
		// Register
		deptRegisterService.register(deptForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/RegisterDept";
		}

		return "redirect:/dept/RegisterDeptSuccess/" + deptForm.getDeptno(); 
	}
	
	@GetMapping("/RegisterDeptSuccess/{id}")
	public String registerSuccess(@PathVariable String id, Model model) {
		Dept dept = deptSearchService.getDeptByCode(id);
		model.addAttribute("dept", dept);
		return "dept/RegisterDeptSuccess";
	}
}
