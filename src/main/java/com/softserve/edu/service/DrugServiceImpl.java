package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.repository.DrugRepository;

@Service
public class DrugServiceImpl implements DrugService{
	
	@Autowired
	DrugRepository drugRepository;
	
	@Override
	public Long count() {		
		return drugRepository.count();
	}
	
	@Override
	@Transactional
	public Drug addDrug(Drug drug) {
		return (Drug) drugRepository.save(drug);
	}

	@Override
	@Transactional
	public Drug updateDrug(Drug newDrug) {
		Drug oldDrug = drugRepository.findOne(newDrug.getId());
		
        if (oldDrug == null) {
            //throw new DrugNotFoundException();
        }
        
        oldDrug.setDrug(newDrug);
				
		return oldDrug;
	}

	@Override
	@Transactional
	public Drug deleteDrug(Drug drug) {		
		Drug delDrug = drugRepository.findOne(drug.getId());
		
        if (delDrug == null) {
            //throw new DrugNotFoundException();
        }
         
        drugRepository.delete(delDrug);
        return delDrug;		
	}	
	
	@Override
	@Transactional
	public Drug findDrugById(Integer drugId) {
		return drugRepository.findOne(drugId);
	}
	
	@Override
	public Drug getDrugById(Integer drugId) {
		return null;
	}	
			
	@Override
	@Transactional
	public List<Drug> findAllDrugs() {
		Sort sort = new Sort(Sort.Direction.ASC, "name");
		return (List<Drug>) drugRepository.findAll(sort);
	}
	
	@Override
	public List<Drug> findByName(String name) {
		return (List<Drug>) drugRepository.findByName(name);
	}	

	@Override
	@Transactional
	public List<Drug> findByNameLike(String searchTerm) {
		return (List<Drug>) drugRepository.findByNameLike(searchTerm);
	}

	@Override
	@Transactional
	public List<Drug> getDrugByName(String name) {
		return null;
	}

	@Override
	public List<Drug> getTablePage(Integer pageNumber, Integer itemsPerPage) {		
		Pageable pageRequest = new PageRequest(pageNumber, itemsPerPage, new Sort(Sort.Direction.ASC, "name"));
		Page<Drug> requestedPage = drugRepository.findAll(pageRequest);
		
		return requestedPage.getContent();
	}

	@Override
	public Page<Drug> getPage(Integer pageNumber, Integer itemsPerPage) {	
		Pageable pageRequest = new PageRequest(pageNumber, itemsPerPage, new Sort(Sort.Direction.ASC, "name"));
		Page<Drug> requestedPage = drugRepository.findAll(pageRequest);

		return requestedPage;
	}
}
