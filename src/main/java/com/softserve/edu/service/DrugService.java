package com.softserve.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.softserve.edu.entity.Drug;

public interface DrugService {
    
	Long count();
	
    Drug addDrug(Drug drug);

    Drug updateDrug(Drug drug);
    
    Drug deleteDrug(Drug drug);
       
    Drug findDrugById(Integer drugId);
    
    Drug getDrugById(Integer drugId);
    
    List<Drug> findAllDrugs();
    
    List<Drug> findByName(String name);    
    
    List<Drug> findByNameLike(String searchTerm);
    
    List<Drug> getDrugByName(String name);

	List<Drug> getTablePage(Integer pageNumber, Integer itemsPerPage);
	
	Page<Drug> getPage(Integer pageNumber, Integer itemsPerPage);
    
}
