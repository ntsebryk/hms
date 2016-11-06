package com.softserve.edu.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.annotation.QueryAnnotation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Prescription;
import com.softserve.edu.entity.PrescriptionState;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;

/**
 * Repository for entity {@link Prescription} and its instances. Provides basic CRUD operations.
 * @param <T>
 */
public interface PharmacistRepository extends JpaRepository<Prescription, Integer> {
    
    @Query("SELECT p FROM Prescription p WHERE p.patient = (SELECT u FROM User u WHERE u.fullName = :fullName)")
    public Page<Prescription> getFilteredPrescriptionsByPatient(@Param("fullName") String fullName, Pageable pageable);
    
    @Query("SELECT p FROM Prescription p WHERE p.doctor = (SELECT u FROM User u WHERE u.fullName = :fullName)")
    public Page<Prescription> getFilteredPrescriptionsByDoctor(@Param("fullName") String fullName, Pageable pageable);
    
    public Page<Prescription> findAllByPrescriptionState(PrescriptionState prescriptionState, Pageable pageable);
    
}
