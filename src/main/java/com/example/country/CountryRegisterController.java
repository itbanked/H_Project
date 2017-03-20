package com.example.country;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.service.CityRegisterService;
import com.example.form.CountryForm;

@Controller
@RequestMapping("/country")
public class CountryRegisterController {
	
	static Log log = LogFactory.getLog(CountryRegisterController.class);
	
	@Autowired
	CityRegisterService cityRegisterService;
	
	@GetMapping("/register")
	public String registerForm(CountryForm countryForm) {
		log.info("registerForm()");
		return "country/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid CountryForm countryForm, BindingResult errors) {
		log.info("register(" + countryForm + ")");
		
		System.out.println(countryForm);
		
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "country/registerForm";
		}
		
		return "redirect:/country/registerSuccess";
	}
	
	@GetMapping("/registerSuccess")
	public String registerSuccess() {
		return "country/registerSuccess";
	}
}
