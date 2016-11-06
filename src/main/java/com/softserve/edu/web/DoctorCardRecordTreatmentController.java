package com.softserve.edu.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.service.CardRecordService;
import com.softserve.edu.service.CardRecordSymptomsService;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.TreatmentDrugService;
import com.softserve.edu.service.TreatmentService;
import com.softserve.edu.service.PatientService;
import com.softserve.edu.service.TreatmentTestService;



@Controller
public class DoctorCardRecordTreatmentController {
    
	Integer id = null;
	
	@Autowired
	private TreatmentService treatmentService;
	
	@Autowired
	private CardRecordService cardRecordService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private CardRecordSymptomsService cardRecordSymptomsService;
	
	@Autowired
	private TreatmentDrugService treatmentDrugService;
	
	@Autowired
	private TreatmentTestService treatmentTestService;
	
	@Autowired
	private DiseaseService diseaseService;
	
	//@RequestMapping(value = "/docTreatments", method = RequestMethod.GET)
	
	/*@RequestMapping(value = "/docRecord/{idp}", method = RequestMethod.GET)
    public String doctorTreatments(
	    @RequestParam(required = false, value = "rows") Integer rows,
	    @RequestParam(required = false, value = "page") Integer tabNumber,
	    @RequestParam(required = false, value = "sort") String order,
	    @RequestParam(required = false, value = "isSorted") Boolean isSorted,
	    @RequestParam(required = false, value = "search") String search,
	    @PathVariable int idp,
	    Model model) {
    	
    	CardRecord cardRecord = null;
	    Page<Treatment> page = null;
	    	    
		cardRecord = cardRecordService.findById(idp);
		page = treatmentService.findTreatmentsByCardRecordPages(1, 10, cardRecord);
		System.out.println(page.getContent());
	    	    	
	    int currentPage = page.getNumber() + 1;
	    int first = Math.max(1, currentPage - 3);
	    int last = Math.min(currentPage + 3, page.getTotalPages());
	    
	    Page<CardRecordSymptoms> pageSymp = cardRecordSymptomsService.findCardRecordSymptomsByCardRecordPages(1, 10, cardRecord);
	    
	    model.addAttribute("cardRecord", new CardRecord());
	    model.addAttribute("doctorTreatmentsPage", page);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("first", first);
	    model.addAttribute("last", last);
//	    model.addAttribute("username", doctor1);
	    model.addAttribute("cd", cardRecord);
	    model.addAttribute("symtoms", pageSymp);
	    
	    return "docTreatments";
    }*/
	
	@RequestMapping(value = "/docRecord/{idp}", method = RequestMethod.GET)
	
	public String doctorTrPage2	(@PathVariable(value = "idp") int idp, Model model){
		System.out.println("idp = "+idp);
		
		id = idp;
		
		model.addAttribute("idp", idp);
		
		return "docTreatments";
    }
	
	/*@RequestMapping(value = "/docRecord2/{idp}", method = RequestMethod.GET)
	@ResponseBody
	public Integer doctorTrPage3	(@PathVariable(value = "idp") int idp){
		System.out.println("idp = "+idp);
		
		//model.addAttribute("idp", idp);
		
		return idp;
    }*/
	
	
	@RequestMapping(value = "/docTreatments/Id", method = RequestMethod.GET)
	@ResponseBody
    public Map<String, Object> doctorTrPage2(){
		
		CardRecord cardRecord = cardRecordService.findById(id);
				
		List<CardRecordSymptoms> listSymp = cardRecordSymptomsService.findCardRecordSymptomsByCardRecord(cardRecord);
		
		List<Treatment> listTr = treatmentService.findTreatmentsByCardRecord(cardRecord);
		Map<Integer, List<TreatmentDrug>> drugMap = new HashMap<Integer, List<TreatmentDrug>>();
		for (Treatment tr: listTr) {
			drugMap.put(tr.getId(), treatmentDrugService.findByTreatment(tr));
		}
		
		List<Treatment> listTest = treatmentService.findTreatmentsByCardRecord(cardRecord);
		Map<Integer, List<TreatmentTest>> testMap = new HashMap<Integer, List<TreatmentTest>>();
		for (Treatment test: listTest) {
			testMap.put(test.getId(), treatmentTestService.findByTreatment(test));
		}
		
		//Page<Treatment> page = treatmentService.findTreatmentsByCardRecordPages(1, 10, cardRecord);
		
		Map<String, Object> treatmentMap = new HashMap<String, Object>();
		
		treatmentMap.put("patient", cardRecord);
		treatmentMap.put("treatments", listTr);
		treatmentMap.put("symptoms", listSymp);
		treatmentMap.put("treatmentDrug", drugMap);
		treatmentMap.put("treatmentTest", testMap);
		
		return treatmentMap;
    }
	
	@RequestMapping(value = "/docTreatments/diseases", method = RequestMethod.GET)
	@ResponseBody
    public List<Disease> diseaseList(){
		
		List<Disease> listDis = diseaseService.getAll();
						
		return listDis;
    }
	
	@RequestMapping(value = "/docSetDisease/Id", method = RequestMethod.GET)
	@ResponseBody
	public void diseaseList(@RequestParam(required = false, value = "idd") Integer idd, 
			@RequestParam(required = false, value = "idCard") Integer idCard){
		
		System.out.println("Idd= "+idd);
		
		Disease disease = diseaseService.get(idd);
		System.out.println("Idd= "+disease);
		
		CardRecord cardRecord = cardRecordService.findById(idCard);
		System.out.println("Idd5= "+idCard + cardRecord);
		cardRecord.setDisease(disease);
		
		cardRecordService.addCardRecord(cardRecord);
    }
	
	@RequestMapping(value = "/docSetTreatment/Id", method = RequestMethod.GET)
	@ResponseBody
	public void setNewTreatment(@RequestParam(required = false, value = "idCard") Integer idCard){
		
		System.out.println("idididi"+idCard);
				
		CardRecord cardRecord = cardRecordService.findById(idCard);
		List<Treatment> listTest = treatmentService.findTreatmentsByCardRecord(cardRecord);
				
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
				
		Treatment treatment = new Treatment();
		treatment.setCardRecord(cardRecord);
		treatment.setStartedDate(sqlDate);
		
		/*if (listTest.size() != 0) {
						
			Treatment treatmentPre = treatmentService.findById(idt);
			treatmentPre.setEndedDate(sqlDate);
			treatmentService.addTreatment(treatmentPre);
			
		} */
		
		boolean bl = true;
		if (listTest.size() == 0) {
			treatmentService.addTreatment(treatment);
		} else {
			for (Treatment tr : listTest) {
				if (tr.getEndedDate() == null) {
					bl = false;
				}
			}
			if (bl) {
				treatmentService.addTreatment(treatment);
			} else {
				System.out.println("close");
			}
			
		}
			
		
		
    }
	
	@RequestMapping(value = "/docCloseTreatment/Id", method = RequestMethod.GET)
	@ResponseBody
	public void closeTreatment(@RequestParam(required = false, value = "idCard") Integer idCard,
			@RequestParam(required = false, value = "idt") Integer idt){
		
		System.out.println("idididi"+idCard);
				
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
				
		Treatment treatmentPre = treatmentService.findById(idt);
		treatmentPre.setEndedDate(sqlDate);
		treatmentService.addTreatment(treatmentPre);
		
    }
	
	@RequestMapping(value = "/docCloseRecord/Id", method = RequestMethod.GET)
	@ResponseBody
	public void closeRecord(@RequestParam(required = false, value = "idCard") Integer idCard){
		
		CardRecord cardRecord = cardRecordService.findById(idCard);
		List<Treatment> listTest = treatmentService.findTreatmentsByCardRecord(cardRecord);
		
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		boolean bl = true;
		if (listTest.size() == 0) {
			bl = false;
		} else {
			for (Treatment tr : listTest) {
				if (tr.getEndedDate() == null) {
					bl = false;
				}
			}
		}
		
		System.out.println("jgnkjhfgkjh");
		
		if (bl) {
			cardRecord.setEndDate(sqlDate);
			cardRecordService.addCardRecord(cardRecord);
		}
		
    }
	
	
	
	/*@RequestMapping(value = "/docRecord23/{idp}", method = RequestMethod.GET)
	@ResponseBody
    public Page<Treatment> doctorTreat(
	    @PathVariable int idp) {
    	
    	CardRecord cardRecord = null;
	    Page<Treatment> page = null;
	    	    
		cardRecord = cardRecordService.findById(idp);
		page = treatmentService.findTreatmentsByCardRecordPages(1, 10, cardRecord);
		System.out.println(page.getContent());
	    	    	
	    int currentPage = page.getNumber() + 1;
	    int first = Math.max(1, currentPage - 3);
	    int last = Math.min(currentPage + 3, page.getTotalPages());
	    
	    Page<CardRecordSymptoms> pageSymp = cardRecordSymptomsService.findCardRecordSymptomsByCardRecordPages(1, 10, cardRecord);
	    
	    model.addAttribute("cardRecord", new CardRecord());
	    model.addAttribute("doctorTreatmentsPage", page);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("first", first);
	    model.addAttribute("last", last);
	    model.addAttribute("username", doctor1);
	    model.addAttribute("cd", cardRecord);
	    model.addAttribute("symtoms", pageSymp);
	    
	    return page;
    }
	*/
}
