package com.softserve.edu.entity;

public enum Gender {
    MALE(1, "MALE"),
    FEMALE(2, "FEMALE");

    private Integer id;

    private String name;

    Gender(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Gender getGenderById(Integer id) {
        for(Gender gender : values()) {
            if(gender.getId().equals(id)) {
                return gender;
            }
        }
        return null;
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
}
