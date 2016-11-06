package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.User;

public interface TreatmentRepository extends JpaRepository<Treatment, Integer> {

    List<Treatment> findByCardRecord(CardRecord cardRecord);

    Page<Treatment> findByCardRecord(CardRecord cardRecord, Pageable pageable);
    
    @Query("SELECT treat FROM Treatment treat WHERE treat.cardRecord.doctor = ?1 AND treat.endedDate = NULL")
    List<Treatment> findActiveTreatmentByDoctor(User doctor);
}
