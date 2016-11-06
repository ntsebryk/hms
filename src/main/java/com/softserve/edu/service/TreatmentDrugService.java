package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;

public interface TreatmentDrugService {
	
	public TreatmentDrug addTreatmentDrug(TreatmentDrug treatmentDrug);
	
	public List<TreatmentDrug> findByTreatment(Treatment treatment);
}
