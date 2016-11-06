package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Laboratory;
import com.softserve.edu.entity.LaboratoryTest;

public interface LaboratoryTestRepository extends
		JpaRepository<LaboratoryTest, Integer> {
	
}
