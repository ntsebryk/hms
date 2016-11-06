package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Symptom;
import com.softserve.edu.repository.SymptomRepository;

@Service
public class SymptomServiceImpl implements SymptomService {

    @Autowired
    private SymptomRepository symptomRepository;

    @Transactional
    public void addSymptom(Symptom symptom) {
        symptomRepository.saveAndFlush(symptom);
    }

    @Transactional
    public void deleteSymptom(Symptom symptom) {
        symptomRepository.delete(symptom);
    }

    @Transactional
    public void editSymptom(Symptom symptom) {
        symptomRepository.saveAndFlush(symptom);
    }

    @Transactional
    public Symptom findSymptomById(Integer id) {
        return symptomRepository.getOne(id);
    }

    @Transactional
    public Symptom findSymptomByName(String name) {
        return symptomRepository.findByName(name);
    }

    @Transactional
    public List<Symptom> findSymptomsByDisease(Integer idDisease) {
        return symptomRepository.findSymptomsForDisease(idDisease);
    }

    @Transactional
    public List<Symptom> findAllSymptoms() {
        return symptomRepository.findAll();
    }

    @Transactional
    public List<Symptom> findAllSymptomsByOrder(Sort sort) {
        return symptomRepository.findAll(sort);
    }

    @Transactional
    public List<Symptom> findSymptomsStartWith(String search) {
        return symptomRepository.findSymptomsByNameStartingWith(search);
    }

    @Transactional
    public List<Symptom> findDistinctSymptFordisease(Integer diseaseId) {
        return symptomRepository.findDistinctSymptFordisease(diseaseId);
    }

    @Transactional
    public Page<Symptom> getPage(Integer rows, Integer tabNumber, String order,
            Boolean isSorted, String search) {
        Page<Symptom> page = null;
        if (rows == null && tabNumber == null) {
            page = this.findSymptomsPages(1, 10);
        } else if (!isSorted) {
            page = this.findSymptomsPages(tabNumber, rows, search);
        } else {
            page = this.findSortedSymptomPages(tabNumber, rows, order, search);
        }
        return page;
    }

    @Transactional
    public Page<Symptom> findSymptomsPages(Integer tabNumber, Integer rows) {
        return symptomRepository.findAll(new PageRequest(tabNumber - 1, rows));
    }

    @Transactional
    public Page<Symptom> findSymptomsPages(Integer tabNumber, Integer rows, String search) {
        if (search == null || search.equals("")) {
            return findSymptomsPages(tabNumber, rows);
        } else {
            Page<Symptom> page = findSymptomsPagesStartWith(tabNumber, rows,
                    search);
            return page;
        }
    }

    @Transactional
    public Page<Symptom> findSymptomsPagesStartWith(Integer tabNumber, Integer rows, String search) {
        return symptomRepository.findByNameStartingWith(search, new PageRequest(tabNumber - 1, rows));
    }

    @Transactional
    public Page<Symptom> findSymptomsPagesStartWith(Integer tabNumber, Integer rows, Sort sort, String search) {
        return symptomRepository.findByNameStartingWith(search, new PageRequest(tabNumber - 1, rows, sort));
    }

    @Transactional
    public Page<Symptom> findSortedSymptomPages(Integer tabNumber, Integer rows, String order, String search) {
        Sort sort = null;
        if (order.equals("asc")) {
            sort = sortByNameAsc();
        } else {
            sort = sortByNameDesc();
        }
        if (search == null) {
            return symptomRepository.findAll(new PageRequest(tabNumber - 1,
                    rows, sort));
        } else {
            return findSymptomsPagesStartWith(tabNumber, rows, sort, search);
        }
    }

    /**
     * Returns a Sort object which sorts symptoms in ascending order by using
     * the name.
     * @return
     */
    public Sort sortByNameAsc() {
        return new Sort(Sort.Direction.ASC, "name");
    }

    /**
     * Returns a Sort object which sorts symptoms in descending order by using
     * the name.
     * @return
     */
    public Sort sortByNameDesc() {
        return new Sort(Sort.Direction.DESC, "name");
    }
}
