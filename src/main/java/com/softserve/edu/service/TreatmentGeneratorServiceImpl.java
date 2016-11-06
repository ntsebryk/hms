package com.softserve.edu.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;

@Service
public class TreatmentGeneratorServiceImpl implements TreatmentGeneratorService {
	
	/**
	 * The value of one day in long data type
	 */
	private final static long DAY = 1000L * 60 * 60 * 24;
	
	/**
	 * The bound of efficiency, in percents.
	 * This value means rational bound of drugs quantity, for treatment.
	 */
	private final static int EFFICIENCY_BOUND = 150;
	
	/**
	 * The bound of hazard, in percents.
	 * This value means safe bound of drugs quantity.
	 */
	private final static int HAZARD_BOUND = 100;

	private int efficiencyRatio = 0;
	private int hazardRatio = 0;
	private int dayAmount = 0;

	private List<DiseaseDrug> list = new ArrayList<DiseaseDrug>();
	private CardRecord cardRecord = new CardRecord();
	private Treatment treatment = new Treatment();

	private Date startDate = new Date(new java.util.Date().getTime());
		
	@Autowired
	DiseaseDrugService diseaseDrugService;

	@Autowired
	CardService cardService;

	@Autowired
	CardRecordService cardRecordService;

	@Autowired
	TreatmentService treatmentService;

	@Autowired
	TreatmentDrugService treatmentDrugService;
	
	@Autowired
	SymptomService symptomService;
	
	@Autowired
	CardRecordSymptomsService cardRecordSymptomsService;
	
	private List<DiseaseDrug> getListOfDiseases(Disease disease){
		return diseaseDrugService.getAllDrugsForDiseaseOrderByDrugEfficiencyRatio(disease,"DESC");
	}
	
	private List<DiseaseDrug> getSortedListOfDiseases(List<DiseaseDrug> list){
		int efficiencyRatio = 0;
		int hazardRatio = 0;
		
		List<DiseaseDrug> sortedList = new ArrayList<DiseaseDrug>();
		for (DiseaseDrug dd : list) {
			efficiencyRatio = dd.getDrugEfficiencyRatio();
			hazardRatio = dd.getDrug().getHazardRatio();

			if (efficiencyRatio > EFFICIENCY_BOUND && hazardRatio > HAZARD_BOUND) {
				break;
			}
			sortedList.add(dd);
		}
		return sortedList;
	}
	
	private int getTreatmentLength(List<DiseaseDrug> list){
		int dayAmount = 0;
		for (DiseaseDrug dd : list) {
			int days = getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage());
			dayAmount = days > dayAmount ? days : dayAmount;
		}
		return dayAmount;
		
	}
	
	private List<TreatmentDrug> generateTreatmentDrug(List<DiseaseDrug> list){
		List<TreatmentDrug> treatList = new ArrayList<TreatmentDrug>();
		for (DiseaseDrug dd : list) {
			TreatmentDrug td = new TreatmentDrug();
			td.setDrug(dd.getDrug());
			
			//Generate Description for TreatmentDrug
			String s = String
					.format("Take %d pills per day, during %d days",
							dd.getDrug().getDosage(),
							getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage()));
			td.setDescription(s);
			treatList.add(td);	
		}
		return treatList;
		
	}
	
	@Transactional
	public List<TreatmentDrug> fakegenerate(Disease disease, Card card, String[] symptomNames) {	
		
		
		List<TreatmentDrug> treatList = new ArrayList<TreatmentDrug>();
		List<DiseaseDrug> diseaseDrugList = new ArrayList<DiseaseDrug>();
		
		diseaseDrugList = getListOfDiseases(disease);
		diseaseDrugList = getSortedListOfDiseases(diseaseDrugList);
		dayAmount = getTreatmentLength(diseaseDrugList);
		treatList = generateTreatmentDrug(diseaseDrugList);
		
		return treatList;
	}

	public List<TreatmentDrug> fakeGenerate(Disease disease){
	int efficiencyRatio = 0;
	int hazardRatio = 0;
	int dayAmount = 0;
	List<TreatmentDrug> treatList = new ArrayList<TreatmentDrug>();
	List<DiseaseDrug> sortedList = new ArrayList<DiseaseDrug>();


	// Getting list for Disease
	List<DiseaseDrug> list = diseaseDrugService
			.getAllDrugsForDiseaseOrderByDrugEfficiencyRatio(disease,"DESC");

	// Creating list which meets conditions
	for (DiseaseDrug dd : list) {
		efficiencyRatio = dd.getDrugEfficiencyRatio();
		hazardRatio = dd.getDrug().getHazardRatio();

		if (efficiencyRatio > EFFICIENCY_BOUND && hazardRatio > HAZARD_BOUND) {
			break;
		}
		sortedList.add(dd);
	}

	// This's here only for prevent wrong results
	if (list.size() < 1) {
		System.out.println("There no drugs for this Disease. I'm sorry =(");
		return treatList;
	}

	// Getting Treatment and CardRecord length
	for (DiseaseDrug dd : sortedList) {
		int days = getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage());
		dayAmount = days > dayAmount ? days : dayAmount;
	}


	// Generate Treatment drug
	for (DiseaseDrug dd : sortedList) {
		TreatmentDrug td = new TreatmentDrug();
		td.setDrug(dd.getDrug());

		//Generate Description for TreatmentDrug
		String s = String
				.format("Take %d pills per day, during %d days",
						dd.getDrug().getDosage(),
						getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage()));
		td.setDescription(s);
		treatList.add(td);
	}

	return treatList;
}


	
	
	

	@Transactional
	public void generate(Disease disease, Card card, String[] symptomNames) {
		int efficiencyRatio = 0;
		int hazardRatio = 0;
		int dayAmount = 0;

		List<DiseaseDrug> sortedList = new ArrayList<DiseaseDrug>();
		CardRecord cardRecord = new CardRecord();
		Treatment treatment = new Treatment();

		// Getting list for Disease
		List<DiseaseDrug> list = diseaseDrugService
				.getAllDrugsForDiseaseOrderByDrugEfficiencyRatio(disease,"DESC");

		// Creating list which meets conditions
		for (DiseaseDrug dd : list) {
			efficiencyRatio = dd.getDrugEfficiencyRatio();
			hazardRatio = dd.getDrug().getHazardRatio();

			if (efficiencyRatio > EFFICIENCY_BOUND && hazardRatio > HAZARD_BOUND) {
				break;
			}
			sortedList.add(dd);
		}

		// This's here only for prevent wrong results
		if (list.size() < 1) {
			System.out.println("There no drugs for this Disease. I'm sorry =(");
			return;
		}

		// Getting Treatment and CardRecord length
		for (DiseaseDrug dd : sortedList) {
			int days = getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage());
			dayAmount = days > dayAmount ? days : dayAmount;
		}

		// Creating CardRecord
		Date startDate = new Date(new java.util.Date().getTime());
		Date endDate = new Date(startDate.getTime() + (DAY * dayAmount));

		cardRecord.setCard(card);
		cardRecord.setDisease(disease);
		cardRecord.setStartDate(startDate);
		//cardRecord.setEndDate(endDate);
		cardRecord.setIsDoctorNeeded(false);

		cardRecord = cardRecordService.addCardRecord(cardRecord);

		//Adding CardRecordSymptoms
		for(String name : symptomNames){
			System.out.println(name);
			Symptom symptom = symptomService.findSymptomByName(name);
			CardRecordSymptoms crSymptoms = new CardRecordSymptoms();
			crSymptoms.setCardRecord(cardRecord);
			crSymptoms.setSymptom(symptom);
			crSymptoms.setAddedDate(startDate);
			cardRecordSymptomsService.addCardRecordSymptoms(crSymptoms);
		}


		// Creating Treatment
		treatment.setCardRecord(cardRecord);
		treatment.setStartedDate(startDate);
		//treatment.setEndedDate(endDate);

		treatment = treatmentService.addTreatment(treatment);

		// Generate Treatment drug
		for (DiseaseDrug dd : sortedList) {
			TreatmentDrug td = new TreatmentDrug();
			td.setTreatment(treatment);
			td.setDrug(dd.getDrug());

			//Generate Description for TreatmentDrug
			String s = String
					.format("Take %d pills per day, during %d days",
							dd.getDrug().getDosage(),
							getDaysAmount(dd.getDrugAmount(), dd.getDrug().getDosage()));
			td.setDescription(s);
			treatmentDrugService.addTreatmentDrug(td);
		}
	}
	
	
	
	
	
	
	

	//method finds how many days you need for this amount of pills with appropriate dosage.
	public int getDaysAmount(int amount, int dosage) {
		int mod = amount % dosage;
		int div = amount / dosage;
		return mod == 0 ? div : div + 1;
	}
}
