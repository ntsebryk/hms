package com.softserve.edu.entity;

/* This Enum class created to describe state of particular drug in particular treatment.
 * List of drugs in Prescription checks appropriate drugs by Treatment id in TreatmentDrug. So to check if particular drug were given out to patient according
 * its prescription we check TreatmentDrugState.
*/
public enum TreatmentDrugState {
    GIVEDOUT(1, "GivedOut");
    
    private Integer id;
    private String state;
    
    TreatmentDrugState(Integer id, String state) {
        this.id = id;
        this.state = state;
    }
    
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getState() {
        return state;
    }
    
    public void setState(String state) {
        this.state = state;
    }
}
