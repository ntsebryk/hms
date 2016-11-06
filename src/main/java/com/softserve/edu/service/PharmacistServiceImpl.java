package com.softserve.edu.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.xml.crypto.dsig.keyinfo.PGPData;

import org.hibernate.criterion.Order;
import org.hibernate.loader.custom.Return;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import static org.springframework.data.domain.Sort.*;

import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Prescription;
import com.softserve.edu.entity.PrescriptionState;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.TreatmentDrugState;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.repository.PharmacistRepository;
import com.softserve.edu.repository.TreatmentDrugRepository;
import com.softserve.edu.repository.UserRoleRepository;
import com.softserve.edu.util.TreatmentDrugFormatter;

@Service
public class PharmacistServiceImpl implements PharmacistService {
    
    @Autowired
    private UserRoleRepository userRoleRepository;
    
    @Autowired
    private TreatmentDrugRepository treatmentDrugRepository;
    
    @Autowired
    private PharmacistRepository pharmacistRepository;
    
    // Method creates page with specified parameters
    @Transactional
    public Page<Prescription> getPageOfPrescriptions(PrescriptionState prescriptionState, Pageable pageable) {
        
        Page<Prescription> prescriptions = pharmacistRepository.findAllByPrescriptionState(prescriptionState, pageable);
        
        return prescriptions;
    }
    
    // Method returns list of user's full name by passed role (patient or
    // doctor)
    @Transactional
    public Page<UserRole> getListOfUsersByRole(String userName, Role userRole, Pageable pageable) {
        
        userName = "%" + userName + "%";
        Page<UserRole> listUsersByRole = userRoleRepository.getUsersByRole(userName, userRole, pageable);
        
        return listUsersByRole;
    }
    
    // Method returns list of prescription by selected patient or doctor
    @Transactional
    public Page<Prescription> getFilteredPageOfPrescriptions(String fullName, Role role, Pageable pageable) {
        
        Page<Prescription> filteredListOfPrescriptions = null;
        
        if (role.equals(Role.ROLE_PATIENT)) {
            filteredListOfPrescriptions = pharmacistRepository.getFilteredPrescriptionsByPatient(fullName, pageable);
        } else {
            filteredListOfPrescriptions = pharmacistRepository.getFilteredPrescriptionsByDoctor(fullName, pageable);
        }
        
        return filteredListOfPrescriptions;
    }
    
    // Method return list of drugs by selected prescription
    @Transactional
    public List<TreatmentDrug> getListOfDrugsByPrescription(Integer id) {
        return treatmentDrugRepository.getTreatmentDrugByTreatmentId(id);
    }
    
    // Method changes prescription state to "delivered"
    @Transactional(rollbackFor = Exception.class)
    public void giveOutSelectedDrugs(TreatmentDrugFormatter treatmentDrugFormatter) {
        
        Integer currentPrescription = treatmentDrugFormatter.getPrescriptionId();
        Integer currentTreatment = treatmentDrugFormatter.getTreatmentId();
        List<Integer> selectedDrugs = treatmentDrugFormatter.getListDrugs();
        
        List<TreatmentDrug> treatmentDrugs = treatmentDrugRepository.findTreatmentDrugByTreatmentIdAndDrugIdIn(currentTreatment, selectedDrugs);
        
        for (TreatmentDrug currentTreatmentDrug : treatmentDrugs) {
            currentTreatmentDrug.setDrugState(TreatmentDrugState.GIVEDOUT);
            currentTreatmentDrug.setCheckOutDate(new Date(Calendar.getInstance().getTimeInMillis()));
            treatmentDrugRepository.save(currentTreatmentDrug);
        }
        
        Integer quantityOfUngivedoutDrugsInPrescription = treatmentDrugRepository.countUngivedDrugsInPrescription(currentTreatment);
        
        if(quantityOfUngivedoutDrugsInPrescription == 0) {
            Prescription prescription = pharmacistRepository.findOne(currentPrescription);
            prescription.setPrescriptionState(PrescriptionState.DELIVERED);
            prescription.setCheckOutDate(new Date(Calendar.getInstance().getTimeInMillis()));
            pharmacistRepository.save(prescription);
        }
    }
    
    // Method changes prescription state to "delivered"
    @Transactional(rollbackFor = Exception.class)
    public void giveOutPrescription(Integer id) {
        Prescription currentPrescription = pharmacistRepository.findOne(id);
        currentPrescription.setPrescriptionState(PrescriptionState.DELIVERED);
        currentPrescription.setCheckOutDate(new Date(new java.util.Date().getTime()));
        pharmacistRepository.save(currentPrescription);
    }
    
}
