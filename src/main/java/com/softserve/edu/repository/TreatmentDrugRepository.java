package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.Treatment;
import com.softserve.edu.entity.TreatmentDrug;

public interface TreatmentDrugRepository extends JpaRepository<TreatmentDrug, Integer> {
    
    public List<TreatmentDrug> getTreatmentDrugByTreatmentId(Integer id);
    
    @Query("SELECT count(td) FROM TreatmentDrug td WHERE td.treatment.id = :treatmentId and td.drugState IS NULL")
    public Integer countUngivedDrugsInPrescription(@Param("treatmentId") Integer treatmentId);

    public List<TreatmentDrug> findTreatmentDrugByTreatmentIdAndDrugIdIn(Integer id, List<Integer> ids);
    
    public List<TreatmentDrug> findByTreatment(Treatment treatment);
}
