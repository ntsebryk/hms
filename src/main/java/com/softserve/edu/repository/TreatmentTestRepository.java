package com.softserve.edu.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Test;
import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentTest;
import com.softserve.edu.entity.User;

public interface TreatmentTestRepository extends JpaRepository<TreatmentTest, Integer> {
	
	@Query("SELECT tt  FROM TreatmentTest  tt WHERE tt.user = ?1 AND tt.test = ?2 AND tt.appointmentDate = ?3"
			+ " ORDER BY tt.appointmentDate DESC")
	TreatmentTest findByUserAndTest(User user, Test test, Date appointmentDate);

	@Query("SELECT tt  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND "
			+ "( tt.appointmentDate != null AND tt.laboratory = null) ORDER BY tt.appointmentDate")
	List<TreatmentTest> getNewAppointment(Integer userId);

	
	@Query("SELECT tt  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND "
			+ "( tt.testDate = null AND tt.laboratory != null) ORDER BY tt.appointmentDate DESC")
	List<TreatmentTest> getReservedTest(Integer userId);

	@Query("SELECT tt  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.testDate != null"
			+ " ORDER BY tt.testDate DESC")
	List<TreatmentTest> getDoneTests(Integer userId);

	@Query("SELECT tt  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.result != null")
	List<TreatmentTest> getResultedTests(Integer userId);

	@Query("SELECT COUNT(tt) FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.appointmentDate != null AND tt.laboratory = null")
	Integer getNewAppointmentsCount(Integer id);

	@Query("SELECT COUNT(tt)  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.testDate = null AND tt.laboratory != null")
	Integer getReservedTestsCount(Integer id);

	@Query("SELECT COUNT(tt)  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.testDate != null")
	Integer getDoneTestsCount(Integer id);

	@Query("SELECT COUNT(tt)  FROM TreatmentTest  tt WHERE tt.user.id = ?1 AND tt.result != null")
	Integer getFinisedResultTestsCount(Integer id);
	
	List<TreatmentTest> findByTreatment(Treatment treatment);
	
}
