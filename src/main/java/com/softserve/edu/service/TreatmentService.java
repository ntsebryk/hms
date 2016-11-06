package com.softserve.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.User;

public interface TreatmentService {
	
    public Page<Treatment> findTreatmentsByCardRecordPages(Integer tabNumber, Integer rows, CardRecord cardRecord);
    
    public Treatment addTreatment(Treatment treatment);
    
    public List<Treatment> findTreatmentsByCardRecord(CardRecord cardRecord);
    
    public Treatment findById(Integer id);

	List<Treatment> findActiveTreatmentByDoctor(User doctor);    

}
