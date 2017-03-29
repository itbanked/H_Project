package com.example.manchester;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Manchester;
import com.example.form.ManchesterForm;
import com.example.manchester.service.ManchesterRegisterService;
import com.example.manchester.service.ManchesterSearchService;

@Controller
@RequestMapping("/manchester")
public class ManchesterRegisterController {

	@Autowired
	ManchesterSearchService manchesterSearchService;
	
	@Autowired
	ManchesterRegisterService manchesterRegisterService;
	
	@GetMapping("/register")
	public String registerForm(ManchesterForm manchesterForm){
		
		return "manchester/registerForm";
	}
	@PostMapping("/register")
	public String register(@Valid ManchesterForm manchesterForm, BindingResult errors){
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "manchester/registerForm";
		}
		
		manchesterRegisterService.register(manchesterForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "manchester/registerForm";
		}
		
		return "redirect:/manchester/registerSuccess/" + manchesterForm.getIdno();
	}
	
	@GetMapping("/registerSuccess/{idno}")
	public String registerSuccess(@PathVariable Integer idno, Model model){
		Manchester manchester = manchesterSearchService.getPlayersByIdno(idno);
		model.addAttribute("manchester", manchester);
		return "manchester/registerSuccess";
	}
	
}
