package com.softserve.edu.entity;

public enum Status {
    APPROVED(1, "Approved"),
    REJECTED(2, "Rejected"),
    PENDING(3, "Pending");

    private Integer id;
    private String name;

    Status(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return getId() + ": " + getName();
    }
}
