package com.softserve.edu.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Country;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.User;

public interface CardRecordRepository extends JpaRepository<CardRecord, Integer>{

    List<CardRecord> findByCard(Card card);

    Page<CardRecord> findByDoctor(User doctor, Pageable pageable);
    
    //prob
    List<CardRecord> findByDoctor(User doctor);

    Page<CardRecord> findByDoctorAndEndDate(User doctor, Date date, Pageable pageable);

    @Query("select count(*) from CardRecord cr group by month(cr.startDate)")
    List<Long> showMonthIllness();

    @Query("select distinct year(cr.startDate) from CardRecord as cr")
    List<Long> showYears();    

    @Query("select count(*) from CardRecord cr where year(cr.startDate) = ?1 group by month(cr.startDate)")
    List<Long> showMonthIllnessForYear(Integer year);
    
    @Query("select cr.doctor, count(*) from CardRecord as cr where cr.doctor is not null group by cr.doctor")
    Object[][] findDoctorsLoads();

    @Query("select cr.card.patient.countryRegion.country, count(*) " 
            + "from CardRecord as cr where cr.disease = ?1 "
            + "group by cr.card.patient.countryRegion.country.iso3")
    Object[][] countDiseaseByCountries(Disease disease);

    @Query("select cr.card.patient.countryRegion, count(*) " 
        + "from CardRecord as cr where cr.disease = ?1 and cr.card.patient.countryRegion.country = ?2 "
        + "group by cr.card.patient.countryRegion")
    Object[][] countDiseaseByRegion(Disease disease, Country country);

    @Query("select year(cr.startDate) from  CardRecord as cr group by year(cr.startDate)")
    List<Integer> showYearsOfAllCards();

    /*@Query("select cd from CardRecord cd where cd.endDate like ?1%")
    Page<CardRecord> findCardRecordByDoctorAndByEndDAteStartingWith(Date search, User doctor, Pageable pageable);*/

    @Query("select cd from CardRecord cd where cd.card.patient.fullName like :search% and cd.doctor=:doctor")
    Page<CardRecord> findCardRecordByDoctorAndByPatientsName(@Param("search")String search, @Param("doctor")User doctor, Pageable pageable);

    @Query("select cd from CardRecord cd where cd.card.patient.login = :login and cd.endDate is null")
    List<CardRecord> findActiveCardsByLogin(@Param("login")String login);
        
}
