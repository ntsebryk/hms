package com.softserve.edu.service;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.softserve.edu.entity.Laboratory;
import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.TestCategory;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.entity.User;
import com.softserve.edu.repository.LaboratoryRepository;
import com.softserve.edu.repository.TestRepository;
import com.softserve.edu.repository.TreatmentTestRepository;
import com.softserve.edu.repository.UserRepository;

@Service
public class LaboratoryServiceImpl implements LaboratoryService {
	
	@Autowired
	private LaboratoryRepository lRepo;
	
	@Autowired
	private TestRepository tRepo;
	
	@Autowired
	private TreatmentTestRepository ttRepo;
	
	@Autowired
	private UserRepository uRepo;
	

	@Override
	public List<Test> findAllTestsForCategory(TestCategory category) {
		return tRepo.findAllTestsForCategory(category);
	}

	@Override
	public List<Laboratory> getLabsForTest(Integer testId) {
		return lRepo.getLabsForTest(testId);
	}

	@Override
	public List<Laboratory> getLabs() {
		return lRepo.getLabs();
	}

	@Override
	public List<Test> getAllTestsSortedByName() {
		return tRepo.findAllTestsSortedByName();
	}

	@Override
	public Test getTestById(Integer id) {
		return tRepo.findOne(id);
	}

	@Override
	public Laboratory getLabById(Integer id) {
		return lRepo.findOne(id);
	}

	@Override
	public User getUserById(Integer id) {
		return uRepo.findOne(id);
	}
	
	@Override
	public List<TreatmentTest> getNewAppointments() {
		List<TreatmentTest> ttList = ttRepo.getNewAppointment(getCurrentUserId());
		for (TreatmentTest tt : ttList) {
			tt.setAvalLabs(lRepo.getLabsForTest(tt.getTest().getId()));
		}
		return ttList;
		
		
	}

	@Override
	public List<TreatmentTest> getReservedTests() {
		return ttRepo.getReservedTest(getCurrentUserId());
	}

	@Override
	public List<TreatmentTest> getDoneTests() {
		return ttRepo.getDoneTests(getCurrentUserId());
	}

	@Override
	public List<TreatmentTest> getResultedTests() {
		return ttRepo.getResultedTests(getCurrentUserId());
	}

	@Override
	public Integer getNewAppointmentsCount() {
		return ttRepo.getNewAppointmentsCount(getCurrentUserId());
	}

	@Override
	public Integer getReservedTestsCount() {
		return ttRepo.getReservedTestsCount(getCurrentUserId());
	}

	@Override
	public Integer getDoneTestsCount() {
		return ttRepo.getDoneTestsCount(getCurrentUserId());
	}

	@Override
	public Integer getFinisedResultTestsCount() {
		return ttRepo.getFinisedResultTestsCount(getCurrentUserId());
	}
	
	Integer getCurrentUserId() {
		String login = SecurityContextHolder.getContext().getAuthentication().getName();
		User user = uRepo.findByLogin(login);
		return user.getId();
	}

	

	@Override
	public void addTreatmentTest(Integer testId, Integer labId) {
		Test test = tRepo.findOne(testId);
		Laboratory laboratory = lRepo.findOne(labId);
		String login = SecurityContextHolder.getContext().getAuthentication().getName();
		User user = uRepo.findByLogin(login);
		TreatmentTest tt = new TreatmentTest(user, test, laboratory);
		ttRepo.save(tt);
	}

	
	@Override
	public void addTreatmentTests(ArrayList<HashMap<String, Object>> selectedTests) {
		for(Map<String, Object> selected : selectedTests){
			
			Test test = tRepo.findOne((Integer) selected.get("testId"));
			Laboratory laboratory = lRepo.findOne((Integer) selected.get("labId"));
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date utilDate = null;
			try {
				utilDate = sdf.parse((String) selected.get("date"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
	        Date date = new Date(utilDate.getTime());
		
			String login = SecurityContextHolder.getContext().getAuthentication().getName();
			User user = uRepo.findByLogin(login);
			TreatmentTest tt = ttRepo.findByUserAndTest(user, test, date);
			tt.setLaboratory(laboratory);
			ttRepo.save(tt);
		}
	}

	@Override
	public List<Laboratory> getAllLaboratoriesSortedByName() {
		return lRepo.getLabs();
	}
	
	
	
	
	
	@Override
	public Page<TreatmentTest> getTestsPage(Integer pageNumber, Integer itemsPerPage) {
		Pageable pageRequest = new PageRequest(pageNumber, itemsPerPage, new Sort(Sort.Direction.DESC, "appointmentDate"));
		Page<TreatmentTest> requestedPage = ttRepo.findAll(pageRequest);

		return requestedPage;
	}

	@Override
	public List<Test> findTestsByTestCategory(TestCategory testCategory) {		
		return tRepo.findByTestCategory(testCategory);
	}
	
	@Override
	public void addTests(Treatment treatment, List<Test> tests, Date appointmentDate) {
		//if: 
		for(Test test : tests) {
			TreatmentTest treatmentTest = new TreatmentTest();
			treatmentTest.setTreatment(treatment);
			treatmentTest.setTest(test);
		    treatmentTest.setAppointmentDate(appointmentDate);			
			ttRepo.save(treatmentTest);
		}
	}	
	
}
