package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.repository.TreatmentDrugRepository;

@Service
public class TreatmentDrugServiceImpl implements TreatmentDrugService{
	
	@Autowired
	private TreatmentDrugRepository treatmentDrugRepository;
	
	@Transactional
	public TreatmentDrug addTreatmentDrug(TreatmentDrug treatmentDrug){
		return treatmentDrugRepository.save(treatmentDrug);
	}
	
	@Transactional
	public List<TreatmentDrug> findByTreatment(Treatment treatment){
		return treatmentDrugRepository.findByTreatment(treatment);
	}

}
