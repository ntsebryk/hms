package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Country;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;

import com.softserve.edu.repository.CardRecordRepository;
import com.softserve.edu.repository.CountryRepository;
import com.softserve.edu.repository.UserRepository;
import com.softserve.edu.repository.UserRoleRepository;

import com.softserve.edu.service.DiseaseService;

@Service
public class CardRecordServiceImpl implements CardRecordService {

	String[] queryList = {"card.patient.fullName", "disease.name", "startDate", "endDate"};

	@Autowired
	private CardRecordRepository cardRecordRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserRoleRepository userRoleRepo;

	@Autowired
	private CountryRepository countryRepository;

	@Autowired
	DiseaseService diseaseService;

	//-
	@Transactional
	public CardRecord findById(Integer id) {
		return cardRecordRepository.findOne(id);
	}

	//-
	@Transactional
	public User findUserById(Integer id) {
		return userRepository.findOne(id);
	}

	//-
	@Transactional
	public List<CardRecord> findAllCardRecords() {
		return cardRecordRepository.findAll();
	}
	
	@Transactional
	public List<CardRecord> findCardRecordsByD(User doctor) {
		return cardRecordRepository.findByDoctor(doctor);
	}

	//-
	@Transactional
	public Page<CardRecord> findCardRecordsPages(Integer tabNumber, Integer rows) {
		System.out.println("findCardRecordsPages(Integer tabNumber, Integer rows)");
		return cardRecordRepository.findAll(new PageRequest(tabNumber - 1, rows));
	}

	@Transactional
	public Page<CardRecord> findCardRecordsByDoctorPages(Integer tabNumber, Integer rows, User doctor) {
		System.out.println("findCardRecordsByDoctorPages(Integer tabNumber, Integer rows, User doctor)");
		return cardRecordRepository.findByDoctor(doctor, new PageRequest(tabNumber - 1, rows));
	}

	@Transactional
	public Page<CardRecord> findCardRecordsByDoctorPages(Integer tabNumber, Integer rows,
	String order, String search, User doctor, Integer sortBy) {
		if (search == null || search.equals("")) {
			return findCardRecordsByDoctorPages(tabNumber, rows, doctor);
		} else {
			return findCardRecordsByDoctorStartWith(tabNumber, rows, order, search, doctor, sortBy);
		}
	}

	@Transactional
	public Page<CardRecord> findCardRecordsByDoctorStartWith(Integer tabNumber, Integer rows,
	String order, String search, User doctor, Integer sortBy) {
		Sort sort = null;
		if (order.equals("asc")) {
			sort = sortByDateAsc(sortBy);
		} else {
			sort = sortByDateDesc(sortBy);
		}
		return cardRecordRepository.findCardRecordByDoctorAndByPatientsName(search, doctor,
		new PageRequest(tabNumber - 1, rows, sort));
	}

	@Transactional
	public Page<CardRecord> findSortedCardRecordPages(Integer tabNumber, Integer rows, String order, String search, User doctor, Integer sortBy) {
		Sort sort = null;
		if (order.equals("asc")) {
			sort = sortByDateAsc(sortBy);
		} else {
			sort = sortByDateDesc(sortBy);
		}
		if (search == null) {
			return cardRecordRepository.findByDoctor(doctor, new PageRequest(tabNumber - 1, rows, sort));
		} else {
			return findCardRecordsByDoctorStartWith(tabNumber, rows, order, search, doctor, sortBy);
			//return findSymptomsPagesStartWith(tabNumber, rows, sort, search);
		}
	}

	@Transactional
	public Sort sortByDateAsc(Integer sortBy) {
		System.out.println("sortBy===="+sortBy);
		String s = queryList[sortBy];
		return new Sort(Sort.Direction.ASC, s);
	}

	@Transactional
	public Sort sortByDateDesc(Integer sortBy) {
		System.out.println("sortBy===="+sortBy);
		String s = queryList[sortBy];
		return new Sort(Sort.Direction.DESC, s);
	}

	public List<Long> showYears() {
		return cardRecordRepository.showYears();
	}

	public List<Long> showMonthIllness() {
		return cardRecordRepository.showMonthIllness();
	}

	public List<Long> showMonthIllnessForYear(Integer year) {
		return cardRecordRepository.showMonthIllnessForYear(year);
	}	

	public Object[][] findDoctorsLoads() {
		return cardRecordRepository.findDoctorsLoads();
	}

    public Object[][] countDiseaseByCountries(Integer diseaseId) {
    	// TODO: Throw exception on disease not found
    	Disease disease = diseaseService.get(diseaseId);
    	return cardRecordRepository.countDiseaseByCountries(disease);
    }

    public Object[][] countDiseaseByRegion(Integer diseaseId, String countryISO3) {
    	// TODO: Throw exception on disease  or country not found
    	Country country = countryRepository.findByIso3(countryISO3);
    	Disease disease = diseaseService.get(diseaseId);
    	return cardRecordRepository.countDiseaseByRegion(disease, country);
    }



	public List<CardRecord> updateCardRecordsWithDoctor(List<Integer> crIds, Integer idDoctor) {
		CardRecord cr;
		List<CardRecord> crs = new ArrayList<CardRecord>();
		User doctor = userRepository.findOne(idDoctor);
		for (Integer crId : crIds) {
			cr = cardRecordRepository.findOne(crId);
			cr.setDoctor(doctor);
			cr.setIsDoctorNeeded(Boolean.TRUE);
			cardRecordRepository.saveAndFlush(cr);
			crs.add(cr);
		}

		return crs;
	}

	@Transactional
	 public CardRecord addCardRecord(CardRecord cardRecord){
		 return cardRecordRepository.save(cardRecord);
	 }

}
