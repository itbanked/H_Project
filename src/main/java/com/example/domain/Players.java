package com.example.domain;

import java.util.Date;

public class Players {
	
	private Integer idno;
	private Integer memberno;
	private Integer backnumber;
	private String position;
	private String name;
	private String nationality;
	private Date dateofjoin;
	
	private Manchester manchester;
	
	public Manchester getManchester() {
		return manchester;
	}
	public void setManchester(Manchester manchester) {
		this.manchester = manchester;
	}
	public Integer getIdno() {
		return idno;
	}
	public void setIdno(Integer idno) {
		this.idno = idno;
	}
	public Integer getMemberno() {
		return memberno;
	}
	public void setMemberno(Integer memberno) {
		this.memberno = memberno;
	}
	public Integer getBacknumber() {
		return backnumber;
	}
	public void setBacknumber(Integer backnumber) {
		this.backnumber = backnumber;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public Date getDateofjoin() {
		return dateofjoin;
	}
	public void setDateofjoin(Date dateofjoin) {
		this.dateofjoin = dateofjoin;
	}
	
}
