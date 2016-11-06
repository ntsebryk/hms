package com.softserve.edu.web;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Laboratory;
import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.TestCategory;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.service.LaboratoryService;

@Controller
public class LaboratoryController {

	@Autowired
	private LaboratoryService lService;

	@RequestMapping(value = "/laboratory")
	public String showLaboratory() {
		return "laboratory";
	}

	@RequestMapping(value = "/getTests/{category}", method = RequestMethod.GET)
	public @ResponseBody List<Test> getTestsByCategory(
			@PathVariable("category") TestCategory category) {
		System.out.println(category);
		List<Test> tl = lService.findAllTestsForCategory(category);
		return tl;
	}

	@RequestMapping(value = "/getAllTests", method = RequestMethod.GET)
	public @ResponseBody List<Test> getAllTests() {
		List<Test> tl = lService.getAllTestsSortedByName();
		return tl;
	}
	
	@RequestMapping(value = "/getAllLabs", method = RequestMethod.GET)
	public @ResponseBody List<Laboratory> getAllLabs() {
		List<Laboratory> labList = lService.getAllLaboratoriesSortedByName();
		return labList;
	}

	@RequestMapping(value = "/getLabsForTest/{idTest}", method = RequestMethod.GET)
	public @ResponseBody List<Laboratory> getLabsForTest(
			@PathVariable("idTest") Integer testId) {
		List<Laboratory> ll = lService.getLabsForTest(testId);
		System.out.println(ll.toString());
		return ll;
	}
	
	@RequestMapping(value = "/getNewAppointments", method = RequestMethod.GET)
	public @ResponseBody List<TreatmentTest> getNewAppointments() {
		return lService.getNewAppointments();
	}
	
	@RequestMapping(value = "/getNewAppointmentsCount", method = RequestMethod.GET)
	public @ResponseBody Integer getNewAppointmentsCount() {
		return lService.getNewAppointmentsCount();
		
	}
	
	@RequestMapping(value = "/getPendingTests", method = RequestMethod.GET)
	public @ResponseBody List<TreatmentTest> getReservedTests() {
		return lService.getReservedTests();
	}
	
	@RequestMapping(value = "/getPendingTestsCount", method = RequestMethod.GET)
	public @ResponseBody Integer getReservedTestsCount() {
		return lService.getReservedTestsCount();
	}
	
	@RequestMapping(value = "/getDoneTests", method = RequestMethod.GET)
	public @ResponseBody List<TreatmentTest> getDoneTests() {
		return lService.getDoneTests();
	}
	
	@RequestMapping(value = "/getDoneTestsCount", method = RequestMethod.GET)
	public @ResponseBody Integer getDoneTestsCount() {
		return lService.getDoneTestsCount();
	}
	
	@RequestMapping(value = "/getFinisedResultTests", method = RequestMethod.GET)
	public @ResponseBody List<TreatmentTest> getRsultedTests() {
		return lService.getResultedTests();
	}	
	
	@RequestMapping(value = "/getFinisedResultTestsCount", method = RequestMethod.GET)
	public @ResponseBody Integer getFinisedResultTestsCount() {
		return lService.getFinisedResultTestsCount();
	}

	@RequestMapping(value = "/setSelectedTest", method = RequestMethod.POST)
	@ResponseBody
	public void addTestForUser(
			@RequestParam("labId") Integer labId,
			@RequestParam("testId") Integer testId) {
		lService.addTreatmentTest(testId, labId);
	}
	
	@RequestMapping(value = "/setSelectedTests", method = RequestMethod.POST)
	@ResponseBody
	public void addTestsForUser(@RequestBody ArrayList<HashMap<String,Object>> selectedTests) {
		lService.addTreatmentTests(selectedTests);
	}
}
