package com.softserve.edu.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.service.DiseaseDrugService;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.DrugService;

@Controller
public class DiseaseDrugController {

	@Autowired
	private DiseaseDrugService diseaseDrugService;

	@Autowired
	private DiseaseService diseaseServie;

	@Autowired
	private DrugService drugService;

//	@RequestMapping("/diseasedrug/{diseaseId}")
//	public String getDiseaseDrugs(@PathVariable("diseaseId") Integer id,
//			Map<String, Object> map) {
//		// fillingDBService.fillDataFromScript("C:/Users/DaNiEJIb/workspace1/Hospital/target/Hospital/WEB-INF/classes/sqlScripts/fillDB.sql");
//		map.put("diseaseDrug", new DiseaseDrug());
//		map.put("diseaseDrugList",
//				diseaseDrugService.getAllDrugsForDisease(diseaseServie.get(id)));
//		map.put("drug", new Drug());
//		map.put("drugList", drugService.findAllDrugs());
//		map.put("disease", diseaseServie.get(id));
//		return "diseasedrug";
//	}
//
//	@RequestMapping("/diseasedrug/delete/{diseaseDrugId}")
//	public String deleteContact(
//			@PathVariable("diseaseDrugId") Integer diseaseDrugId) {
//		DiseaseDrug diseaseDrug = diseaseDrugService
//				.getDiseaseDrugById(diseaseDrugId);
//		diseaseDrugService.deleteDiseaseDrug(diseaseDrug);
//		return "redirect:/diseasedrug";
//	}
//
//	@RequestMapping(value = "/getDrugsForDisease", method = RequestMethod.GET)
//	public @ResponseBody Object getDiseaseDrugInJSON(
//			@RequestParam(required = true, value = "diseaseId") Integer id,
//			@RequestParam(required = false, value = "order") String order,
//			@RequestParam(required = false, value = "search") String search) {
//		List<DiseaseDrug> list = null;
//
//		Disease disease = diseaseServie.get(id);
//
//		if (!search.equals("")) {
//			list = diseaseDrugService.getAllDrugsForDiseaseByName(disease,
//					'%' + search + '%');
//
//		} else if (!order.equals("")) {
//			list = diseaseDrugService.getAllDrugsForDiseaseOrderByName(disease,
//					order);
//		} else {
//			list = diseaseDrugService.getAllDrugsForDisease(disease);
//		}
//
//		return list;
//	}

	@RequestMapping(value = "/deleteselecteddrug", method = RequestMethod.DELETE, produces = "application/json")
	@ResponseBody
	public Boolean deleteSelected(@RequestBody Integer[] list) {
		System.out.println(list);

		for (Integer i : list) {
			System.out.println(i);
			diseaseDrugService.deleteDiseaseDrug(diseaseDrugService
					.getDiseaseDrugById(i));
		}
		return true;
	}

	@RequestMapping(value = "/adddrug", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public Boolean addDrug(@RequestBody Map<String, Integer> map) {

		DiseaseDrug dd = new DiseaseDrug();
		dd.setDisease(diseaseServie.get(map.get("diseaseId")));
		dd.setDrug(drugService.findDrugById(map.get("drugId")));
		dd.setDrugEfficiencyRatio(map.get("dEfficiency"));
		dd.setDrugAmount(map.get("dAmount"));
		diseaseDrugService.addDiseaseDrug(dd);

		return true;
	}

	@RequestMapping("/diseasedrug/{diseaseId}")
	public String getDiseaseDrugsAngular(@PathVariable("diseaseId") Integer id,
			Map<String, Object> map) {
		map.put("disease", diseaseServie.get(id));
		return "diseasedrug";
	}

	@RequestMapping(value = "/getDrugsForDisease", method = RequestMethod.GET)
	public @ResponseBody Object getDiseaseDrugInJSONA(
			@RequestParam(required = true, value = "diseaseId") Integer id) {
		List<DiseaseDrug> list = null;

		Disease disease = diseaseServie.get(id);
		list = diseaseDrugService.getAllDrugsForDisease(disease);
		return list;
	}

	@RequestMapping(value = "/getAllDrugs", method = RequestMethod.GET)
	public @ResponseBody Object getAllDrugs() {
		List<Drug> list = drugService.findAllDrugs();
		return list;
	}

}
