package com.softserve.edu.util;

import java.util.List;

public class DoctorAssigningFormatter {

	private List<Integer> cardRecordIds;
	private int doctorId;

	public DoctorAssigningFormatter() {}

	public DoctorAssigningFormatter(List<Integer> cardRecordIds, int doctorId) {
		this.cardRecordIds = cardRecordIds;
		this.doctorId = doctorId;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public List<Integer> getCardRecordIds() {
		return cardRecordIds;
	}

	public void setCardRecordIds(List<Integer> cardRecordIds) {
		this.cardRecordIds = cardRecordIds;
	}
}
