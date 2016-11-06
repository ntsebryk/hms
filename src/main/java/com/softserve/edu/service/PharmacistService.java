package com.softserve.edu.service;

import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Prescription;
import com.softserve.edu.entity.PrescriptionState;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.util.TreatmentDrugFormatter;

public interface PharmacistService {
    
    public Page<Prescription> getPageOfPrescriptions(PrescriptionState prescriptionState, Pageable pageable);
    
    public List<TreatmentDrug> getListOfDrugsByPrescription(Integer id);
    
    public Page<UserRole> getListOfUsersByRole(String userName, Role userRole, Pageable pageable);
    
    public Page<Prescription> getFilteredPageOfPrescriptions(String fullName, Role role, Pageable pageable);
    
    public void giveOutSelectedDrugs(TreatmentDrugFormatter treatmentDrugFormatter);
    
    public void giveOutPrescription(Integer id);
}
