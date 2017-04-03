package com.example.manchester;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Manchester;
import com.example.form.ManchesterForm;
import com.example.manchester.service.ManchesterSearchService;
import com.example.manchester.service.ManchesterUnRegisterService;

@Controller
@RequestMapping("/manchester")
public class ManchesterUnRegisterController {

	@Autowired
	ManchesterSearchService manchesterSearchService;
	
	@Autowired
	ManchesterUnRegisterService manchesterUnRegisterService;
	
	@GetMapping("/unregister/{idno}")
	public String unregisterForm(@PathVariable int idno, Model model){
		
		Manchester manchester = manchesterSearchService.getPlayersByIdno(idno);
		model.addAttribute("manchester", manchester);
		
		return "manchester/unregisterForm";
	}
	@PostMapping("/unregister/{idno}")
	public String unregister(@PathVariable int idno){
		manchesterUnRegisterService.unregister(idno);
	
		return "redirect:/manchester/unregisterSuccess/" + idno;
	}
	
	@GetMapping("/unregisterSuccess/{idno}")
	public String unregisterSuccess(@PathVariable Integer idno, Model model){
		model.addAttribute("idno", idno);
		return "manchester/unregisterSuccess";
	}
	
}
