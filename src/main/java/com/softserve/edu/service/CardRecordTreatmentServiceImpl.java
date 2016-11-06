package com.softserve.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.CardRecord;

@Service
public class CardRecordTreatmentServiceImpl implements
		CardRecordTreatmentService {

//	@Autowired
//    private CardRecordTreatmentRepository cardRecordTreatmentRepository;
	
//	@Transactional
//	public Page<CardRecordTreatment> findCardRecordTreatmentsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord) {
//		System.out.println("findCardRecordTreatmentsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord)");
//		return cardRecordTreatmentRepository.findByCardRecord(cardRecord, new PageRequest(tabNumber - 1, rows));
//	}
}
