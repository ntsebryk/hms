package com.softserve.edu.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Page;

import com.softserve.edu.entity.Laboratory;
import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.TestCategory;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.entity.User;


public interface LaboratoryService {
	
	public User getUserById (Integer Id);
	
	public List<Test> getAllTestsSortedByName();
	
	public Test getTestById(Integer id);
	
	public List<Test> findAllTestsForCategory(TestCategory category);
	
	public Laboratory getLabById(Integer id);
	
	public List<Laboratory> getLabsForTest(Integer testId);
	
	public List<Laboratory> getLabs();
	
	public void addTreatmentTest(Integer testId, Integer labId);
	
	public List<TreatmentTest> getNewAppointments();
	
	public List<TreatmentTest> getReservedTests();

	public List<TreatmentTest> getDoneTests();

	public List<TreatmentTest> getResultedTests();

	public Integer getNewAppointmentsCount();

	public Integer getReservedTestsCount();

	public Integer getDoneTestsCount();

	public Integer getFinisedResultTestsCount();

	public void addTreatmentTests(ArrayList<HashMap<String, Object>> selectedTests);

	public List<Laboratory> getAllLaboratoriesSortedByName();
	
	
	Page<TreatmentTest> getTestsPage(Integer pageNumber, Integer itemsPerPage);
	
	List<Test> findTestsByTestCategory(TestCategory testCategory);
	
	void addTests(Treatment treatment, List<Test> tests, Date appointmentDate);	
	
}
