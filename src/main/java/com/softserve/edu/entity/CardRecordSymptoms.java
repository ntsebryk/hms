package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "cardrecords_symptoms")
public class CardRecordSymptoms extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "id_cardrecord", nullable = false)
    @ForeignKey(name = "none")
    private CardRecord cardRecord;
    
    @ManyToOne
    @JoinColumn(name = "id_symptom", nullable = false)
    @ForeignKey(name = "none")
    private Symptom symptom;
    
    @Column(name = "added_date", nullable = false)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date addedDate;
    
    @Column(name = "ended_date")
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date endedDate;
    
    public CardRecordSymptoms() {
    }

    public CardRecord getCardRecord() {
        return cardRecord;
    }

    public void setCardRecord(CardRecord cardRecord) {
        this.cardRecord = cardRecord;
    }

    public Symptom getSymptom() {
        return symptom;
    }
    
    public void setSymptom(Symptom symptom) {
        this.symptom = symptom;
    }
    
    public Date getAddedDate() {
        return addedDate;
    }
    
    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }
    
    public Date getEndedDate() {
        return endedDate;
    }
    
    public void setEndedDate(Date endedDate) {
        this.endedDate = endedDate;
    }
}
