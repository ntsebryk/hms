package com.softserve.edu.util;

import java.util.List;

import com.softserve.edu.entity.TreatmentDrug;

public class TreatmentGeneratorDTO {
	private Integer dayAmount;
	
	private List<TreatmentDrug> treatmentList;
	
	public TreatmentGeneratorDTO() {};

	public TreatmentGeneratorDTO(Integer dayAmount,
			List<TreatmentDrug> treatmentList) {
		super();
		this.dayAmount = dayAmount;
		this.treatmentList = treatmentList;
	}

	public Integer getDayAmount() {
		return dayAmount;
	}

	public void setDayAmount(Integer dayAmount) {
		this.dayAmount = dayAmount;
	}

	public List<TreatmentDrug> getTreatmentList() {
		return treatmentList;
	}

	public void setTreatmentList(List<TreatmentDrug> treatmentList) {
		this.treatmentList = treatmentList;
	}

}
