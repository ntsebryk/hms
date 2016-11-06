package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.TreatmentDrug;

public interface TreatmentGeneratorService {
	
	public void generate(Disease disease, Card card, String[] symptomNames);
	
	public List<TreatmentDrug> fakeGenerate(Disease disease);
	
}
