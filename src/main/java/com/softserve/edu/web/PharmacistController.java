package com.softserve.edu.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Prescription;
import com.softserve.edu.entity.PrescriptionState;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.TreatmentDrug;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.service.PharmacistService;
import com.softserve.edu.util.Response;
import com.softserve.edu.util.TreatmentDrugFormatter;

@Controller
public class PharmacistController {
    
    @Autowired
    private PharmacistService pharmacistService;
    
    // Load default page
    @RequestMapping(value = "/pharmacist", method = RequestMethod.GET)
    public String getPharmacist() {
        return "pharmacist2";
    }
    
    // Get page of all prescriptions
    @RequestMapping(value = "/getPageOfPrescriptions", method = RequestMethod.GET)
    @ResponseBody
    public Page<Prescription> getPageOfPrescriptions(
            @RequestParam(value = "prescriptionState") PrescriptionState prescriptionState,
            @PageableDefault(page = 0, size = 10)
            @SortDefault.SortDefaults(value = {
                    @SortDefault(sort = "prescriptionState", direction = Direction.DESC),
                    @SortDefault(sort = "createdDate", direction = Direction.DESC),
                    @SortDefault(sort = "patient.fullName", direction = Direction.ASC)
            }) Pageable pageable) {
    
        Page<Prescription> prescriptions = pharmacistService.getPageOfPrescriptions(prescriptionState, pageable);
        
        return prescriptions;
    }
    
    // Get list of Users dependently on selected input field to enter value
    @RequestMapping(value = "/getUsersByRole", method = RequestMethod.GET)
    @ResponseBody
    public Page<UserRole> getUsersByRole(@RequestParam(value = "user") String userName,
            @RequestParam(value = "userRole") Role userRole,
            @PageableDefault(page = 0, size = 10, sort = "user.fullName", direction = Direction.ASC) Pageable pageable) {
        
        Page<UserRole> listOfUsers = null;
        listOfUsers = pharmacistService.getListOfUsersByRole(userName, userRole, pageable);
        
        return listOfUsers;
    }
    
    // Get list of prescription by selected patient or doctor
    @RequestMapping(value = "/getFilteredPrescriptions", method = RequestMethod.GET)
    @ResponseBody
    public Page<Prescription> getFilteredPageOfPrescriptions(
            @RequestParam(value = "user", required = false) String fullName,
            @RequestParam(value = "userRole", required = false) Role role,
            Map<String, Object> map,
            @PageableDefault(page = 0, size = 10)
            @SortDefault.SortDefaults(value = {
                    @SortDefault(sort = "prescriptionState", direction = Direction.DESC),
                    @SortDefault(sort = "createdDate", direction = Direction.DESC),
                    @SortDefault(sort = "patient.fullName", direction = Direction.ASC)
            }) Pageable pageable) {
        
        Page<Prescription> prescriptions = null;
        
        prescriptions = pharmacistService.getFilteredPageOfPrescriptions(fullName, role, pageable);
        
        return prescriptions;
    }
    
    // Return list of drugs according to selected prescription
    @RequestMapping(value = "/drugsOfPrescription", method = RequestMethod.GET)
    @ResponseBody
    public List<TreatmentDrug> getDrugsOfPrescription(@RequestParam(value = "treatmentId") Integer id) {
        
        List<TreatmentDrug> listOfDrugs = null;
        listOfDrugs = pharmacistService.getListOfDrugsByPrescription(id);
        
        return listOfDrugs;
    }
    
    // Give out selected prescription
    @RequestMapping(value = "/giveOutPrescription", method = RequestMethod.PUT)
    @ResponseBody
    public Response giveOutPrescription(@RequestBody TreatmentDrugFormatter treatmentDrugFormatter, HttpServletResponse response) throws IOException {
        
        try {
            pharmacistService.giveOutSelectedDrugs(treatmentDrugFormatter);
            return Response.success("OK", "Drug(s) state updated");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return null;
        }
    }
}
