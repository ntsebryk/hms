package com.softserve.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;

public interface CardRecordSymptomsService {
    
	Page<CardRecordSymptoms> findCardRecordSymptomsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord);
	
	List<CardRecordSymptoms> findCardRecordSymptomsByCardRecord(CardRecord cardRecord);
	
	CardRecordSymptoms addCardRecordSymptoms(CardRecordSymptoms cardRecordSymptoms);
}
