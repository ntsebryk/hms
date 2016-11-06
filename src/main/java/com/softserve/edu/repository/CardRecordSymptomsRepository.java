package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;

public interface CardRecordSymptomsRepository extends JpaRepository<CardRecordSymptoms, Integer> {

    Page<CardRecordSymptoms> findByCardRecord(CardRecord cardRecord, Pageable pageable);
    
    List<CardRecordSymptoms> findByCardRecord(CardRecord cardRecord);

}
