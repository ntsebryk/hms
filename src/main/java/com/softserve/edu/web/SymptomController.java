package com.softserve.edu.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.BodyPart;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.service.FileAttachmentService;
import com.softserve.edu.service.SymptomService;
import com.softserve.edu.util.Response;

@Controller
public class SymptomController {

    @Autowired
    private SymptomService symptomService;

    @RequestMapping(value = "/symptoms", method = RequestMethod.GET)
    public String symptomPageProba(Model model) {
        return "symptoms";
    }

    @RequestMapping(value = "/symptoms/getSymptoms", method = RequestMethod.GET)
    @ResponseBody
    public Page<Symptom> getPage(@RequestParam(required = false, value = "rows") Integer rows,
            @RequestParam(required = false, value = "page") Integer tabNumber,
            @RequestParam(required = false, value = "sort") String order,
            @RequestParam(required = false, value = "isSorted") Boolean isSorted,
            @RequestParam(required = false, value = "search") String search) {
        Page<Symptom> page = symptomService.getPage(rows, tabNumber, order, isSorted, search);
        return page;
    }

    @RequestMapping(value = "/symptoms/addSymptom", method = RequestMethod.POST)
    @ResponseBody
    public Response addSymptom(@RequestBody Symptom symptom) {
        symptomService.addSymptom(symptom);
        return Response.success("OK", "Success");
    }

    @RequestMapping(value = "symptoms/editSymptom", method = RequestMethod.PUT)
    @ResponseBody
    public Response updateSymptom(@RequestBody Map<String, Object> map) {
        Symptom symptom = symptomService.findSymptomByName((String) map.get("oldName"));
        symptom.setName((String) map.get("newName"));
        symptom.setDescription((String) map.get("newDescription"));
        symptom.setBodyPart(BodyPart.valueOf((String) map.get("newBodyPart")));
        symptomService.editSymptom(symptom);
        return Response.success("OK", "Success");
    }

    @RequestMapping(value = "symptoms/deleteCheked", method = RequestMethod.DELETE)
    @ResponseBody
    public Response deleteChecked(@RequestParam(value = "array") Integer[] ids) {
        Symptom symptom = null;
        for (Integer id : ids) {
            symptom = symptomService.findSymptomById(id);
            symptomService.deleteSymptom(symptom);
        }
        return Response.success("OK", "Success");
    }

    @RequestMapping(value = "/symptoms/filter", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> filter(@RequestParam(required = false, value = "rows") Integer rows,
            @RequestParam(required = false, value = "page") Integer tabNumber,
            @RequestParam(required = false, value = "sort") String order,
            @RequestParam(required = false, value = "isSorted") Boolean isSorted,
            @RequestParam(required = false, value = "search") String search) {
        Page<Symptom> page = symptomService.getPage(rows, tabNumber, order, isSorted, search);
        Long totalElements = page.getTotalElements();
        List<Symptom> matched = symptomService.findSymptomsStartWith(search);
        if (matched.size() > 10) {
            matched = matched.subList(0, 10);
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("totalElements", totalElements);
        map.put("page", page);
        map.put("matched", matched);
        return map;
    }

    @RequestMapping(value = "/symptoms/getBodyParts", method = RequestMethod.GET)
    @ResponseBody
    public BodyPart[] getBodyParts() {
        return BodyPart.values();
    }
    
    @RequestMapping(value = "/symptoms/dateTest")
    @ResponseBody
    public Response dateTest(@RequestBody Date date){
        System.out.println(date);
        return null;
    }
    
}
