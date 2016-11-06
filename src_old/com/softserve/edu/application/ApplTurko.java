package com.softserve.edu.application;

import java.util.Scanner;

import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.service.DoctorCardServiceRun;
import com.softserve.edu.service.FillingDBServiceImpl;

/**
 * @author Turko
 * вибирає усіх пацієнтів, яких лікує лікар з відповідним doctorsId
  */
public class ApplTurko {
	private final FillingDBServiceImpl DBService = new FillingDBServiceImpl();
	DoctorCardServiceRun dcsr = new DoctorCardServiceRun();
	Scanner is = new Scanner(System.in);
	int doctorsId = 0;
	int idCard = 0;
	int ch = 0;
	boolean bl = true;
    
		
	ApplTurko() {
		//DBService.fillDataFromScript("./resources/sqlScripts/fillDB.sql");
		dcsr.showAllDoctors();
		doctorsId = chooseDoctor();
	    //dcsr.showCardByDoctor(doctorsId);
		dcsr.showActiveCardByDoctor(doctorsId);
	    idCard = choosePatient();
	    System.out.println("\n----------------------------");
	    dcsr.showPatienDiseaseHistory(idCard);
	    bl = true;
	    while (bl) {
	        if (dcsr.isActive(idCard)) {
	            menuAct();
	        } else {
	    	    menuNotAct();
	        }
	    }
	    is.close();
	}
	
	public int chooseDoctor() {
    	int doctorsId = 0;
    	boolean bl = true;
	    while (bl) {
	    	System.out.println("Choose doctor (enter doctor ID)");
            try {
                String nStr = is.next();
                doctorsId = (int)Integer.valueOf(nStr);
                if (doctorsId > 0) {
                	bl = false;
                } else {
                	System.out.println("enter right number");
                }
            } catch (NumberFormatException e) {
                System.out.println("enter not right number");
            }
        }
	    return doctorsId;
    }
    
    public int choosePatient() {
    	boolean bl = true;
    	int idCard = 0;
 	    while (bl) {
 	    	System.out.println("Choose paient (enter ID card)");
             try {
                 String nStr = is.next();
                 idCard = (int)Integer.valueOf(nStr);
                 if (idCard > 0) {
                 	bl = false;
                 } else {
                 	System.out.println("enter right number");
                 }
             } catch (NumberFormatException e) {
                 System.out.println("entered number is not right");
             }
        }
 	    return idCard;
    }
    
    public void changeActive(int idCard) {
		dcsr.changeActive(idCard);
		dcsr.showPatienDiseaseHistory(idCard);
	}
    
    public void changeDisease(int idCard) {
    	dcsr.showAllDisease();
    	boolean bll = true;
		int idDisease = 0;
		while (bll) {
			System.out.println("choose disease id");
	            try {
	                String nStrd = is.next();
	                idDisease = (int)Integer.valueOf(nStrd);
	                if (idDisease > 0) {
	                	bll = false;
	                } else {
	                	System.out.println("entered number is not right");
	                }
	            } catch (NumberFormatException e) {
	                System.out.println("entered not right number");
	            }
	        }
		
		dcsr.changeDiseaseInCard(idCard, idDisease);
		dcsr.showPatienDiseaseHistory(idCard);
    }
	
	public void changeDrugA(int idCard) {
		dcsr.showAllDrugs();
		boolean bll = true;
		int idDrug = 0;
		while (bll) {
			System.out.println("choose drug id");
	            try {
	                String nStrd = is.next();
	                idDrug = (int)Integer.valueOf(nStrd);
	                if (idDrug > 0) {
	                	bll = false;
	                } else {
	                	System.out.println("enter right number");
	                }
	            } catch (NumberFormatException e) {
	                System.out.println("enter not right number");
	            }
	        }
		
		dcsr.changeDrug(idCard, idDrug);
		dcsr.showPatienDiseaseHistory(idCard);
	}
    
    public void menuAct() {
	    System.out.println("----------------------------");
	    System.out.println("\n \n Choose: " + "\n 1. Change active" + "\n 2. Change disease" + "\n 3. Change drug" + "\n 4. See drug description." 
	                  + "\n 0. exit");
        try {
            String nStr = is.next();
            ch = (int)Integer.valueOf(nStr);
            switch (ch) {
        	case 1:
        		changeActive(idCard);
        		break;
        	case 2:
        		changeDisease(idCard);
        		break;	
        	case 3:
        		changeDrugA(idCard);
        		break;
        	case 4:
        		dcsr.showDrugDescription(idCard);
        		break;
        	case 0:
        		bl = false;
        		break;
        	default:
        		System.out.println("enter right number");
        		break;
        	} 
        } catch (NumberFormatException e) {
            System.out.println("enter not right number");
        }
    }
    
    public void menuNotAct() {
	    System.out.println("----------------------------");
	    System.out.println("\n \n Choose: " + "\n 1. Change active"  + "\n 2. See drug description." + "\n 0. exit");
        try {
            String nStr = is.next();
            ch = (int)Integer.valueOf(nStr);
            switch (ch) {
        	case 1:
        		changeActive(idCard);
        		break;
           		case 2:
        		dcsr.showDrugDescription(idCard);
        		break;
        	case 0:
        		bl = false;
        		break;
        	default:
        		System.out.println("enter right number");
        		break;
        	} 
        } catch (NumberFormatException e) {
            System.out.println("enter not right number");
        }
    }
    
    public static void main(String[] args) {
		new ApplTurko();
	}
    
}
