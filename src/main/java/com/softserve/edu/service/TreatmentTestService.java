package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;

public interface TreatmentTestService {
	
	public List<TreatmentTest> findByTreatment(Treatment treatment);

}
