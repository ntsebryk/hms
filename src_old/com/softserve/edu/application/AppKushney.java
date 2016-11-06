package com.softserve.edu.application;

import java.util.Scanner;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.service.DepartmentServiceImpl;
import com.softserve.edu.service.DiseaseServiceImpl;

public class AppKushney {

    private static DiseaseServiceImpl diseaseService = new DiseaseServiceImpl();
    private static Scanner sc = new Scanner(System.in);

    public static String enterName() {
        System.out.println("\nEnter name");
        return sc.next();
    }
    
    public static String enterDescription() {
        System.out.println("\nEnter description");
        return sc.next();
    }
    
    public static int enterId() {   
        System.out.println("\nEnter id");
        int id = sc.nextInt();
        getById(id);
        return id;        
    }
    
    public static void root() {
        System.out
                .println("\n\nChoose option:\n "
                        + "0: Stop application\n "
                        + "1: Select all diseases\n "
                        + "2: Select disease by id\n "
                        + "3: Select disease by name\n "
                        + "4: Select disease by name like\n "
                        + "5: Update name by id\n "
                        + "6: Update description by id\n "
                        + "7: Get by department like\n "
                        + "8: Create by department\n "
                        );
        
        
        switch (sc.nextInt()) {
        case 0:
            System.out.println("Bye bye");
            HibernateUtil.destroyServiceRegistry();
            return;
        case 1:
            getAll();
            root();
            break;
        case 2:
            enterId();
            root();
            break;
        case 3:            
            getByName(enterName());
            root();
            break;
        case 4:            
            getByNameLike(enterName());
            root();
            break;
        case 5:
            updateNameById(enterId(), enterName());
            root();
            break;  
        case 6:
            updateDescriptionById(enterId(), enterDescription());
            root();
            break;  
        case 7:
            getAllByDepartmentNameLike(enterName());
            root();
            break;
        case 8: 
            System.out.println("enter department name like");
            Department department = FactoryDAO.getInstance().getDiseaseDAO().getAllByDepartmentNameLike(sc.next()).get(0);
            System.out.println(department);
            Disease disease = new Disease(enterName(), department, enterDescription());            
            diseaseService.add(disease);
            print(disease);
            root();
            break;
        default:
            System.out.println("Choose correct option");
            root();
            break;
        }
    }

    public static void main(String[] args) {

        System.out.println("Hello");
        root();                
        
    }

    public static void print(Disease disease) {
        System.out.print("\n" + disease.toString());
    }

    public static void getAll() {
        for (Disease disease : diseaseService.getAll()) {
            print(disease);
        }
    }

    public static void getById(int id) {
        print(diseaseService.getById(id));
    }

    public static void getByName(String name) {
        print(diseaseService.getByName(name));
    }
    
    public static void getByNameLike(String name) {
        for (Disease disease : diseaseService.getByNameLike(name)) {
            print(disease);
        }
    }

    public static void updateNameById(int id, String name) {
        Disease disease = diseaseService.getById(id);
        disease.setName(name);
        diseaseService.update(disease);
        print(diseaseService.getById(1));
    }

    public static void updateDescriptionById(int id, String description) {
        Disease disease = diseaseService.getById(id);
        disease.setDescription(description);
        diseaseService.update(disease);
        print(disease);
    }

    public static void updateDepartamentById(int id, Department department) {
        Disease disease = diseaseService.getById(id);
        disease.setDepartment(department);
        diseaseService.update(disease);
        print(disease);
    }

    public static void getAllByDepartment(Department department) {
        for (Disease disease : diseaseService.getAllByDepartment(department)) {
            print(disease);
        }
    }
    
    public static void getAllByDepartmentNameLike(String name) {
        for (Disease disease : diseaseService.getAllByDepartmentNameLike(name)) {
            print(disease);
        }
    }
    
    

}
