package com.softserve.edu.entity;


import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "treatments_tests")
public class TreatmentTest extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_treatment", nullable = true)
	@ForeignKey(name = "none")
	private Treatment treatment;

	@ManyToOne
	@JoinColumn(name = "id_user", nullable = true)
	@ForeignKey(name = "none")
	private User user;

	@ManyToOne
	@JoinColumn(name = "id_test", nullable = false)
	@ForeignKey(name = "none")
	private Test test;
	

	@ManyToOne
	@JoinColumn(name = "id_laboratory", nullable = true)
	@ForeignKey(name = "none")
	private Laboratory laboratory;

	@Column(name = "appointment_date", nullable = true)
	@DateTimeFormat(pattern = "dd.MM.yyyy")
	private Date appointmentDate;

	@Column(name = "test_date")
	@DateTimeFormat(pattern = "dd.MM.yyyy")
	private Date testDate;

	public List<Laboratory> getAvalLabs() {
		return avalLabs;
	}

	public void setAvalLabs(List<Laboratory> avalLabs) {
		this.avalLabs = avalLabs;
	}

	@Column(name = "test_result")
	private String result;
	
	@Transient
	private List<Laboratory> avalLabs;

	public TreatmentTest() {
	}
	
	public TreatmentTest(User user, Test test, Laboratory laboratory) {
		this.user = user;
		this.test = test;
		this.laboratory = laboratory;
	}

	public TreatmentTest(User user, Test test, Laboratory laboratory, Date date) {
		this.user = user;
		this.test = test;
		this.laboratory = laboratory;
		this.appointmentDate = date;
	}
	
	public Treatment getTreatment() {
		return treatment;
	}

	public void setTreatment(Treatment treatment) {
		this.treatment = treatment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public Laboratory getLaboratory() {
		return laboratory;
	}

	public void setLaboratory(Laboratory laboratory) {
		this.laboratory = laboratory;
	}

	public Date getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public Date getTestDate() {
		return testDate;
	}

	public void setTestDate(Date testDate) {
		this.testDate = testDate;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return new StringBuilder().append("idTreatment = " + treatment + ",  ")
				.append("idTest = " + test + ",  ")
				.append("idLabManger = " + laboratory.getId() + ",  ")
				.append("appointmentDate = " + appointmentDate + ",  ")
				.append("testDate = " + testDate + ",  ")
				.append("result = " + result).toString();
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		}
		if (obj == this) {
			return true;
		}
		if (obj.getClass() != getClass()) {
			return false;
		}
		TreatmentTest rhs = (TreatmentTest) obj;
		return new EqualsBuilder().appendSuper(super.equals(obj))
				.append(this.id, rhs.id).append(this.treatment, rhs.treatment)
				.append(this.user, rhs.user).append(this.test, rhs.test)
				.append(this.laboratory, rhs.laboratory)
				.append(this.appointmentDate, rhs.appointmentDate)
				.append(this.testDate, rhs.testDate)
				.append(this.result, rhs.result).isEquals();
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(this.id).append(this.treatment)
				.append(this.user).append(this.test).append(this.laboratory)
				.append(this.appointmentDate).append(this.testDate)
				.append(this.result).toHashCode();
	}
}
