package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Laboratory;

public interface LaboratoryRepository extends JpaRepository<Laboratory, Integer> {

	@Query("SELECT lt.laboratory FROM LaboratoryTest lt WHERE lt.test.id = ?1 ORDER BY lt.laboratory.name")
	List<Laboratory> getLabsForTest(Integer testId);

	@Query("SELECT l FROM Laboratory l ORDER BY l.name")
	List<Laboratory> getLabs();

}
