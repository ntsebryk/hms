package com.softserve.edu.application;

import java.util.List;

import com.softserve.edu.entity.Drug;
import com.softserve.edu.service.DrugService;
import com.softserve.edu.service.DrugServiceImpl;
import com.softserve.edu.service.FillingDBServiceImpl;

public class ApplFedoryshyn {
    
    public static void main(String[] args) {
        List<String> drugList;
        boolean b;
        
//         FillingDBService service = new FillingDBService();
//         if(service.isDBEmpty()) {
//         service.fillData();
//         }
        
        DrugService drugService = new DrugServiceImpl();
        
        drugList = drugService.getNameList();
        System.out.println("\n---------------------------");
        for (String s : drugList) {
            System.out.println(s);
        }
        System.out.println("---------------------------\n");
        
        
        
        
        //----------------------------------------------------------
        // adding new:
        Drug newDrug = new Drug();
        newDrug.setName("medicine 1");
        newDrug.setDescription("description");
        newDrug.setCoeficient(11);
        
        
        System.out.println("add: " + newDrug.getName());
        b = drugService.addDrug(newDrug);
        
        if (b) {
            System.out.println("\n---------------------------");
            drugList = drugService.getNameList();
            for (String s : drugList) {
                System.out.println(s);
            }
            System.out.println("---------------------------\n");
        }
        
       
        List<Drug> list1 = drugService.orderDrugByName();
        System.out.println("\n\n=========================================\n");
        for(Drug d:list1){
            System.out.println("    " + d.getIdDrug() +".  " + d.getName());
        }
        System.out.println("=========================================\n\n");
        
        list1 = drugService.getDrugByName("A");
        System.out.println("\n\n=========================================\n");
        for(Drug d:list1){
            System.out.println("    " + d.getIdDrug() +".  " + d.getName());
        }
        System.out.println("=========================================\n\n");        
        
        
        
        
        //---------------------------------------------------------
        // finding an element:
        Drug delDrug = drugService.getDrugById(1);
        System.out.println("\n\ndeleting: " + delDrug.getIdDrug() + ". " + delDrug.getName() );
        
        Drug foundDrug = drugService.find("Axe");
        //System.out.println(foundDrug.toString());
        System.out.println("\n\n found drug: " + foundDrug.getIdDrug() + ". " + foundDrug.getName());
        
        
//        //---------------------------------------------------------
//        // deleting an element:        
//        drugService.delete(delDrug);
//        System.out.println("\n---------------------------");
//        drugList = drugService.getNameList();
//        for (String s : drugList) {
//            System.out.println(s);
//        }
//        System.out.println("---------------------------\n");
//        
//        drugService.delete(delDrug);
        
        
    }
    
}
