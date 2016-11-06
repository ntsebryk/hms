package com.softserve.edu.util;

import java.util.List;

import com.softserve.edu.entity.TreatmentDrug;


public class TreatmentDrugFormatter {
    
    private int prescriptionId;
    private int treatmentId;
    private List<Integer> listDrugs;
    
    public int getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(int prescriptionId) {
        this.prescriptionId = prescriptionId;
    }

    public int getTreatmentId() {
        return treatmentId;
    }

    public void setTreatmentId(int treatmentId) {
        this.treatmentId = treatmentId;
    }

    public List<Integer> getListDrugs() {
        return listDrugs;
    }

    public void setListDrugs(List<Integer> listDrugs) {
        this.listDrugs = listDrugs;
    }
}
