package com.softserve.edu.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;






import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.CardRecordService;
import com.softserve.edu.service.PatientService;

@Controller
public class DoctorCardRecordController {
    Integer sortBy1 = 0;
    
    @Autowired
    private CardRecordService cardRecordService;
    
    @Autowired
    private PatientService patientService;
    
    /*@RequestMapping(value = "/docRecord", method = RequestMethod.GET)
    public String doctorPage(
        @RequestParam(required = false, value = "rows") Integer rows,
        @RequestParam(required = false, value = "page") Integer tabNumber,
        @RequestParam(required = false, value = "sort") String order,
        @RequestParam(required = false, value = "isSorted") Boolean isSorted,
        @RequestParam(required = false, value = "sortBy") Integer sortBy,
        @RequestParam(required = false, value = "search") String search,
        @RequestParam(required = false, value = "ill") Boolean ill,
        Model model) {
        
        System.out.println("Ill="+ill);
        
        Page<CardRecord> page = null;


        if (sortBy != null) {
            sortBy1 = sortBy;
        }
       
        User doctor = cardRecordService.findUserById(35);
        if (rows == null && tabNumber == null) {
            page = cardRecordService.findCardRecordsByDoctorPages(1, 5, doctor);
            //System.out.println(page.getContent());
            System.out.println("1");
        } else if(!isSorted) {
           page = cardRecordService.findCardRecordsByDoctorPages(tabNumber, 5, order, search, doctor, sortBy1);
           System.out.println("2");
        } else {
            page = cardRecordService.findSortedCardRecordPages(tabNumber, 5, order, search, doctor, sortBy1);
            System.out.println("3");
        }
       
        System.out.println(isSorted + ", " + search);
        
        int currentPage = page.getNumber() + 1;
        int first = Math.max(1, currentPage - 3);
        int last = Math.min(currentPage + 3, page.getTotalPages());
        
        String[] sl = {"Patient name", "Disease", "Start Date", "End Date"};
        List<String> sll = Arrays.asList(sl);
        String sortByz = null;
        if (sortBy1 == null ){
            sortByz = sl[0];
        } else {
            sortByz = sl[sortBy1];
        }
        
        System.out.println("sort by "+sortBy);
        
        model.addAttribute("cardRecord", new CardRecord());
        model.addAttribute("doctorPage", page);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("first", first);
        model.addAttribute("last", last);
        model.addAttribute("username", doctor);
        model.addAttribute("sortByz", sortByz);
        model.addAttribute("sll", sll);
        return "docRecord";
    }*/
    
    @RequestMapping(value = "/docRecord", method = RequestMethod.GET)
    public String doctorPage2	(Model model){
        return "docRecord";
    }
    
    @RequestMapping(value = "/docRecord/getPage", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> docPage(
    	@RequestParam(required = false, value = "doctorId") Integer doctorId,
    	@RequestParam(required = false, value = "rows") Integer rows,
        @RequestParam(required = false, value = "page") Integer tabNumber,
        @RequestParam(required = false, value = "sort") String order,
        @RequestParam(required = false, value = "isSorted") Boolean isSorted,
        @RequestParam(required = false, value = "sortBy") Integer sortBy,
        @RequestParam(required = false, value = "search") String search,
        @RequestParam(required = false, value = "ill") Boolean ill
        ) {
        
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();
        } else {
            username = principal.toString();
        }
        User doctor1 = patientService.getUserByLogin(username);
    	
    	User doctor = cardRecordService.findUserById(35);
    	Page<CardRecord> page = null;
    	if (rows == null && tabNumber == null) {
            page = cardRecordService.findCardRecordsByDoctorPages(1, 5, doctor);
            System.out.println("1");
        } else if(!isSorted) {
           page = cardRecordService.findCardRecordsByDoctorPages(tabNumber, 5, order, search, doctor, sortBy);
           System.out.println("2");
        } else {
            page = cardRecordService.findSortedCardRecordPages(tabNumber, 5, order, search, doctor, sortBy);
            System.out.println("3");
        }
    	
    	List<CardRecord> dList = cardRecordService.findCardRecordsByD(doctor);
    	
    	Map<String, Object> docPage = new HashMap<String, Object>();
        docPage.put("doctor", doctor);
        //docPage.put("patients", page);
        docPage.put("patients", dList);
        
        return docPage;
    }
    
    @RequestMapping(value = "/doctorMain", method = RequestMethod.GET)
    public String doctorMain(Model model){
        return "doctorMain";
    }
    
    @RequestMapping(value="/docRecord/showMyInfo",method=RequestMethod.GET)
	@ResponseBody
	public User showMyIfo() {
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();
        } else {
            username = principal.toString();
        }
        User doctor1 = patientService.getUserByLogin(username);
    	
		return cardRecordService.findUserById(35);
	}
    
}
