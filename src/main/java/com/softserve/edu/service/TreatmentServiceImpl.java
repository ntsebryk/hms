package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.User;
import com.softserve.edu.repository.TreatmentRepository;

@Service
public class TreatmentServiceImpl implements
		TreatmentService {

	@Autowired
    private TreatmentRepository treatmentRepository;
	
	@Transactional
	public Page<Treatment> findTreatmentsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord) {
		System.out.println("findTreatmentsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord)");
		return treatmentRepository.findByCardRecord(cardRecord, new PageRequest(tabNumber - 1, rows));
	}
	
	@Transactional
	public Treatment addTreatment(Treatment treatment){
		return treatmentRepository.save(treatment);
	}
	
	@Transactional
	public List<Treatment> findTreatmentsByCardRecord(CardRecord cardRecord) {
		
		List<Treatment> a = treatmentRepository.findByCardRecord(cardRecord);
		System.out.println("findTreatmentsByCardRecord(CardRecord cardRecord)" + a);
		return a;
	}
	
	
	
	@Override
	@Transactional
	public Treatment findById(Integer id) {
		return treatmentRepository.findOne(id);
	}
	
	@Override
	@Transactional
	public List<Treatment> findActiveTreatmentByDoctor(User doctor) {
		return (List<Treatment>) treatmentRepository.findActiveTreatmentByDoctor(doctor);
	}	
}
