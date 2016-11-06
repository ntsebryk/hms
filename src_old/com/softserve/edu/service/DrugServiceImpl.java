package com.softserve.edu.service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Drug;

public class DrugServiceImpl implements DrugService {
    
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
//    private boolean validateDrugName(String drugName) {
//        Pattern p = Pattern.compile("^[\\w|\\s|\\-|\\+]+");
//        Matcher m;
//            
//        if (drugName == null) {
//            System.out.println("Field 'Name' with null value is not valid.");
//            System.out.println("Please, use the tamplate: ????????");
//            return false;
//        }
//        
//        m = p.matcher(drugName);
//        if ( !m.matches()) {
//            System.out.println("Incorrect name of medicine: \"" + drugName + "\"");
//            System.out.println("Please, use the tamplate: ???????");
//            return false;
//        }
//        
//        return true;
//    }
//    
//    
//    private boolean checkFilterName(String str){
//        if(str==null){ return false;}
//        
//        return true;
//    }
    
    //-------------------------------------------------------------------------------
    @Override
    public boolean addDrug(Drug drug) {   
        //if(!validateDrugName(drug.getName())) {return false;}
    
        return FactoryDAO.getInstance().getDrugDAO().addDrug(drug);
    }
    
    
    @Override
    public boolean updateDrug(Drug drug) {
       // if(!validateDrugName(drug.getName())) {return false;}
        
        return FactoryDAO.getInstance().getDrugDAO().updateDrug(drug);
    }
    
    
    @Override
    public boolean deleteDrug(Drug drug) {
        return FactoryDAO.getInstance().getDrugDAO().deleteDrug(drug);
    }
    
    
    @Override
    public Drug getDrugById(Integer id) {               
        return FactoryDAO.getInstance().getDrugDAO().getElementByID(id);
    }
    
    @Override
    public Drug find(String drugName) {
       // if(!validateDrugName(drugName)) {return null;}
        
        return FactoryDAO.getInstance().getDrugDAO().find(drugName);
    }
    
    @Override
    //public List<Drug> findLike(String str) {
    public List<Drug> getDrugByName(String name) {
        //if(!checkFilterName(name)) { return null; }

        return FactoryDAO.getInstance().getDrugDAO().getDrugByName(name);
    }    
       
    
    @Override
    public List<String> getNameList() {
        return FactoryDAO.getInstance().getDrugDAO().getNameList();
    }
    
    
    @Override
    // public List<Drug> getAll() {
    public List<Drug> getAllDrugs() {
        return FactoryDAO.getInstance().getDrugDAO().getAllElements();
    }


    @Override
    public List<Drug> orderDrugByName() {
        return FactoryDAO.getInstance().getDrugDAO().orderDrugByName();
    }   
}
