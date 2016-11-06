package com.softserve.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "file_attachment")
public class FileAttachment extends BaseEntity{
    
    @Column(name = "user_id")
    private Integer userId;
    
    @Column(name = "disease_id")
    private Integer diseaseId;
    
    @Column(name = "file_name", nullable = false)
    private String fileName;
    
    @Column(name = "isCurrent")
    private Boolean isCurrent;
    
    public FileAttachment() {
    }

    public FileAttachment(Integer userId, Integer diseaseId, String fileName,
            Boolean isCurrent) {
        this.userId = userId;
        this.diseaseId = diseaseId;
        this.fileName = fileName;
        this.isCurrent = isCurrent;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getDiseaseId() {
        return diseaseId;
    }

    public void setDiseaseId(Integer diseaseId) {
        this.diseaseId = diseaseId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Boolean getIsCurrent() {
        return isCurrent;
    }

    public void setIsCurrent(Boolean isCurrent) {
        this.isCurrent = isCurrent;
    }
}
