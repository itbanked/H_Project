package com.example.dnltime;

import java.text.ParseException;
import java.util.Date;
import java.util.Map;

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

import com.example.city.CityRegisterController;
import com.example.dnltime.service.DnltimeRegisterService;
import com.example.dnltime.service.DnltimeSearchService;
import com.example.domain.Dnltime;
import com.example.form.DnltimeForm;
import com.example.util.Pagination;

@Controller
@RequestMapping("/dnltime")
public class DnltimeRegisterController {
	
	static Log log = LogFactory.getLog(CityRegisterController.class);
	
	@Autowired
	DnltimeSearchService dnltimeSearchService;
	
	@Autowired
	DnltimeRegisterService dnltimeRegisterService;
	
//	@GetMapping("/register")
//	public String registerForm(DnltimeForm dnltimeForm) {
//		log.info("registerForm()");	
//		return "dnltime/registerForm";
//	}
//	
//	@PostMapping("/register")
//	public String register(@Valid DnltimeForm dnltimeForm, BindingResult errors) {
//		log.info("register(" + dnltimeForm + ")");
//		
//		System.out.println(dnltimeForm);
//		
//		
//		// Validate
//		if ( errors.hasErrors() ) {
//			System.out.println(errors);
//			return "dnltime/registerForm";
//		}
//		
//		// Register
//		dnltimeRegisterService.register(dnltimeForm, errors);
//		if ( errors.hasErrors() ) {
//			System.out.println(errors);
//			return "dnltime/registerForm";
//		}
//		
//		return "redirect:/dnltime/registerSuccess/" + dnltimeForm.getDnlno();
//	}
//
//	@GetMapping("/registerSuccess/{dnlno}")
//	public String registerSuccess(@PathVariable int dnlno, Model model) {
//		Dnltime dnltime = dnltimeSearchService.getDnltimeByDnlno(dnlno);
//		model.addAttribute("Dnltime", dnltime);
//		return "dnltime/registerSuccess";
//	}
	
	@GetMapping("/registerAttend/{pageNo}")
	public String registerSuccess(@PathVariable int pageNo, Dnltime dnltime, BindingResult errors) throws ParseException {
		
		dnltimeRegisterService.registerAttend(dnltime, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dnltime/registerForm";
		}		
		
		return "redirect:/dnltime/page/" + pageNo;
	}
}
