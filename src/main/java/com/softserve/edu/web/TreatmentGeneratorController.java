package com.softserve.edu.web;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.CardService;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.PatientService;
import com.softserve.edu.service.TreatmentGeneratorService;
import com.softserve.edu.service.UserService;

@Controller
public class TreatmentGeneratorController {

	@Autowired
	UserService userService;

	@Autowired
	CardService cardService;

	@Autowired
	TreatmentGeneratorService treatmentGeneratorService;

	@Autowired
	DiseaseService diseaseService;

	@Autowired
	PatientService patientService;

	@RequestMapping(value = "/savetreatment")
	public String saveTreatment(
			@RequestParam(required = true, value = "diseaseId") Integer id,
			@RequestParam(required = true, value = "symptomNames") String[] symptomNames) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		User user = patientService.getUserByLogin(auth.getName());

		System.out.print(cardService.findCardByPatient(user));
		Card card = cardService.findCardByPatient(user);
//		int r = new Random().nextInt(120);
//		System.out.println(r);
		Disease disease = diseaseService.get(id);	
		treatmentGeneratorService.generate(disease, card, symptomNames);

		return "redirect:/patient";
	}

	@RequestMapping(value = "/generatetreatment")
	@ResponseBody
	public Object generateTreatment(
			@RequestParam(required = true, value = "diseaseId") Integer id) {

		// int r = new Random().nextInt(120);
		// System.out.println(r);
		Disease disease = diseaseService.get(id);

		return treatmentGeneratorService.fakeGenerate(disease);
	}
}
