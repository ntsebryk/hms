package com.softserve.edu.entity;

import javax.persistence.*;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Entity
@Table(name = "cards_records")
public class CardRecord extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "id_card", nullable = false)
    @ForeignKey(name = "none")
    private Card card;

    @ManyToOne
    @JoinColumn(name = "id_disease")
    @ForeignKey(name = "none")
    private Disease disease;

    @Column(name = "start_date", nullable = false)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date startDate;

    @Column(name = "end_date")
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date endDate;

    @ManyToOne
    @JoinColumn(name = "id_doctor")
    @ForeignKey(name = "none")
    private User doctor;

    @Column(name = "is_doctor_needed")
    private Boolean isDoctorNeeded;

    public CardRecord() {

    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Disease getDisease() {
        return disease;
    }

    public void setDisease(Disease disease) {
        this.disease = disease;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }


    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public User getDoctor() {
        return doctor;
    }


    public void setDoctor(User doctor) {
        this.doctor = doctor;
    }

    public Boolean getIsDoctorNeeded() {
        return isDoctorNeeded;
    }

    public void setIsDoctorNeeded(Boolean isDoctorNeeded) {
        this.isDoctorNeeded = isDoctorNeeded;
    }

}
