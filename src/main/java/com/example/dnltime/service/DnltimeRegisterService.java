package com.example.dnltime.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dnltime;
import com.example.mapper.DnlMapper;
import com.example.mapper.DnltimeMapper;

@Service
public class DnltimeRegisterService {

	@Autowired
	DnltimeMapper dnltimeMapper;
	
	@Autowired
	DnlMapper dnlmapper;
	
	public void register(Dnltime dnltime, BindingResult errors){
		
		if(dnltime.getDnlCode() != 0 ){
			Dnltime DnltimeCode = dnltimeMapper.selectByDnlno(dnltime.getDnlCode());
			
			if(DnltimeCode==null)
				errors.reject("InvalidDnltimeDnlcode", "dnl테이블에 존재하지 않는 dnl code입니다.");
		}
		
		if(!errors.hasErrors())
			dnltimeMapper.insert(dnltime);
	}
}

