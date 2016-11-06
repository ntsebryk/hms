package com.softserve.edu.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.softserve.edu.entity.BodyPart;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.PatientService;

@Controller
public class PatientController {

    @Autowired
    private PatientService patientService;

    @RequestMapping("/patient")
    @ResponseBody
    public ModelAndView getCardRecordsForPage() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = patientService.getUserByLogin(auth.getName());
        Card card = patientService.getCardByPatient(user);
        List<CardRecord> listCardRec = patientService.getAllCardRecordsByCard(card);
        List<Treatment> listTr = patientService.getAllActiveTreatment(listCardRec);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("listTr", listTr);
        modelAndView.addObject("listCardRec", listCardRec);
        modelAndView.addObject("user", user);
//        modelAndView.addObject("card", card);
        return modelAndView;
    }

//    @RequestMapping(value = "/patient", method=RequestMethod.GET)
//    public String showPatient(){
//        return "patient";
//    }

    @RequestMapping("/patient/user")
    @ResponseBody
    public User getUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User userr = patientService.getUserByLogin(auth.getName());
        return userr;
    }
    
    @RequestMapping("/patient/cardrecord")
    @ResponseBody
    public List<CardRecord> getCardRecord() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User userr = patientService.getUserByLogin(auth.getName());
        Card card = patientService.getCardByPatient(userr);
        List<CardRecord> listCardRecc = patientService.getAllCardRecordsByCard(card);
        return listCardRecc;
    }
    
    @RequestMapping(value = "/patient/treatment")
    @ResponseBody
    public List<Treatment> getTreatment() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User userr = patientService.getUserByLogin(auth.getName());
        Card card = patientService.getCardByPatient(userr);
        List<CardRecord> listCardRecc = patientService.getAllCardRecordsByCard(card);
        List<Treatment> listTrr = patientService.getAllActiveTreatment(listCardRecc);
        return listTrr;
    }

//    @RequestMapping(value = "/patientsymptoms", method = RequestMethod.GET)
//    public ModelAndView getSomeCards(/*BodyPart bodyPart*/) {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        User user = patientService.getUserByLogin(auth.getName());
//        Card card = patientService.getCardByPatient(user);
//        ModelAndView modelAndView = new ModelAndView();
////      List<Symptom> listSymptomByBodyPart = patientService.getSymptomByBodyPart(bodyPart);
//        List<BodyPart> listPartOfBody = Arrays.asList(BodyPart.values());
//        List<Symptom> listAllSymptoms = patientService.getAllSymptoms();
////      List<Symptom> listSymptoms = patientService.getAllSymptomByCardRec(cardRecord);
////      modelAndView.addObject("listSymptoms", listSymptoms);
////      modelAndView.addObject("listSymptomByPartOfBody", listSymptomByBodyPart);
//        modelAndView.addObject("listPartOfBody", listPartOfBody);
//        modelAndView.addObject("listAllSymptoms", listAllSymptoms);
//        return modelAndView;
//    }
    
    @RequestMapping(value = "/patient/gettreatmentdrugs", method = RequestMethod.POST)
    @ResponseBody
    public List<TreatmentDrug> getTreatmentDrug(@RequestBody Integer id) {
        System.out.println("___________________treatmentcontroller-----------------");
        Treatment treatment = patientService.getTreatmentById(id);
        return patientService.getTreatmentDrugByTreatment(treatment);
    }
    
    @RequestMapping(value = "/patient/getcardrecordsym", method = RequestMethod.POST)
    @ResponseBody
    public List<Symptom> getCardRecordSymp(@RequestBody Integer id){
        CardRecord cardRecord = patientService.getCardRecordById(id);
        System.out.println("---------------" + cardRecord.getId() + "----------------");
        return patientService.getAllSymptomByCardRec(cardRecord);
    }
    
    @RequestMapping(value = "/patientsymptoms/getsymptomsbydisease", method = RequestMethod.POST)
    @ResponseBody
    public List<Symptom> getSymptomsByDisease(@RequestBody Integer id) {
        Disease disease = patientService.getDiseaseById(id);
        return patientService.getSymptomByDisease(disease);
    }
    
    @RequestMapping(value = "patientsymptoms/getsymptomsbybodypart", method = RequestMethod.POST)
    @ResponseBody
    public List<Symptom> getSymptomByBodyPart(@RequestBody String bodyPartString) {
        BodyPart bodyPart = BodyPart.valueOf(bodyPartString);
        return patientService.getSymptomByBodyPart(bodyPart);
    }
    
    @RequestMapping(value = "/patientsymptoms", method = RequestMethod.GET)
    public String getSomeCardss() {
        return "patientsymptoms";
    }
    
    @RequestMapping(value = "/patientsymptoms/bodyparts", method = RequestMethod.GET)
    @ResponseBody
    public BodyPart[] getPartsOfBody() {
        return BodyPart.values();
    }
    
    @RequestMapping(value = "/patientsymptoms/symptoms", method = RequestMethod.GET)
    @ResponseBody
    public List<Symptom> getAllSymptoms() {
        return patientService.getAllSymptoms();
    }
    
    @RequestMapping(value = "/patientsymptoms/getdisease", method = RequestMethod.GET)
    @ResponseBody
    public Object[][] getDisease(@RequestParam("listArray") String[] listArray) {
        System.out.println("Controller-------------------------disease");
        for(String sss: listArray) {
            System.out.println(sss);
        }
        List<Symptom> listsym = new ArrayList<Symptom>();
        boolean key = false;
        List<Disease> listdis = null;
        if (listArray != null) {
            listdis = new ArrayList<Disease>();
//            for(Symptom s : listArray) {
//                listsym.add(s);
//            }
            for(String s : listArray) {
                listsym.add(patientService.getSymptomByName(s));
            }
            for(Symptom sym : listsym) {
                List<Disease> dis = patientService.getDiseaseBySymptom(sym);
                if (listdis.isEmpty() && key == false) {
                    listdis = dis;
                    key = true;
                }
                for(int j = 0; j < listdis.size(); j++){
                    if (!(dis.contains(listdis.get(j)))) {
                        listdis.remove(j);
                    }
                }
            }            
        }
        Object[][] obj = new Object[listdis.size()][2];
        for(int i = 0; i < listdis.size(); i++) {
//          for(Disease dd: listdis) {
              int size = patientService.getSymptomByDisease(listdis.get(i)).size();
              double k = (double)(listsym.size())/size;
              obj[i][0] = listdis.get(i);
              obj[i][1] = k * 100;
//              mapdis.put(dd, k*100);
          }
        return obj;
    }

    @RequestMapping(value = "/patientsymptoms/getsymptoms", method = RequestMethod.GET)
    public String getSymptoms(@RequestParam("listArray") String[] listArray) {
        System.out.println("Controller-----------------------symptoms");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = patientService.getUserByLogin(auth.getName());
        Card card = patientService.getCardByPatient(user);
        if (listArray != null){
            for(String s : listArray) {
                System.out.println(s);
            }
            if (card == null) {
                patientService.openCard(user, 1, 1);
                card = patientService.getCardByPatient(user);
            }
            CardRecord cardRecord = new CardRecord();
            patientService.openNewCardRecord(card, cardRecord);
            for (String s : listArray) {
                Symptom symptom = null;
                try {
                    symptom = patientService.getSymptomByName(s);
                } catch(IncorrectResultSizeDataAccessException e) {
                    e.printStackTrace();
                    symptom = patientService.getSymptomById(10);
                }
                patientService.addNewSymptom(symptom, cardRecord);
            }
        }
        return "patientsymptoms";
    }
}
