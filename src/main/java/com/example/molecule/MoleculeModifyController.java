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
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.service.CityModifyService;
import com.example.city.service.CitySearchService;
import com.example.domain.City;
import com.example.domain.Molecule;
import com.example.form.CityForm;
import com.example.form.MoleculeForm;
import com.example.molecule.service.MoleculeModifyService;
import com.example.molecule.service.MoleculeSearchService;

@Controller
@RequestMapping("/molecule")
public class MoleculeModifyController {
	
	static Log log = LogFactory.getLog(MoleculeModifyController.class);
	@Autowired
	MoleculeSearchService moleculeSearchService;
	
	@Autowired
	MoleculeModifyService moleculeModifyService;
	
	@GetMapping("/modify/{name}")		//양식을 받고(forward)
	public String modifyForm(MoleculeForm moleculeForm, @PathVariable String name) {
		log.info("modifyForm(" + name + ")");
		Molecule molecule = moleculeSearchService.getMoleculeByName(name);
		moleculeForm.setMolecule(molecule);
		moleculeForm.setChemicalFormula(molecule.getChemicalFormula());
		System.out.println("Current Mole : " + moleculeForm);
		
		return "molecule/modifyForm";
	}
	
	@PostMapping("/modify")		//제출~DB동작까지
	public String modify(@Valid MoleculeForm moleculeForm, BindingResult errors, Integer pageNo) {
		log.info("modify(" + moleculeForm + ")");
		System.out.println(moleculeForm);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			return "molecule/modifyForm";
		}
		moleculeModifyService.modify(moleculeForm, errors);
		if (errors.hasErrors()) {
			System.out.println(errors);
			return "molecule/modifyForm";		//error가 있으면 빠꾸! forward
		}
		
		return "redirect:/molecule/modifySuccess/" + moleculeForm.getName() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/modifySuccess/{name}")
	public String modifySuccess(@PathVariable String name, Model model) {
		Molecule molecule = moleculeSearchService.getMoleculeByName(name);
		model.addAttribute("molecule", molecule);
		return "molecule/modifySuccess";
	}
	
}
