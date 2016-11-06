package com.softserve.edu.entity;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "users_roles")
public class UserRole {

    @Id
    @Column(name = "id_user_role")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idUserRole;

    @ManyToOne
    @JoinColumn(name = "id_user", nullable = false)
    @Cascade(CascadeType.REMOVE)
    private User user;

    @Column(name = "role", nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role;

    public UserRole() {
    }

    public UserRole(User user, Role role) {
        this.user = user;
        this.role = role;
    }

    public Integer getIdUserRole() {
        return idUserRole;
    }

    public void setIdUserRole(Integer idUserRole) {
        this.idUserRole = idUserRole;
    }

    public User getUser() {
        return user;
    }

    public void setIdUser(User user) {
        this.user = user;
    }

    public Role getIdRole() {
        return role;
    }

    public void setIdRole(Role role) {
        this.role = role;
    }
}
