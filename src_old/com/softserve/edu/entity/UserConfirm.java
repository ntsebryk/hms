package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name="users_uuid")
public class UserConfirm {
    
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
    @OneToOne
    @JoinColumn(name = "id_user", nullable=false)
    private User user;
    
    @Column(name="uuid", length=100, nullable=false)
    private String uuid;
    
    public UserConfirm() {
        
    }
    
    public UserConfirm(User user, String uuid) {
        this.user = user;
        this.uuid = uuid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
}
