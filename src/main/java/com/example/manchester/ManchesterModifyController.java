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
import com.example.manchester.service.ManchesterModifyService;
import com.example.manchester.service.ManchesterSearchService;

@Controller
@RequestMapping("/manchester")
public class ManchesterModifyController {

	@Autowired
	ManchesterSearchService manchesterSearchService;
	
	@Autowired
	ManchesterModifyService manchesterModifyService;
	
	@GetMapping("/modify/{idno}")
	public String modifyFrom(ManchesterForm manchesterForm,  @PathVariable int idno){
		Manchester manchester = manchesterSearchService.getPlayersByIdno(idno);
		manchesterForm.setManchester(manchester);
		
		return "manchester/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid ManchesterForm manchesterForm, BindingResult errors){
		if(errors.hasErrors()){
			System.out.println(errors);
			return "manchester/modifyForm";
		}
		
		manchesterModifyService.modify(manchesterForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "manchester/modifyForm";
		}
		return "redirect:/manchester/modifySuccess/" + manchesterForm.getIdno();
	}
	
	@GetMapping("modifySuccess/{idno}")
	public String modifySuccess(@PathVariable int idno, Model model){
		Manchester manchester = manchesterSearchService.getPlayersByIdno(idno);
		model.addAttribute("manchester",manchester);
		return "manchester/modifySuccess";
	}
}
