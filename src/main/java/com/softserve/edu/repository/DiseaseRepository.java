package com.softserve.edu.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.softserve.edu.entity.Disease;

public interface DiseaseRepository extends CrudRepository<Disease, Serializable> {

	List<Disease> findByNameContaining(String name);
	
}
