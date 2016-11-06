package com.softserve.edu.web;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.DrugCategory;
import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.TestCategory;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.LaboratoryService;
import com.softserve.edu.service.PatientService;
import com.softserve.edu.service.TreatmentService;

@Controller
public class TestsController {
	
	@Autowired
	private LaboratoryService labService;
	
	@Autowired
	private TreatmentService treatmentService;
	
    @Autowired
    private PatientService patientService;	
		
	@RequestMapping("tests")
	public String testsPage() {						
		return "tests";
	}
	
	@RequestMapping("tests/getpage")
	public @ResponseBody Page<TreatmentTest> getTestsTablePage(@RequestParam Integer pageNumber, @RequestParam Integer itemsPerPage) {		
		return labService.getTestsPage(pageNumber, itemsPerPage);
	}
	
	@RequestMapping("tests/getcategories")
	public @ResponseBody Map<TestCategory, List<Test>> getTestCategories() {	
		Map<TestCategory, List<Test>> map = new HashMap<>();	
		
		for(TestCategory testCategory : TestCategory.values()) {
			List<Test> tests = labService.findTestsByTestCategory(testCategory);
			map.put(testCategory, tests);
		}
		
		return map;
	}
	
	@RequestMapping("tests/gettreatments")
	public @ResponseBody List<Treatment> getTreatments() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = patientService.getUserByLogin(auth.getName());	        
        List<Treatment> treatments = (List<Treatment>) treatmentService.findActiveTreatmentByDoctor(user);
		
		return treatments;
	}
	
	@RequestMapping(value = "tests/appoint/{idTreatment}", method = RequestMethod.POST)
	public @ResponseBody String setTests(@PathVariable Integer idTreatment, @RequestBody List<Test> appTests){
		Treatment treatment = treatmentService.findById(idTreatment);	
		java.sql.Date today = new java.sql.Date(Calendar.getInstance().getTime().getTime());			
		labService.addTests(treatment, appTests, today);
		
		return "{\"msg\" : \"OK!\"}";
	}
}
