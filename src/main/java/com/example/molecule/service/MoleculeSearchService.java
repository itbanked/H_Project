package com.example.molecule.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Acidity;
import com.example.domain.City;
import com.example.domain.Mass;
import com.example.domain.Molecule;
import com.example.domain.State;
import com.example.domain.Warning;
import com.example.mapper.CityMapper;
import com.example.mapper.MoleculeMapper;
import com.example.util.Pagination;

@Service
public class MoleculeSearchService {
	static Log log = LogFactory.getLog(MoleculeSearchService.class);
	
	@Autowired
	MoleculeMapper moleculeMapper;
	
	public List<Molecule> getList() {
		log.info("getList()");
		return getList(false);
	}
	
	public List<Molecule> getList(boolean withMass) {
		log.info("getList(" + withMass + ")");
		List<Molecule> list=null;
		if (withMass)
			list = moleculeMapper.selectAllWithMass();		    
		else
			list = moleculeMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo) {
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean withMass) {
		Pagination paging = new Pagination();
		paging.setTotalItem(moleculeMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Molecule> list=null;
		if (withMass)
			list = moleculeMapper.selectPageWithMass(paging);
		else
			list = moleculeMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("molecules", list);
		map.put("paging", paging);
		
		return map;	
	}
	
	
	public Molecule getMoleculeByFormula(String chemicalFormula) {
		log.info("getMoleculeByFormula(" + chemicalFormula + ")");
		return getMoleculeByFormula(chemicalFormula, false);
	}
	public Molecule getMoleculeByFormula(String chemicalFormula, boolean withMass) {
		log.info("getMoleculeByFormula(" + chemicalFormula + ", " + withMass + ")");
		Molecule molecule=null;
		if (withMass)
			molecule = moleculeMapper.selectByFormulaWithMass(chemicalFormula);
		else
			molecule = moleculeMapper.selectByFormula(chemicalFormula);
		
		return molecule;
	}
	
	public Molecule getMoleculeByName(String name) {
		log.info("getMoleculeByName(" + name + ")");
		Molecule molecule=null;
		molecule = moleculeMapper.selectByName(name);
		return molecule;
	}
	
	public Molecule getMoleculeByAverageMeltingPoint(Double averageMeltingPoint) {
		log.info("getMoleculeByAverageMeltingPoint(" + averageMeltingPoint + ")");
		Molecule molecule=null;
		molecule = moleculeMapper.selectByAverageMeltingPoint(averageMeltingPoint);
		return molecule;
	}
	
	public State getByState(Double averageMeltingPoint) {
	

		State state=null;
		String s=null;

	
		if(averageMeltingPoint>25.01){
		 s="solid";
		 state = moleculeMapper.selectByState(s);
		 
		}

		else if (averageMeltingPoint<=25.01){
			    if(averageMeltingPoint>10){
			    	s="liquid";
			    	state=moleculeMapper.selectByState(s);
			    }
			    else{
			    	s="gas";
			    	state=moleculeMapper.selectByState(s);
			    }
			
		}
		
		return state;
	}
	
	
	public Warning getDescriptionByHazardStatements(String hazardStatements) {
		log.info("getMoleculeByName(" + hazardStatements + ")");
		Warning warning=null;
		warning = moleculeMapper.selectByhazardStatements(hazardStatements);
		return warning;
	}
	
	
	
	public Acidity getByAcidity(Double acidity) {	

		Acidity acidity1=null;
		String a=null;

	
		if(acidity>14){
		 a="basic";
		 acidity1 = moleculeMapper.selectByPka(a);
		 
		}

		else if (acidity<=14){
			    if(acidity==14){
			    	a="neutral";
			    	acidity1=moleculeMapper.selectByPka(a);
			    }
			    else{
			    	a="acidic";
			    	acidity1=moleculeMapper.selectByPka(a);
			    }
			
		}
		
		return acidity1;
	}
	
	
	public Molecule getMoleculeByAcidity(Double acidity) {
		log.info("getMoleculeByName(" + acidity + ")");
		Molecule molecule=null;
		molecule = moleculeMapper.selectByAcidity(acidity);
		return molecule;
	}
	
	
}
