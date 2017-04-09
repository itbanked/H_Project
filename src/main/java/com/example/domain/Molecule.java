package com.example.domain;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Molecule {
	
	private String name; 
	private String chemicalFormula;
	private Double density;
	private Double averageMeltingPoint;
	private Double solubilityInWater;
	private Double acidity;
	private String hazardStatements;
	private String note;
	private Mass mass;
	private Warning warning;
	
	
	public Warning getWarning() {
		return warning;
	}


	public void setWarning(Warning warning) {
		this.warning = warning;
	}


	@Override
	public String toString() {
		String str= null;
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return str;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getChemicalFormula() {
		return chemicalFormula;
	}


	public void setChemicalFormula(String chemicalFormula) {
		this.chemicalFormula = chemicalFormula;
		System.err.println("---------------------------------" + this.chemicalFormula);
	}


	public Double getDensity() {
		return density;
	}


	public void setDensity(Double density) {
		this.density = density;
	}


	public Double getAverageMeltingPoint() {
		return averageMeltingPoint;
	}


	public void setAverageMeltingPoint(Double averageMeltingPoint) {
		this.averageMeltingPoint = averageMeltingPoint;
	}


	public Double getSolubilityInWater() {
		return solubilityInWater;
	}


	public void setSolubilityInWater(Double solubilityInWater) {
		this.solubilityInWater = solubilityInWater;
	}


	public Double getAcidity() {
		return acidity;
	}


	public void setAcidity(Double acidity) {
		this.acidity = acidity;
	}


	public String getHazardStatements() {
		return hazardStatements;
	}


	public void setHazardStatements(String hazardStatements) {
		if ( hazardStatements != null ) {
			this.hazardStatements = hazardStatements;
		}
		else {
			this.hazardStatements = "";
		}
		
	}


	public String getNote() {
	
		return note;
	}


	public void setNote(String note) {
		if (note.equals(""))
			this.note = null;
		else
			this.note = note;
		
	}


	public Mass getMass() {
		return mass;
	}


	public void setMass(Mass mass) {
		this.mass = mass;
	}



	
	

}
