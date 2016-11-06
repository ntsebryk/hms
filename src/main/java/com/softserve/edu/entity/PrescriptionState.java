package com.softserve.edu.entity;

public enum PrescriptionState {
    NEW(1, "New"),
    DELIVERED(2, "Delivered");
    
    private Integer id;
    private String state;
    
    PrescriptionState(Integer id, String state) {
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
