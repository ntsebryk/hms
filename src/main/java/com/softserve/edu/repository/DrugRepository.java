package com.softserve.edu.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.softserve.edu.entity.Drug;

public interface DrugRepository extends JpaRepository<Drug, Integer> {
	  
	  List<Drug> findByNameLike(String searchTerm);
	  
	  List<Drug> findByName(String drugName);
}