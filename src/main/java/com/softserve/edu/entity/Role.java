package com.softserve.edu.entity;

public enum Role {
    ROLE_DOCTOR(1, "Role_Doctor"),
    ROLE_MANAGER(2, "Role_Manager"),
    ROLE_PATIENT(3, "Role_Patient"),
    ROLE_PHARMACIST(4, "Role_Pharmacist"),
    ROLE_LABMANAGER(5, "Role_Labmanager");

    private Integer id;
    private String name;

    Role(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Role getRoleById(Integer id) {
        for(Role role : values()) {
            if(role.getId().equals(id)) {
                return role;
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

    @Override
    public String toString() {
        return getId() + ": " + getName();
    }
}
