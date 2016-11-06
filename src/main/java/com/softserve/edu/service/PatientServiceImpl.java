package com.softserve.edu.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.BodyPart;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.CardRecordSymptoms;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;
import com.softserve.edu.repository.CardRecordRepository;
import com.softserve.edu.repository.CardRecordSymptomsRepository;
import com.softserve.edu.repository.CardRepository;
import com.softserve.edu.repository.DisSympRepository;
import com.softserve.edu.repository.DiseaseRepository;
import com.softserve.edu.repository.SymptomRepository;
import com.softserve.edu.repository.TreatmentDrugRepository;
import com.softserve.edu.repository.TreatmentRepository;
import com.softserve.edu.repository.UserRepository;

@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CardRepository cardRepo;

    @Autowired
    private CardRecordRepository cardRecRep;

    @Autowired
    private CardRecordSymptomsRepository cardRecSympRep;

    @Autowired
    private TreatmentRepository treatmentRepo;

    @Autowired
    private SymptomRepository symptomRepo;
    
    @Autowired
    private DisSympRepository disymrepo;
    
    @Autowired
    private TreatmentDrugRepository trDrRepo;
    
    @Autowired
    private DiseaseRepository disRepo;

    @Transactional
    public List<CardRecord> getAllCardRecordsByCard(Card card) {
        return cardRecRep.findByCard(card);
    }

    @Transactional
    public List<Treatment> getAllActiveTreatment(List<CardRecord> listCardRec) {
        List<Treatment> treatments = new ArrayList<Treatment>();
        for(CardRecord cardRecord : listCardRec) {
            List<Treatment> tList = treatmentRepo.findByCardRecord(cardRecord);
            for(Treatment t : tList) {
                treatments.add(t);
            }
        }
        return treatments;
    }
	
    @Transactional
    public List<Symptom> getAllSymptomByCardRec(CardRecord cardRecord) {
        List<CardRecordSymptoms> cardRecSymp = cardRecSympRep.findByCardRecord(cardRecord);
        List<Symptom> symptoms= new ArrayList<Symptom>();
        for(CardRecordSymptoms c : cardRecSymp) {
            symptoms.add(c.getSymptom());
        }
        return symptoms;
    }

    @Transactional
    public void openNewCardRecord(Card card, CardRecord cardRecord) {
        cardRecord.setCard(card);
        cardRecord.setStartDate(new Date(System.currentTimeMillis()));
        cardRecRep.save(cardRecord);
    }

    @Transactional
    public void addNewSymptom(Symptom symptom, CardRecord cardRecord) {
        CardRecordSymptoms cardRecordSymp = new CardRecordSymptoms();
        cardRecordSymp.setCardRecord(cardRecord);
        cardRecordSymp.setSymptom(symptom);
        cardRecordSymp.setAddedDate(new Date(System.currentTimeMillis()));
        cardRecSympRep.saveAndFlush(cardRecordSymp);
    }

    @Transactional
    public User getUserById(Integer id) {
        return userRepository.findOne(id);
    }

    @Transactional
    public User getUserByLogin(String login) {
        return userRepository.findByLogin(login);
    }

    @Transactional
    public Card getCardByPatient(User user) {
        return cardRepo.findCardByPatient(user);
    }

    @Transactional
    public List<Symptom> getAllSymptoms(){
        return symptomRepo.findAll();
    }

    @Transactional
    public Symptom getSymptomByName(String name){
        return symptomRepo.findByName(name);
    }

    @Transactional
    public Symptom getSymptomById(Integer i){
        return symptomRepo.findOne(i);
    }

    @Transactional
    public List<Symptom> getSymptomByBodyPart(BodyPart bodyPart){
        return symptomRepo.findSymptomByBodyPart(bodyPart);
    }

    @Transactional
    public void openCard(User user, int h, int w){
        Card card = new Card();
        card.setPatient(user);
        card.setHeight(h);
        card.setWeight(w);
        card.setIsActive(true);
        card.setCreatedDate(new Date(System.currentTimeMillis()));
        cardRepo.save(card);
    }

    @Transactional
    public List<Treatment> getTreatmentsByCardRecord(CardRecord cardRecord){
        return treatmentRepo.findByCardRecord(cardRecord);
    }
    
    @Transactional
    public List<Disease> getDiseaseBySymptom(Symptom symptom){
        List <DiseaseSymptom> list = disymrepo.findBySymptom(symptom);
        List <Disease> listd = new ArrayList<Disease>();
        for(DiseaseSymptom ds : list) {
            listd.add(ds.getDisease());
        }
        return listd;
    }
    
    @Transactional
    public List<Symptom> getSymptomByDisease(Disease disease){
        return disymrepo.findByDisease(disease);
    }
    
    @Transactional
    public CardRecord getCardRecordById(Integer id) {
        return cardRecRep.findOne(id);
    }
    
    @Transactional
    public Treatment getTreatmentById(Integer id) {
        return treatmentRepo.findOne(id);
    }
    
    @Transactional
    public List<TreatmentDrug> getTreatmentDrugByTreatment(Treatment treatment) {
        return trDrRepo.findByTreatment(treatment);
    }
    
    @Transactional
    public Disease getDiseaseById(Integer id) {
        return disRepo.findOne(id);
    }
}
