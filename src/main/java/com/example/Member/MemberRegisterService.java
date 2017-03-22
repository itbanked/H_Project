package com.example.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.City;
import com.example.domain.Country;
import com.example.domain.Member;
import com.example.form.MemberForm;
import com.example.mapper.CityMapper;
import com.example.mapper.CountryMapper;
import com.example.mapper.MemberMapper;

@Service
public class MemberRegisterService {
	
	@Autowired
	MemberMapper memberMapper;
	
	public void register( Member member, BindingResult errors ) {
		if ( member.getMembersrl() != null ) {
			Member validate = memberMapper.selectByMembersrl( member.getMembersrl() );
			if ( validate == null ) {
				errors.reject("Invalid Member Serial", "유효한 회원이 존재하지 않습니다.");
			}
		}
		
		if ( !errors.hasErrors() ) {
			memberMapper.insert(member);
		}
	}
	

}
