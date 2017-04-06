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

import com.example.domain.Dept;
import com.example.dept.service.DeptRemoveService;
import com.example.dept.service.DeptSearchService;
import com.example.form.DeptForm;
import com.example.mapper.DeptMapper;

@Controller
@RequestMapping("/dept")
public class DeptRemoveController {
	
	static Log log = LogFactory.getLog(DeptRemoveController.class);

	@Autowired
	DeptSearchService deptSearchService;
	
	@Autowired
	DeptRemoveService deptRemoveService;
	
	@Autowired
	DeptMapper deptMapper;
	
	@GetMapping("/remove/{id}")
	public String RemoveForm(DeptForm deptForm, @PathVariable String id) {
		log.info("RemoveForm()");
		
		Dept dept = deptSearchService.getDeptByCode(id);

		deptForm.SetDept(dept);
		
		System.out.println("Current Dept(RemoveForm) : " + deptForm.getDeptno());
		
		return "dept/RemoveDept";
	}
	
	@PostMapping("/remove")
	public String removeProcess(@Valid DeptForm deptForm, BindingResult errors) {
		log.info("RemoveMember(" + deptForm + ")");
		System.out.println("Current Dept(RemoveProcess02) : " + deptForm.getDeptno());
		
		System.out.println(deptForm);
		
		// Validate
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/RemoveDept";
		}
		
		// Register
		deptRemoveService.Remove(deptForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dept/RemoveDept";
		}

		return "redirect:/dept/RemoveSuccess/"; 
	}
	
	@GetMapping("/RemoveSuccess")
	public String modifySuccess(Model model) {
		return "dept/RemoveDeptSuccess";
	}

}
