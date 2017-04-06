package com.example.molecule;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.service.CityRegisterService;
import com.example.city.service.CitySearchService;
import com.example.domain.City;
import com.example.domain.Molecule;
import com.example.exception.NotFoundRuntimeException;
import com.example.form.CityForm;
import com.example.form.MoleculeForm;
import com.example.molecule.service.MoleculeRegisterService;
import com.example.molecule.service.MoleculeSearchService;

@Controller
@RequestMapping("/molecule")
public class MoleculeRegisterController {
	
	static Log log =LogFactory.getLog(MoleculeRegisterController.class);
	@Autowired
	MoleculeSearchService moleculeSearchService;
	
	@Autowired
	MoleculeRegisterService moleculeRegisterService;
	
	@GetMapping("/register")
	public String registerform(MoleculeForm moleculeForm){
		
		log.info("registerForm()");
		return "molecule/registerForm";
	}

	@PostMapping("/register")
	public String register(@Valid MoleculeForm moleculeForm, BindingResult errors){
			//log.info("register(" + moleculeForm + ")");
			System.out.println(moleculeForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "molecule/registerForm";
		}
		
		moleculeRegisterService.register(moleculeForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "molecule/moleculeForm";
		}
		
		
		return "redirect:/molecule/registerSuccess/" + moleculeForm.getName();
	}
	
	@GetMapping("/registerSuccess/{name}")
	public String registerSuccess(@PathVariable String name, Model model){
		Molecule molecule=moleculeSearchService.getMoleculeByName(name);
		model.addAttribute("molecule",molecule);
		
		return "molecule/registerSuccess";
		
	}
}
