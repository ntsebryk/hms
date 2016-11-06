package com.softserve.edu.entity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

import java.util.Date;

@Entity
@Table(name = "users")
public class User extends BaseEntity {

	@Column(name = "full_name", length = 100, nullable = false)
	private String fullName;

	@Column(name = "login", length = 15, nullable = false, unique = true)
	private String login;

	@Column(name = "password", nullable = false)
	private String pass;

	@Column(name = "gender", nullable = false)
	@Enumerated(EnumType.STRING)
	private Gender gender;

	@Column(name = "status", nullable = false)
	@Enumerated(EnumType.STRING)
	private Status status;

	@Column(name = "email", nullable = false)
	private String email;

	@Column(name = "birthday", nullable = false)
	@DateTimeFormat(pattern = "dd.MM.yyyy hh:mm")
	private Date birthday;

	@ManyToOne
	@JoinColumn(name = "country_region_id")
	@ForeignKey(name = "none")
	private CountryRegion countryRegion;	

	@Column(name = "adress", nullable = false)
	private String adress;

	@Column(name = "phone", nullable = false)
	private String phone;

	@Column(name = "uuid", unique = true)
	private String uuid;

	@ManyToOne
	@JoinColumn(name = "id_department")
	@ForeignKey(name = "none")
	private Department department;

	@Column(name = "registration_date", nullable = false)
	@DateTimeFormat(pattern = "dd.MM.yyyy hh:mm")
	private Date registrationDate;

	@Transient
	private Integer idGender;

	@Transient
	private Integer idDepartment;

	@Transient
	private Integer idStatedRole;

	public User() {
	}

	public User(String fullN, String login, String pass, Gender gender,
			Department dep, Status status) {
		this.fullName = fullN;
		this.login = login;
		this.pass = pass;
		this.gender = gender;
		this.department = dep;
		this.status = status;
	}

	public User(String fullN, String login, String pass, Gender gender,
			Department dep, Status status, String e_mail, Date birthday,
			String adress, String phone) {
		this(fullN, login, pass, gender, dep, status);
		this.email = e_mail;
		this.birthday = birthday;
		this.adress = adress;
		this.phone = phone;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String firstName) {
		this.fullName = firstName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String logIn) {
		this.login = logIn;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Integer getIdGender() {
		return idGender;
	}

	public void setIdGender(Integer idGender) {
		this.idGender = idGender;
	}

	public Integer getIdDepartment() {
		return idDepartment;
	}

	public void setIdDepartment(Integer idDepartment) {
		this.idDepartment = idDepartment;
	}

	public Integer getIdStatedRole() {
		return idStatedRole;
	}

	public void setIdStatedRole(Integer idStatedRole) {
		this.idStatedRole = idStatedRole;
	}

	public void setCountryRegion(CountryRegion countryRegion) {
		this.countryRegion = countryRegion;
	}
	
	public CountryRegion getCountryRegion() {
		return countryRegion;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this);
	}

	@Override
	public boolean equals(Object obj) {
		return EqualsBuilder.reflectionEquals(this, obj);
	}
}
