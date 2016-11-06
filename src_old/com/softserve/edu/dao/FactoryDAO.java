package com.softserve.edu.dao;

public class FactoryDAO {
    
    private DepartmentDAOImpl departmentDAO = null;
    private StatusDAO statusDAO = null;
    private UserDAOImpl userDAO = null;
    private CardDAOImpl cardDAO = null;
    private DiseaseDAOImpl diseaseDAO = null;
    private DrugDAOImpl drugDAO = null;
    private RoleDAO roleDAO = null;
    private SymptomDAOImpl symptomDAO = null;
    private CardDrugDAOImpl cardDrugDAO = null;
    private CardSymptomDAOImpl cardSymptomDAO = null;
    private DiseaseDrugDAOImpl diseaseDrugDAO = null;
    private DiseaseSymptomDAO diseaseSymptomDAO = null;
    private UserRoleDAO userRoleDAO = null;
    private UserConfirmDAOImpl userConfirmDAO = null;
    
    public UserConfirmDAO getUserConfirmDAO() {
        return userConfirmDAO;
    }

    private static FactoryDAO instance = null;
    
    private FactoryDAO() {
        departmentDAO = new DepartmentDAOImpl();
        statusDAO = new StatusDAO();
        userDAO = new UserDAOImpl();
        cardDAO = new CardDAOImpl();
        diseaseDAO = new DiseaseDAOImpl();
        drugDAO = new DrugDAOImpl();
        roleDAO = new RoleDAO();
        symptomDAO = new SymptomDAOImpl();
        cardDrugDAO = new CardDrugDAOImpl();
        cardSymptomDAO = new CardSymptomDAOImpl();
        diseaseDrugDAO = new DiseaseDrugDAOImpl();
        diseaseSymptomDAO = new DiseaseSymptomDAO();
        userRoleDAO = new UserRoleDAO();
        userConfirmDAO = new UserConfirmDAOImpl();
    }
    
    public static synchronized FactoryDAO getInstance() {
        if (instance == null) {
            instance = new FactoryDAO();
        }
        return instance;
    }
    
    public DepartmentDAOImpl getDepartmentDAO() {
        return departmentDAO;
    }
    
    public StatusDAO getStatusDAO() {
        return statusDAO;
    }

    public UserDAOImpl getUserDAO() {
        return userDAO;
    }

    public CardDAOImpl getCardDAO() {
        return cardDAO;
    }

    public DiseaseDAOImpl getDiseaseDAO() {
        return diseaseDAO;
    }
  
    public DrugDAOImpl getDrugDAO() {
        return drugDAO;
    }    

    public RoleDAO getRoleDAO() {
        return roleDAO;
    }

    public SymptomDAOImpl getSymptomDAO() {
        return symptomDAO;
    }

    public CardDrugDAOImpl getCardDrugDAO() {
        return cardDrugDAO;
    }
    
    /*public CardDrugDAOImpl getCardDrugDAOImpl() {
        return cardDrugDAO;
    }*/

    public CardSymptomDAOImpl getCardSymptomDAO() {
        return cardSymptomDAO;
    }

    public DiseaseDrugDAOImpl getDiseaseDrugDAO() {
        return diseaseDrugDAO;
    }

    public DiseaseSymptomDAO getDiseaseSymptomDAO() {
        return diseaseSymptomDAO;
    }

    public UserRoleDAO getUserRoleDAO() {
        return userRoleDAO;
    }
}
