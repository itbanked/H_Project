package com.example.dnltime.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.form.DnlForm;
import com.example.form.DnltimeForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DnltimeRegisterServiceTests {

	@Autowired
	DnltimeSearchService dnltimeSearchService;
	
	@Autowired
	DnltimeRegisterService dnltimeRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirm(){
		System.out.println("dnltimeRegisterService = " + dnltimeRegisterService);
		System.out.println("dnltimeSearchService = " + dnltimeSearchService);
		System.out.println("Validator = " + validator);
	}
	
	@Test
	public void test01_register() throws ParseException{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		Date leave = format.parse("2017-03-23 18:00:00");
		
		DnltimeForm dnltimeForm = new DnltimeForm();
		dnltimeForm.setAttend(new Date());
		dnltimeForm.setLeave(leave);
		dnltimeForm.setDnlCode(00);
		dnltimeForm.setMembersrl(6);
		
		BindingResult errors = new BeanPropertyBindingResult(dnltimeForm, "dnltimeForm");
		
		validator.validate(dnltimeForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors = " + errors);
			return;
		}
		
		dnltimeRegisterService.register(dnltimeForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors = " + errors);
			return;
		}
		System.out.println("dnltime = " + dnltimeSearchService.getDnltimeByDnlno(dnltimeForm.getDnlno()));
	}
}
