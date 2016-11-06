package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.repository.TreatmentTestRepository;

@Service
public class TreatmentTestServiceImpl implements TreatmentTestService {

	@Autowired
	private TreatmentTestRepository treatmentTestRepository;
	
	@Transactional
	public List<TreatmentTest> findByTreatment(Treatment treatment) {
		return treatmentTestRepository.findByTreatment(treatment);
	}

}
