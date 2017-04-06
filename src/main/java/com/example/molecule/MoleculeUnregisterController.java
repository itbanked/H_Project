package com.example.molecule;

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

import com.example.city.service.CityModifyService;
import com.example.city.service.CityRegisterService;
import com.example.city.service.CitySearchService;
import com.example.city.service.CityUnregisterService;
import com.example.domain.City;
import com.example.domain.Molecule;
import com.example.form.CityForm;
import com.example.molecule.service.MoleculeSearchService;
import com.example.molecule.service.MoleculeUnregisterService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/molecule")
public class MoleculeUnregisterController {

	static Log log = LogFactory.getLog(MoleculeUnregisterController.class);
	
	@Autowired
	MoleculeSearchService moleculeSearchService;

	@Autowired
	MoleculeUnregisterService moleculeUnregisterService;

	@GetMapping("/unregister/{name}")
	public String unregisterForm(@PathVariable String name, Model model) {
		log.info("unregisterForm(" + name + ")");
		Molecule molecule = moleculeSearchService.getMoleculeByName(name);
		model.addAttribute("molecule", molecule);
		
		return "molecule/unregisterForm";
	}
	
	@PostMapping("/unregister/{name}")
	public String modify(@PathVariable String name,Integer pageNo) {
		log.info("modify(" +name+")");

		moleculeUnregisterService.unregister(name);
		
		return "redirect:/molecule/unregisterSuccess/" + name + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/unregisterSuccess/{name}")
	public String modifySucess(@PathVariable String name, Model model) {
		model.addAttribute("name", name);
		return "molecule/unregisterSuccess";
	}

	
	
}




