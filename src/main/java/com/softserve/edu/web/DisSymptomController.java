package com.softserve.edu.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.service.DisSympService;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.SymptomService;
import com.softserve.edu.util.SelectedSymptomsToDisease;

@Controller
public class DisSymptomController {

	@Autowired
	private DisSympService disSymptomService;

	@Autowired
	private SymptomService symptomService;

	@Autowired
	private DiseaseService diseaseService;

	@RequestMapping(value = "/deleteDisSympt", method = RequestMethod.DELETE)
	@ResponseBody
	public Boolean deleteArray(
			@RequestParam(value = "selectedIds") Integer[] listId,
			@RequestParam(value = "diseaseId") Integer diseaseId) {
		System.out.println(listId.toString());
		for (int symptomId : listId) {
			disSymptomService.deleteDiseaseSymptom(disSymptomService
					.getDiseaseSymptomByIdDiseaseAndIdSymptom(diseaseId,
							symptomId));
		}
		return true;
	}

	@RequestMapping(value = "/disSymptoms/{diseaseId}", method = RequestMethod.GET)
	public String showDisease(Model model, @PathVariable("diseaseId") Integer id) {
		System.out.println(id);
		model.addAttribute("disease", diseaseService.get(id));
		return "disSymptoms";

	}

	@RequestMapping(value = "getSymptoms/{diseaseId}", method = RequestMethod.GET)
	public @ResponseBody List<Symptom> getSymptomsInJSON(
			@PathVariable("diseaseId") Integer id) {

		return symptomService.findDistinctSymptFordisease(id);
	}

	@RequestMapping(value = "getDiseaseSymptoms/{diseaseId}", method = RequestMethod.GET)
	public @ResponseBody List<Symptom> getDiseaseSymptoms(
			@PathVariable("diseaseId") Integer id) {
		return symptomService.findSymptomsByDisease(id);
	}

	@RequestMapping(value = "addDisSympt", method = RequestMethod.POST)
	public String addDisSympt(@RequestBody SelectedSymptomsToDisease selected) {

		for (int symptomId : selected.getSelectedIds()) {
			disSymptomService.addDiseaseSymptom(new DiseaseSymptom(
					diseaseService.get(selected.getDiseaseId()), symptomService
							.findSymptomById(symptomId)));
		}
		return "disSymptoms";
	}

}
