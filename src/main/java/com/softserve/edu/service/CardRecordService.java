package com.softserve.edu.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Country;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.User;

public interface CardRecordService {

	CardRecord findById(Integer id);

	public User findUserById(Integer id);

	List<CardRecord> findAllCardRecords();

	public List<CardRecord> findCardRecordsByD(User doctor);
	
	Page<CardRecord> findCardRecordsPages(Integer tabNumber, Integer rows);

	Page<CardRecord> findCardRecordsByDoctorPages(Integer tabNumber, Integer rows, User doctor);

	public Page<CardRecord> findCardRecordsByDoctorPages(Integer tabNumber, Integer rows, String order, String search, User doctor, Integer sortBy);

	public Page<CardRecord> findCardRecordsByDoctorStartWith(Integer tabNumber, Integer rows, String order, String search, User doctor, Integer sortBy);

	public Page<CardRecord> findSortedCardRecordPages(Integer tabNumber, Integer rows, String order, String search, User doctor, Integer sortBy);

	public Sort sortByDateAsc(Integer sortBy);

	public Sort sortByDateDesc(Integer sortBy);

	List<Long> showYears();

	List<Long> showMonthIllness();

	List<Long> showMonthIllnessForYear(Integer year);

	Object[][] findDoctorsLoads();

    Object[][] countDiseaseByCountries(Integer diseaseId);

    Object[][] countDiseaseByRegion(Integer diseaseId, String countryISo3);

	List<CardRecord> updateCardRecordsWithDoctor(List<Integer> crIds, Integer idDoctor);

	public CardRecord addCardRecord(CardRecord cardRecord);

}
