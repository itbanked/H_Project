package com.example.molecule;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.service.CitySearchService;
import com.example.domain.Acidity;
import com.example.domain.City;
import com.example.domain.Molecule;
import com.example.domain.State;
import com.example.domain.Warning;
import com.example.exception.NotFoundRuntimeException;
import com.example.molecule.service.MoleculeSearchService;

@Controller
@RequestMapping("/molecule")
public class MoleculeSearchController {
	
	static Log log = LogFactory.getLog(MoleculeSearchController.class);
	@Autowired
	MoleculeSearchService moleculeSearchService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		
		
		List<Molecule> list = moleculeSearchService.getList(true);
		model.addAttribute("molecules", list);
		log.info("getList()");
		
		return "molecule/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model) {
		log.info("getPage(" + pageNo + ")");
		
		Map<String, Object> page = moleculeSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "molecule/page";
	}
	
	@GetMapping("/item/{chemicalFormula}")
	public String getItemById(@PathVariable String chemicalFormula, Model model) {
		log.info("getItem("+ chemicalFormula + ")");
		
		Molecule molecule = moleculeSearchService.getMoleculeByFormula(chemicalFormula, true);
		model.addAttribute("molecule", molecule);
		
		return "molecule/item";
	}
	
	@GetMapping("/melting/{averageMeltingPoint}")
	public String getAverageMeltingPoint(@PathVariable Double averageMeltingPoint, Model model) {
		log.info("getItem("+ averageMeltingPoint + ")");
		
		Molecule molecule = moleculeSearchService.getMoleculeByAverageMeltingPoint(averageMeltingPoint);
		State state=moleculeSearchService.getByState(averageMeltingPoint);
		model.addAttribute("molecule", molecule);
		model.addAttribute("state",state);
		return "molecule/melting";
		
	}
	
	@GetMapping("/hazard/{hazardStatements}")
	public String getWarning(@PathVariable String hazardStatements, Model model) {
		log.info("getItem("+ hazardStatements + ")");
		Warning warning = moleculeSearchService.getDescriptionByHazardStatements(hazardStatements);
		model.addAttribute("warning", warning);
		
		return "molecule/hazard";
		
	}
	
	@GetMapping("/acidity/{acidity}")
	public String getAcidity(@PathVariable Double acidity, Model model) {
		log.info("getItem("+ acidity + ")");
		Acidity acidity1 = moleculeSearchService.getByAcidity(acidity);
		Molecule molecule = moleculeSearchService.getMoleculeByAcidity(acidity);
		model.addAttribute("acidity", acidity1);
		model.addAttribute("molecule", molecule);
		
		return "molecule/acidity";
		
	}

}
