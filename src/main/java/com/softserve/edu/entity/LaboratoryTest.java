package com.softserve.edu.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;

@Entity
@Table(name = "laboratories_tests")
public class LaboratoryTest extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_test", nullable = false)
	@ForeignKey(name = "none")
	private Test test;

	@ManyToOne
	@JoinColumn(name = "id_lab", nullable = false)
	@ForeignKey(name = "none")
	private Laboratory laboratory;

	public LaboratoryTest() {

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

	@Override
	public String toString() {
		return "LaboratoryTest [test=" + test + ", laboratoty=" + laboratory
				+ "]";
	}
}
