package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.BodyPart;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;

public interface PatientService {

    public List<CardRecord> getAllCardRecordsByCard(Card card);

    public List<Treatment> getAllActiveTreatment(List<CardRecord> listCardRec);

    public List<Treatment> getTreatmentsByCardRecord(CardRecord cardRecord);

    public List<Symptom> getAllSymptomByCardRec(CardRecord cardRecord);

    public void openNewCardRecord(Card card, CardRecord cardRecord);

    public void addNewSymptom(Symptom symptom, CardRecord cardRecord);

    public User getUserById(Integer id);

    public Card getCardByPatient(User user);

    public User getUserByLogin(String login);

    public List<Symptom> getAllSymptoms();

    public Symptom getSymptomByName(String name);

    public Symptom getSymptomById(Integer i);

    public List<Symptom> getSymptomByBodyPart(BodyPart bodyPart);

    public void openCard(User user, int h, int w);
    
    public List<Disease> getDiseaseBySymptom(Symptom symptom);
    
    public List<Symptom> getSymptomByDisease(Disease disease);
    
    public CardRecord getCardRecordById(Integer id);
    
    public Treatment getTreatmentById(Integer id);
    
    public List<TreatmentDrug> getTreatmentDrugByTreatment(Treatment treatment);
    
    public Disease getDiseaseById(Integer id);
}