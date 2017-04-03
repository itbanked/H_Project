package com.example.dnltime.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
	
	public void registerAttend(Dnltime dnltime, BindingResult errors) throws ParseException{
	
		
		Date today = new Date();
		dnltime.setAttend(today);	
		dnltime.setDnlCode(00);
		dnltime.setMembersrl(6);
		
		if(dnltime.getDnlCode() != 0 ){
			Dnltime DnltimeCode = dnltimeMapper.selectByDnlno(dnltime.getDnlCode());
			
			if(DnltimeCode==null)
				errors.reject("InvalidDnltimeDnlcode", "dnl테이블에 존재하지 않는 dnl code입니다.");
		}
		
		if(!errors.hasErrors())
			dnltimeMapper.insert(dnltime);
	}
	
}

