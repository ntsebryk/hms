package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Drug;


public interface DrugService {
    
    boolean addDrug(Drug drug);

    boolean updateDrug(Drug drug);
    
    boolean deleteDrug(Drug drug);
       
    Drug getDrugById(Integer drugId);
    
    List<Drug> getAllDrugs();
    
    List<Drug> getDrugByName(String name);
    
    List<Drug> orderDrugByName();
    
    
    // useless:
    Drug find(String drugName);
    
    List<String> getNameList();
}








