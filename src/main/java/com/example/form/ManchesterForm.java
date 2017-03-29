package com.example.form;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.domain.Manchester;

public class ManchesterForm extends Manchester {

	public void setManchester(Manchester manchester){
		super.setIdno(manchester.getIdno());
		super.setTeam(manchester.getTeam());
	}
	
	@NotNull
	@Size(max=10)
	@Override
	public String getTeam() {
		// TODO Auto-generated method stub
		return super.getTeam();
	}

	@Override
	public void setTeam(String team) {
		if(team.equals(""))
			team=null;
		super.setTeam(team);
	}

}
