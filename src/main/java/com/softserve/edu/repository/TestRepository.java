package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.TestCategory;

public interface TestRepository extends JpaRepository<Test, Integer> {
	
	@Query("SELECT t FROM Test t WHERE t.testCategory = ?1 ORDER BY t.name")
	public List<Test> findAllTestsForCategory(TestCategory category);
	
	@Query("SELECT t FROM Test t ORDER BY t.name")
	public List<Test> findAllTestsSortedByName();
	
	List<Test> findByTestCategory(TestCategory testCategory);

}
