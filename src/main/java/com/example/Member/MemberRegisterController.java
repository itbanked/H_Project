package com.example.Member;

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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.service.CityRegisterService;
import com.example.city.service.CitySearchService;
import com.example.domain.City;
import com.example.domain.Member;
import com.example.form.CityForm;
import com.example.form.MemberForm;

@Controller
@RequestMapping("/Admin/CMD")
public class MemberRegisterController {
	
	static Log log = LogFactory.getLog(MemberRegisterController.class);

	@Autowired
	MemberSearchService memberSearchService;
	
	@Autowired
	MemberRegisterService memberRegisterService;
	
	@GetMapping("/Add")
	public String registerForm(MemberForm memberForm) {
		log.info("registerForm()");
		return "Admin/CMD/AddMember";
	}
	
	@PostMapping("/Add")
	public String register(@Valid MemberForm memberForm, BindingResult errors) {
		log.info("AddMember(" + memberForm + ")");
		
		System.out.println(memberForm);
		
		// Validate
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "Admin/CMD/AddMember";
		}
		
		// Register
		memberRegisterService.register(memberForm, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "Admin/CMD/AddMember";
		}

		return "redirect:/Admin/CMD/AddMemberSuccess/" + memberForm.getMembersrl(); 
	}
	
	@GetMapping("/AddMemberSuccess/{id}")
	public String registerSuccess(@PathVariable BigDecimal id, Model model) {
		Member member = memberSearchService.getMemberByMemberSrl(id);
		model.addAttribute("member", member);
		return "Admin/CMD/AddMemberSuccess";
	}
}
