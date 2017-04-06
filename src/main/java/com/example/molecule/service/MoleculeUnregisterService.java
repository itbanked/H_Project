package com.example.molecule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.City;
import com.example.domain.Country;
import com.example.mapper.CityMapper;
import com.example.mapper.CountryMapper;
import com.example.mapper.MoleculeMapper;

@Service
public class MoleculeUnregisterService {
	
	@Autowired
	MoleculeMapper moleculeMapper;
	
	public void unregister(String name) {

		moleculeMapper.deleteByName(name);
		
	}

}
