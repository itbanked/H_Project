package com.example.molecule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.City;
import com.example.domain.Country;
import com.example.domain.Molecule;
import com.example.mapper.CityMapper;
import com.example.mapper.CountryMapper;
import com.example.mapper.MoleculeMapper;

@Service
public class MoleculeModifyService {
	
	@Autowired
	MoleculeMapper moleculeMapper;
	
//	@Autowired
//	CountryMapper countryMapper;
	
	public void modify(Molecule molecule, BindingResult errors) {

		if (molecule.getName() != null) {
			Molecule m = moleculeMapper.selectByName(molecule.getName());
			if (m == null)
				errors.reject("InvalidMoleculeName", "유효한 Name 이 아닙니다..");
		}
		
		if (!errors.hasErrors())
			moleculeMapper.updateByName(molecule);
		
	}

}
