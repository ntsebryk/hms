package com.softserve.edu.entity;

public enum BodyPart {
    HEAD (1, "Head"),
    SHOULDER (2, "Shoulder"),
    CHEST (3, "Chest"),
    ARM (4, "Arm"),
    WAIST (5, "Waist"),
    HAND (6, "Hand"),
    LEG (7, "Leg"),
    KNEE (8, "Knee"),
    FOOT (9, "Foot");

    private Integer id;
    private String name;

    BodyPart() {

    }

    BodyPart(Integer id, String name) {
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
}
