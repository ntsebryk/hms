package com.softserve.edu.entity;

import java.sql.Date;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

@Entity
@Table(name = "treatments_drugs")
public class TreatmentDrug extends BaseEntity {

    @ManyToOne()
    @JoinColumn(name = "id_treatment")
    @ForeignKey(name = "none")
    private Treatment treatment;

    @ManyToOne
    @JoinColumn(name = "id_drug")
    @ForeignKey(name = "none")
    private Drug drug;

    @Column(name = "description")
    private String description;
    
    @Column(name="drug_state")
    @Enumerated(EnumType.STRING)
    private TreatmentDrugState drugState;
    
    @Column(name="checkout_date")
    @DateTimeFormat(pattern = "dd.MM.yyyy hh:mm")
    private Date checkOutDate;
    
    // Default empty constructor according to JPA requirements
    public TreatmentDrug() {

    }

    public Treatment getTreatment() {
        return treatment;
    }

    public void setTreatment(Treatment treatment) {
        this.treatment = treatment;
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public TreatmentDrugState getDrugState() {
        return drugState;
    }

    public void setDrugState(TreatmentDrugState drugState) {
        this.drugState = drugState;
    }

    public Date getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }
}
