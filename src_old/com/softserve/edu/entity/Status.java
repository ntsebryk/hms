package com.softserve.edu.entity;
import javax.persistence.*;

@Entity
@Table(name="statuses")
public enum Status {
    APPROVED(1, "Approved"), REJECTED(2,"Rejected"), PENDING(3,"Pending");
    
    @Id
    @Column(name = "id_status")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idStatus;
    
    @Column(name = "status_name", length=50, nullable=false, unique=true)
    private String name;
    
    Status(Integer id, String name) {
        this.idStatus = id;
        this.name = name;
    }
    
    public Integer getIdStatus() {
        return idStatus;
    }
    
    public void setIdStatus(Integer idStatus) {
        this.idStatus = idStatus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public String toString() {
        return getIdStatus() + ": " + getName();
    }
}
