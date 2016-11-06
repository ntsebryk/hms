package com.softserve.edu.application;

import java.util.List;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.service.DrugService;
import com.softserve.edu.service.DrugServiceImpl;

public class ApplFedoryshyn2 {

	private DrugService drugService = new DrugServiceImpl();
	
	private Scanner scanner = new Scanner(System.in);
	
    /**
     * Checks whether the name of medicine corresponds to the template.
     * <br>
     * null value is not allowed.
     * <p>
     * The name must contain...
     * 
     * @param drugName the name of medicine to be checked.
     * @return true
     */
    private boolean validateDrugName(String drugName) {
        Pattern p = Pattern.compile("^[\\w|\\s|\\-|\\+]+");
        Matcher m;
            
        if (drugName == null) {
            System.out.println("Field 'Name' with null value is not valid.");
            System.out.println("Please, use the tamplate: ????????");
            return false;
        }
        
        m = p.matcher(drugName);
        if ( !m.matches()) {
            System.out.println("Incorrect name of medicine: \"" + drugName + "\"");
            System.out.println("Please, use the tamplate: ???????");
            return false;
        }
        
        return true;
    }
    
    
    private boolean checkFilterName(String str){
        if(str==null){ return false;}
        
        return true;
    }	
	
    public String inputName() {
        System.out.println("Input drug name");
        return scanner.next();
    }
    
    public int inputId() {
    	System.out.println("Input id of drug\n");
        int id = scanner.nextInt();
        //getById(id);
        return id;        
    }	
    
    public void getAll() {
		List<Drug> drugList = drugService.getAllDrugs();
		
		System.out.println("-------------------------------------");
		for(Drug drug : drugList) {
			System.out.println(drug.toString());
		}
		System.out.println("-------------------------------------");
	}
    
    public void find(int id) {
    	Drug drug = drugService.getDrugById(id);
    	if(drug == null) { System.out.println("didn't find drug with such id"); }
    	else { System.out.println(drug.toString()); }
		
	}
    
    public void getList(String keyWord) {    	
		List<Drug> drugList = drugService.getDrugByName(keyWord);
		for(Drug drug : drugList) {
			System.out.println(drug.toString());
		}
	}
    
	private void add(String newName, String newDesc) {
		Drug newDrug = new Drug();
		newDrug.setName(newName);
		newDrug.setDescription(newDesc);
		
		if(!drugService.addDrug(newDrug)) {
			System.out.println("couldn't add new drug");
		}
		else {
			System.out.println("new drug was added successfuly");
		}
	}    
	
	
    public void mainMenu() {
    	
    	
        System.out
                .println("\n\nChoose option:\n "
                        + "1: Get drugs list\n "
                        + "2: Get drug by id\n "
                        + "3: Get drugs list by key word\n "
                        + "4: Add new drug\n "
                        + "5: Update drug\n "
                        + "0: Stop the application\n ");
        
        
        switch (scanner.nextInt()) {
        case 0:
            System.out.println("END.");
            scanner.close();
            HibernateUtil.destroyServiceRegistry();
            return;
        case 1:
            getAll();
            mainMenu();
            break;
        case 2:
            System.out.println("Enter Id");
            find(scanner.nextInt());
            mainMenu();
            break;
        case 3:
            System.out.println("input key word");
            getList(scanner.next());
            mainMenu();
            break;
        case 4:
            System.out.println("write drug name");
            String newName = scanner.next();
            System.out.println("write description");
            String newDesc = scanner.next();
            add(newName, newDesc);
            mainMenu();
            break;
        case 5:
            //updateNameById(enterId(), enterName());
            mainMenu();
            break;            
        default:
            System.out.println("Choose option");
            mainMenu();
            break;
        }
    }
    
    
	
	




	public static void main(String[] args) {
		ApplFedoryshyn2 myAppl = new ApplFedoryshyn2();

		
		
		System.out.println("\n\n\t Medicine catalogue");
		System.out.println("\t````````````````````\n");
		
		myAppl.mainMenu();

	}

}
