package com.softserve.edu.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="cards_symptoms")
public class CardSymptom {
    
    @Id
    @Column(name="id_card_symptom")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer idCardSymptom;
    
    @ManyToOne
    @JoinColumn(name="id_card", nullable=false)
	private Card card;
    
    @ManyToOne
    @JoinColumn(name="id_symptom", nullable=false)
	private Symptom symptom;
    
    @Column(name="date_")
    private Date date;
    
    public CardSymptom() {
        
    }
    
    public CardSymptom(Card card, Symptom symptom) {
        this.card = card;
        this.symptom = symptom;
    }

    public Integer getIdCardSymptom() {
        return idCardSymptom;
    }

    public void setIdCardSymptom(Integer idCardSymptom) {
        this.idCardSymptom = idCardSymptom;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Symptom getSymptom() {
        return symptom;
    }

    public void setSymptom(Symptom symptom) {
        this.symptom = symptom;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
