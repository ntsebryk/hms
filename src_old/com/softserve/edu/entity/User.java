package com.softserve.edu.entity;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "users")
public class User {

    @Id
    @Column(name = "id_user")
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Cascade(CascadeType.REMOVE)
    private Integer id;

    @Column(name = "first_name", length = 20, nullable = false)
    private String firstName;

    @Column(name = "last_name", length = 30, nullable = false)
    private String lastName;

    @Column(name = "login", length = 15, nullable = false)
    private String login;

    @Column(name = "password", length = 30, nullable = false)
    private String pass;

    @Column(name = "gender", nullable = false)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column(name = "status", nullable = false)
    @Enumerated(EnumType.STRING)
    private Status status;

    @Column(name = "email")
    private String e_mail;

    @Column(name = "birthday")
    private Date birthsday;

    @Column(name = "adress")
    private String adress;

    @Column(name = "phone")
    private String phone;

    @ManyToOne 
    @JoinColumn(name = "id_department")
    private Department department;

    public User() {

    }

    public User(String firstN, String lastN, String login, String pass,
            Gender gender, Department dep, Status status) {
        this.firstName = firstN;
        this.lastName = lastN;
        this.login = login;
        this.pass = pass;
        this.gender = gender;
        this.department = dep;
        this.status = status;
    }

    public User(String firstN, String lastN, String login, String pass,
            Gender gender, Department dep, Status status, String e_mail,
            Date birthsday, String adress, String phone) {
        this(firstN, lastN, login, pass, gender, dep, status);
        this.e_mail = e_mail;
        this.birthsday = birthsday;
        this.adress = adress;
        this.phone = phone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogIn() {
        return login;
    }

    public void setLogIn(String logIn) {
        this.login = logIn;
    }

    public Gender getGender() {
        return gender;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department dep) {
        this.department = dep;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public Date getBirthsday() {
        return birthsday;
    }

    public void setBirthsday(Date birthsday) {
        this.birthsday = birthsday;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return new StringBuilder().append(getId() + "\t")
                .append(getFirstName() + "\t").append(getLastName() + "\t")
                .append(getLogIn() + "\t").append(getStatus().getName() + "\n")
                .toString();
    }
}
