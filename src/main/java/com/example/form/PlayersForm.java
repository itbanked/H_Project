package com.example.form;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

import com.example.domain.Players;

public class PlayersForm extends Players{

	public void setPlayers(Players players){
		super.setIdno(players.getIdno());
		super.setMemberno(players.getMemberno());
		super.setBacknumber(players.getBacknumber());
		super.setPosition(players.getPosition());
		super.setName(players.getName());
		super.setNationality(players.getNationality());
		super.setDateofjoin(players.getDateofjoin());
	}

	@NotNull
	@Range(min=1, max=999)
	@Override
	public Integer getIdno() {
		// TODO Auto-generated method stub
		return super.getIdno();
	}
	
	@Override
	public void setIdno(Integer idno) {
		// TODO Auto-generated method stub
		super.setIdno(idno);
	}

	@NotNull
	@Range(min=1, max=9999)
	@Override
	public Integer getMemberno() {
		// TODO Auto-generated method stub
		return super.getMemberno();
	}

	@Override
	public void setMemberno(Integer memberno) {
		// TODO Auto-generated method stub
		super.setMemberno(memberno);
	}

	@Range(min=1, max=99)
	@Override
	public Integer getBacknumber() {
		// TODO Auto-generated method stub
		return super.getBacknumber();
	}

	@Override
	public void setBacknumber(Integer backnumber) {
		// TODO Auto-generated method stub
		super.setBacknumber(backnumber);
	}

	@NotNull
	@Size(max=20)
	@Override
	public String getPosition() {
		// TODO Auto-generated method stub
		return super.getPosition();
	}

	@Override
	public void setPosition(String position) {
		if (position.equals("")) position = null;
		super.setPosition(position);
	}

	@NotNull
	@Size(max=25)
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return super.getName();
	}

	@Override
	public void setName(String name) {
		if (name.equals("")) name = null;
		super.setName(name);
	}
	@NotNull
	@Size(max=15)
	@Override
	public String getNationality() {
		// TODO Auto-generated method stub
		return super.getNationality();
	}

	@Override
	public void setNationality(String nationality) {
		if (nationality.equals("")) nationality = null;
		super.setNationality(nationality);
	}

	@NotNull
	@Override
	public Date getDateofjoin() {
		// TODO Auto-generated method stub
		return super.getDateofjoin();
	}

	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Override
	public void setDateofjoin(Date dateofjoin) {
		// TODO Auto-generated method stub
		super.setDateofjoin(dateofjoin);
	}

}
