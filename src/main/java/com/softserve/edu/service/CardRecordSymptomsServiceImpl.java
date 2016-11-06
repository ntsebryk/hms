package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;
import com.softserve.edu.repository.CardRecordSymptomsRepository;

@Service
public class CardRecordSymptomsServiceImpl implements CardRecordSymptomsService {

	@Autowired
	private CardRecordSymptomsRepository cardRecordSymptomsRepository;
	
	@Transactional
	public Page<CardRecordSymptoms> findCardRecordSymptomsByCardRecordPages(
			Integer tabNumber, Integer rows, CardRecord cardRecord) {
		
		return cardRecordSymptomsRepository.findByCardRecord(cardRecord, new PageRequest(tabNumber - 1, rows)) ;
	}
	
	@Transactional
	public List<CardRecordSymptoms> findCardRecordSymptomsByCardRecord(CardRecord cardRecord){
		return cardRecordSymptomsRepository.findByCardRecord(cardRecord) ;
	}
	
	@Transactional
	public CardRecordSymptoms addCardRecordSymptoms(CardRecordSymptoms cardRecordSymptoms){
		return cardRecordSymptomsRepository.save(cardRecordSymptoms);
	}

}
