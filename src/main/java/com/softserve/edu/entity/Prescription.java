package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "prescriptions")
public class Prescription extends BaseEntity {
    
    @ManyToOne
    @JoinColumn(name = "id_treatment", nullable = false)
    @ForeignKey(name = "none")
    private Treatment treatment;
    
    @ManyToOne
    @JoinColumn(name = "id_patient")
    @ForeignKey(name = "none")
    private User patient;
    
    @ManyToOne
    @JoinColumn(name = "id_doctor")
    @ForeignKey(name = "none")
    private User doctor;
    
    @Column(name = "created_date", nullable = false)
    @DateTimeFormat(pattern = "dd.MM.yyyy hh:mm")
    private Date createdDate;
    
    @Column(name = "checkout_date")
    @DateTimeFormat(pattern = "dd.MM.yyyy hh:mm")
    private Date checkOutDate;
    
    @Column(name = "prescription_state", nullable = false)
    @Enumerated(EnumType.STRING)
    private PrescriptionState prescriptionState;
    
    // Default empty constructor according to JPA requirement
    public Prescription() {
        
    }
    
    public Treatment getTreatment() {
        return treatment;
    }
    
    public void setTreatment(Treatment treatment) {
        this.treatment = treatment;
    }
    
    public User getPatient() {
        return patient;
    }
    
    public void setPatient(User patient) {
        this.patient = patient;
    }
    
    public User getDoctor() {
        return doctor;
    }
    
    public void setDoctor(User doctor) {
        this.doctor = doctor;
    }
    
    public Date getCreatedDate() {
        return createdDate;
    }
    
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    
    public Date getCheckOutDate() {
        return checkOutDate;
    }
    
    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }
    
    public PrescriptionState getPrescriptionState() {
        return prescriptionState;
    }
    
    public void setPrescriptionState(PrescriptionState prescriptionState) {
        this.prescriptionState = prescriptionState;
    }
}
