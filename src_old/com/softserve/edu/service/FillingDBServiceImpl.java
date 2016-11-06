package com.softserve.edu.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.Calendar;

import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.jdbc.Work;

import java.sql.Connection;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.*;

/**
 * Class can fill the database data.
 * Each private method fill the appropriate table
 * @author aftor
 *
 */
public class FillingDBServiceImpl implements FillingDBService {
    
    /**
     * Factory instance of DAO classes
     */
    private final FactoryDAO factoryDAO;
    
    /**
     * Default constructor opens session and creates factoryDAO object
     */
    public FillingDBServiceImpl() {
        HibernateUtil.getSessionFactory().openSession();
        factoryDAO = FactoryDAO.getInstance();
    }
    
    /**
     * Class provides the functionality for the filling data base 
     */
    @Override
    public void fillData() {
        this.clearDB();
        this.fillDepartments();
        this.fillStatuses();
        this.fillRoles();
        this.fillDrugs();
        this.fillSymptoms();
        this.fillDiseases();
        this.fillUsers();        
        this.fillCards();
        this.fillDiseasesDrugs();
        this.fillSympptomsDiseases();
        this.fillCardsSymptoms();
        this.fillCardsDrugs();
        this.fillUsersRoles();
    }
    
    /**
     * Class provides the functionality for the filling data base from sql script
     * @param scriptPath path to sql script
     */
    public void fillDataFromScript(final String scriptPath) {
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            session.doWork(new Work() {                
                @Override
                public void execute(Connection conn) throws SQLException {
                    ScriptRunner runner=new ScriptRunner(conn, false, false);
                    InputStreamReader reader = null;
                    try {
                        reader = new InputStreamReader(new FileInputStream(scriptPath));
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    }
                    try {
                        System.out.println("Script started\n\n");
                        runner.runScript(reader);
                        System.out.println("\n\nscript executed successfully\n\n");
                        reader.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }
    
    private void fillDepartments() {
        System.out.println("Starting to add Departments");
        try {
            factoryDAO.getDepartmentDAO().addElement(new Department("Surgery", "Treated using surgery"));
            factoryDAO.getDepartmentDAO().addElement(new Department("Pediatrics", "Treat the kids"));
            factoryDAO.getDepartmentDAO().addElement(new Department("Psychiatry", "The most important thing - not to worry"));
            factoryDAO.getDepartmentDAO().addElement(new Department("Oncology", "I do not envy the patients of this office"));
            factoryDAO.getDepartmentDAO().addElement(new Department("Cardiology", "The trouble with heart"));
            System.out.println("Departments were added successfully\n");
        } catch (Exception e) {
            System.out.println("Departments weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillStatuses() {
        System.out.println("Starting to add Statuses");
        try {
            factoryDAO.getStatusDAO().addElement(Status.APPROVED);
            factoryDAO.getStatusDAO().addElement(Status.REJECTED);
            factoryDAO.getStatusDAO().addElement(Status.PENDING);
            System.out.println("Statuses were added successfully\n");
        } catch (Exception e) {
            System.out.println("Statuses weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillRoles() {
        System.out.println("Starting to add Roles");
        try{
            factoryDAO.getRoleDAO().addElement(Role.DOCTOR);
            factoryDAO.getRoleDAO().addElement(Role.DOCTOR_MANAGER);
            factoryDAO.getRoleDAO().addElement(Role.PATIENT);
            
            User userAdmin = new User(
                  "Admin", "Adminovich", "administrator", "448wwcb8e4a3Q"
                  , Gender.FEMALE, null, Status.APPROVED);
            factoryDAO.getUserDAO().addElement(userAdmin);
            
            factoryDAO.getUserRoleDAO().addElement(
                    new UserRole(userAdmin, Role.ADMIN));
            
            System.out.println("Roles were added successfully\n");
        } catch (Exception e) {
            System.out.println("Roles weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void fillDrugs() {
        System.out.println("Starting to add Drugs");
        
        try{
            factoryDAO.getDrugDAO().addElement(
                    new Drug("Aspirin", 38, "Maybe help with pain in the head"));
            factoryDAO.getDrugDAO().addElement(
                    new Drug("Axe", 100, "This medicine helps from everything"));
            factoryDAO.getDrugDAO().addElement(
                    new Drug("Valakardin", 78, "Grandma drink and do not complain"));
            factoryDAO.getDrugDAO().addElement(
                    new Drug("Vicodin", 65, "It helps with pain in his right leg"));
            System.out.println("Drugs were added successfully\n");
        } catch (Exception e) {
            System.out.println("Drugs weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void fillSymptoms() {
        System.out.println("Starting to add Symptoms");
        
        try{
            factoryDAO.getSymptomDAO().addElement(new Symptom("Pain in head", "regular pain"));
            factoryDAO.getSymptomDAO().addElement(new Symptom("Pain in leg", "I can not walk"));
            factoryDAO.getSymptomDAO().addElement(new Symptom("Can not stop sweating", "Description of third thimptom"));
            factoryDAO.getSymptomDAO().addElement(new Symptom("Colitis in the left side", "Sometimes in right side too"));
            factoryDAO.getSymptomDAO().addElement(new Symptom("Short of breath", "It begins suddenly"));
            System.out.println("Symptoms were added successfully\n");
        } catch (Exception e) {
            System.out.println("Symptoms weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void fillDiseases() {
        System.out.println("Starting to add Diseases");
        try {
            factoryDAO.getDiseaseDAO().addElement(new Disease("Cancer"
                    , factoryDAO.getDepartmentDAO().getElementByID(4)
                    , "Group of diseases involving abnormal cell growth with the potential to invade or spread to other parts of the body"));
            factoryDAO.getDiseaseDAO().addElement(new Disease("Appendicit"
                    , factoryDAO.getDepartmentDAO().getElementByID(1)
                    , "Appendicitis is one of the most common illnesses requiring emergency surgical care"));
            factoryDAO.getDiseaseDAO().addElement(new Disease("Anemia"
                    , factoryDAO.getDepartmentDAO().getElementByID(2)
                    , "Usually defined as a decrease in amount of red blood cells"));
            factoryDAO.getDiseaseDAO().addElement(new Disease("Amnesia"
                    , factoryDAO.getDepartmentDAO().getElementByID(3)
                    , "Deficit in memory caused by brain damage, disease, or psychological trauma"));
            factoryDAO.getDiseaseDAO().addElement(new Disease("Cardiomyopathy"
                    , factoryDAO.getDepartmentDAO().getElementByID(5)
                    , "Measurable deterioration for any reason of the ability of the myocardium (the heart muscle) to contract, usually leading to heart failure"));
            System.out.println("Diseases were added successfully\n");
        } catch (Exception e) {
            System.out.println("Diseases weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillUsers() {
        System.out.println("Starting to add Users");
        try{
            factoryDAO.getUserDAO().addElement(new User(
                    "Jeff", "Georgenson", "geo1", "wwwkn5"
                    , Gender.MALE, null, Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Kristina", "Mishhelevna", "kris8e", "ddlon9ie89"
                    , Gender.FEMALE, null, Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Nina", "Krestibord", "kresti87", "fffnip866sju"
                    , Gender.FEMALE, null, Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Illya", "Brestov", "brest798i", "ss68ts4a88c"
                    , Gender.MALE, null, Status.APPROVED));
            
                    
            factoryDAO.getUserDAO().addElement(new User(
                    "Alya", "Medina", "medal4", "nnyeoipps47sh", Gender.FEMALE
                    , factoryDAO.getDepartmentDAO().getElementByID(1), Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Georg", "Andersen", "anw7", "rty87qqv", Gender.MALE
                    , factoryDAO.getDepartmentDAO().getElementByID(2), Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Alan", "Mikluha", "merty47", "nnuies7xse7x2", Gender.MALE
                    , factoryDAO.getDepartmentDAO().getElementByID(3), Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Grisha", "Vasiliev", "gr4", "ddujis5d96cx", Gender.MALE
                    , factoryDAO.getDepartmentDAO().getElementByID(4), Status.APPROVED));
            factoryDAO.getUserDAO().addElement(new User(
                    "Ira", "Presickaya", "wws48s", "svjns432jsa", Gender.FEMALE
                    , factoryDAO.getDepartmentDAO().getElementByID(5), Status.APPROVED));
            System.out.println("Users were added successfully\n");
        } catch (Exception e) {
            System.out.println("Users weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillCards() {
        System.out.println("Starting to add Cards");
        Calendar cal = Calendar.getInstance();
        
        try{
            cal.set(2014, 9, 8);
            factoryDAO.getCardDAO().addElement(
                    new Card(factoryDAO.getUserDAO().getElementByID(2), true, cal.getTime()));
            cal.set(2014, 9, 10);
            factoryDAO.getCardDAO().addElement(
                    new Card(factoryDAO.getUserDAO().getElementByID(3), true, cal.getTime()));
            cal.set(2014, 9, 12);
            factoryDAO.getCardDAO().addElement(
                    new Card(factoryDAO.getUserDAO().getElementByID(4), true, cal.getTime()));
            System.out.println("Cards were added successfully\n");
        } catch (Exception e) {
            System.out.println("Cards weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillDiseasesDrugs() {
        System.out.println("Starting to add Diseases_Drugs");
        try {
            factoryDAO.getDiseaseDrugDAO().addElement(new DiseaseDrug(
                    factoryDAO.getDiseaseDAO().getElementByID(1)
                    , factoryDAO.getDrugDAO().getElementByID(2)
                    , 93));
            factoryDAO.getDiseaseDrugDAO().addElement(new DiseaseDrug(
                    factoryDAO.getDiseaseDAO().getElementByID(2)
                    , factoryDAO.getDrugDAO().getElementByID(2)
                    , 92));
            factoryDAO.getDiseaseDrugDAO().addElement(new DiseaseDrug(
                    factoryDAO.getDiseaseDAO().getElementByID(3)
                    , factoryDAO.getDrugDAO().getElementByID(4)
                    , 59));
            factoryDAO.getDiseaseDrugDAO().addElement(new DiseaseDrug(
                    factoryDAO.getDiseaseDAO().getElementByID(4)
                    , factoryDAO.getDrugDAO().getElementByID(1)
                    , 62));
            factoryDAO.getDiseaseDrugDAO().addElement(new DiseaseDrug(
                    factoryDAO.getDiseaseDAO().getElementByID(5)
                    , factoryDAO.getDrugDAO().getElementByID(3)
                    , 69));
            System.out.println("Diseases_Drugs were added successfully\n");
        } catch (Exception e) {
            System.out.println("Diseases_Drugs weren't added successfully\n");
            e.printStackTrace();
        }
    }
       
    private void fillSympptomsDiseases() {
        System.out.println("Starting to add Symptoms_Diseases");
        try {
            for (int i = 1;i <= 5; i++) {
                factoryDAO.getDiseaseSymptomDAO().addElement(new DiseaseSymptom(
                        factoryDAO.getDiseaseDAO().getElementByID(1)
                        , factoryDAO.getSymptomDAO().getElementByID(i)));
            }
            
            factoryDAO.getDiseaseSymptomDAO().addElement(new DiseaseSymptom(
                    factoryDAO.getDiseaseDAO().getElementByID(2)
                    , factoryDAO.getSymptomDAO().getElementByID(4)));
            factoryDAO.getDiseaseSymptomDAO().addElement(new DiseaseSymptom(
                    factoryDAO.getDiseaseDAO().getElementByID(3)
                    , factoryDAO.getSymptomDAO().getElementByID(3)));
            factoryDAO.getDiseaseSymptomDAO().addElement(new DiseaseSymptom(
                    factoryDAO.getDiseaseDAO().getElementByID(5)
                    , factoryDAO.getSymptomDAO().getElementByID(3)));
            factoryDAO.getDiseaseSymptomDAO().addElement(new DiseaseSymptom(
                    factoryDAO.getDiseaseDAO().getElementByID(5)
                    , factoryDAO.getSymptomDAO().getElementByID(5)));
            System.out.println("Symptoms_Diseases were added successfully\n");
        } catch (Exception e) {
            System.out.println("Symptoms_Diseases weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void fillCardsSymptoms() {
        System.out.println("Starting to add Cards_Symptom");
        try {
            factoryDAO.getCardSymptomDAO().addElement(new CardSymptom(
                    factoryDAO.getCardDAO().getElementByID(1)
                    , factoryDAO.getSymptomDAO().getElementByID(5)));
            factoryDAO.getCardSymptomDAO().addElement(new CardSymptom(
                    factoryDAO.getCardDAO().getElementByID(1)
                    , factoryDAO.getSymptomDAO().getElementByID(3)));
            factoryDAO.getCardSymptomDAO().addElement(new CardSymptom(
                    factoryDAO.getCardDAO().getElementByID(2)
                    , factoryDAO.getSymptomDAO().getElementByID(5)));
            factoryDAO.getCardSymptomDAO().addElement(new CardSymptom(
                    factoryDAO.getCardDAO().getElementByID(2)
                    , factoryDAO.getSymptomDAO().getElementByID(2)));
            factoryDAO.getCardSymptomDAO().addElement(new CardSymptom(
                    factoryDAO.getCardDAO().getElementByID(3)
                    , factoryDAO.getSymptomDAO().getElementByID(3)));
            System.out.println("Cards_Symptom were added successfully\n");
        } catch (Exception e) {
            System.out.println("Cards_Symptom weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void fillCardsDrugs() {
        System.out.println("Starting to add Cards_Drugs");
        try {
            factoryDAO.getCardDrugDAO().addElement(new CardDrug(
                    factoryDAO.getCardDAO().getElementByID(1)
                    , factoryDAO.getDrugDAO().getElementByID(3)));
            factoryDAO.getCardDrugDAO().addElement(new CardDrug(
                    factoryDAO.getCardDAO().getElementByID(2)
                    , factoryDAO.getDrugDAO().getElementByID(2)));
            factoryDAO.getCardDrugDAO().addElement(new CardDrug(
                    factoryDAO.getCardDAO().getElementByID(3)
                    , factoryDAO.getDrugDAO().getElementByID(4)));
            System.out.println("Cards_Drugs were added successfully\n");
        } catch (Exception e) {
            System.out.println("Cards_Drugs weren't added successfully\n");
            e.printStackTrace();
        }
    }
    
    private void fillUsersRoles() {
        System.out.println("Starting to add Users_Roles");
        
        try {
            for(int i = 2; i <= 4; i++) {
                factoryDAO.getUserRoleDAO().addElement(new UserRole(
                        factoryDAO.getUserDAO().getElementByID(i), Role.PATIENT));
            }
            
            for(int i = 6; i <= 8; i++) {
                factoryDAO.getUserRoleDAO().addElement(new UserRole(
                        factoryDAO.getUserDAO().getElementByID(i), Role.DOCTOR));
            }
            factoryDAO.getUserRoleDAO().addElement(new UserRole(
                    factoryDAO.getUserDAO().getElementByID(9), Role.DOCTOR_MANAGER));
            System.out.println("Users_Roles were added successfully\n");
        } catch (Exception e) {
            System.out.println("Users_Roles weren't added successfully\n");
            e.printStackTrace();
        }
    }

    private void clearDB() {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.createSQLQuery("SET FOREIGN_KEY_CHECKS=0;").executeUpdate();
            
            session.createSQLQuery("truncate table departments;").executeUpdate();
            session.createSQLQuery("truncate table statuses;").executeUpdate();
            session.createSQLQuery("truncate table roles;").executeUpdate();
            session.createSQLQuery("truncate table drugs;").executeUpdate();
            session.createSQLQuery("truncate table symptoms;").executeUpdate();
            session.createSQLQuery("truncate table diseases;").executeUpdate();
            session.createSQLQuery("truncate table users;").executeUpdate();
            session.createSQLQuery("truncate table cards;").executeUpdate();
            session.createSQLQuery("truncate table diseases_drugs;").executeUpdate();
            session.createSQLQuery("truncate table diseases_symptoms;").executeUpdate();
            session.createSQLQuery("truncate table cards_symptoms;").executeUpdate();
            session.createSQLQuery("truncate table users_roles;").executeUpdate();
            
            session.createSQLQuery("SET FOREIGN_KEY_CHECKS=1;").executeUpdate();
            session.getTransaction().commit();
        } finally{
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }
}
