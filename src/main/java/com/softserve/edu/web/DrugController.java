package com.softserve.edu.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.DrugCategory;
import com.softserve.edu.service.DrugService;
import com.softserve.edu.service.LaboratoryService;

@Controller
public class DrugController {

	@Autowired
	DrugService drugService;
	
	@Autowired
	LaboratoryService labService;

	@RequestMapping("drugs")
	public String drugsPage() {				
		return "drugs";
	}
	
	@RequestMapping("drugs/getpage")
	public @ResponseBody Page<Drug> drugsPage2(@RequestParam Integer pageNumber, @RequestParam Integer itemsPerPage) {
		Page<Drug> drugPage = drugService.getPage(pageNumber, itemsPerPage);

		return drugPage;
	}
	
	@RequestMapping("drugs/getcategories")
	public @ResponseBody List<String> getDrugCategories() {
		List<String> categories = new ArrayList<>();		
		for(DrugCategory category : DrugCategory.values()) {
			categories.add(category.name());
		}
				
		return categories;		
	}
	
	@RequestMapping(value = "drugs/add", method = RequestMethod.POST)
	public @ResponseBody String addNewDrug(@RequestBody Drug drug) {
		String msg;
		
		System.out.println("---> try to add new drug: " + drug);
		
		if(drugService.findByName(drug.getName()).isEmpty()) {
			Drug newdrug = drugService.addDrug(drug);
			System.out.println("---> new drug " + newdrug.toString());
			msg = "{\"msg\" : \"success\"}";
		} else {
			System.out.println("---> such drug exists ");
			msg = "{\"msg\" : \"fail\"}";
		}
		
		List<Drug> drugs = drugService.findAllDrugs();
		System.out.println("---> drug: " + !drugs.isEmpty());		
				
		return msg;
	}
	
	@RequestMapping(value = "drugs/update", method=RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE )
	public @ResponseBody String updateDrug(@RequestBody Drug drug) {
		System.out.println("---> " + drug);
		
		return null;
	}	

	
	
	
	
	
	
	
	
	@RequestMapping(value = "drugs/add2", method = RequestMethod.POST)	
	public @ResponseBody String add2(@RequestBody Drug drug){
		if(drugService.findByName(drug.getName()).isEmpty()) {
			Drug newdrug = drugService.addDrug(drug);
			System.out.println("---> new drug " + newdrug.toString());
		} else {
			System.out.println("---> such drug exists ");
		}
		
		List<Drug> drugs = drugService.findAllDrugs();
		System.out.println("---> drug: " + !drugs.isEmpty());
		return null;
	}
			
	@RequestMapping(value = "drugs/search", method = RequestMethod.GET)
	public @ResponseBody List<Drug> getDrugsByCriteria(@RequestParam(value="criteria") String criteriaString) throws Exception {
		System.out.println("--> .getDrugsByCriteria(...):");
		List<Drug> drugs = null;
		
		if(criteriaString==""){drugs = drugService.findAllDrugs();}
		else { drugs = drugService.findByNameLike(criteriaString); }
				
		return drugs;
	}
	
	

	

	
	
	
	

	
	
	
}
