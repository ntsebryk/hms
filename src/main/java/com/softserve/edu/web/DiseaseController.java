package com.softserve.edu.web;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.repository.DepartmentRepository;
import com.softserve.edu.service.DiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class DiseaseController {
	
    @Autowired
    private DiseaseService diseaseService;
    
    @Autowired
    private DepartmentRepository departmentRepository;
        
    @RequestMapping("Diseases")
    public String getDiseases(Map<String, Object>map) {
        map.put("diseases", diseaseService.getAll());
        return "diseases";
    }
    
    @RequestMapping(value="deleteSelected", method=RequestMethod.POST)
    public String deleteArray(@RequestParam(value="jsona") List<Integer> list) {
    	for(int id : list) {
    		diseaseService.delete(id);    		
    	}    	
    	return "redirect:Diseases";
    }
    
    @RequestMapping(value="addDisease", method=RequestMethod.POST) 
    public @ResponseBody int addDisease(@RequestParam(value="disease") List<String> list) {    	
    	Disease disease = new Disease();    	
    	disease.setName((String) list.get(0));
    	disease.setDescription((String) list.get(1));    	    	    	   	    
    	disease.setDepartment(departmentRepository.findOne(1));       	
    	
    	return diseaseService.add(disease).getId();
    }
    
    @RequestMapping(value="editDisease", method=RequestMethod.POST)
    @ResponseStatus(value = HttpStatus.USE_PROXY)
    public @ResponseBody void editDisease(@RequestParam Disease disease) {
    	disease.setDepartment(departmentRepository.getOne(1));
    	diseaseService.add(disease);
    }

    @RequestMapping(value="/admin-manager/disease/byName", method=RequestMethod.GET)
    @ResponseBody
    public List<Disease> showNewUsers(@RequestParam String name) {
        return diseaseService.findDiseaseByName(name);
    }
}
























