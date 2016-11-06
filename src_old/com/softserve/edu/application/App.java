package com.softserve.edu.application;

import java.util.List;
import java.util.UUID;

import javax.jws.soap.SOAPBinding.Use;

import org.hibernate.Session;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Gender;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.FillingDBServiceImpl;
import com.softserve.edu.service.RegistrationUserServiceImpl;
import com.softserve.edu.service.UserServiceImpl;


public class App {
    private final FillingDBServiceImpl DBService;
    private final RegistrationUserServiceImpl registrationService;
    private final UserServiceImpl userService;
    
    public App() {
        DBService = new FillingDBServiceImpl();
        registrationService = new RegistrationUserServiceImpl();
        userService = new UserServiceImpl();
    }

    public static void main(String[] args) {
        App appl = new App();
        //appl.fillDB();
//        appl.fillDBFromScript("./resources/sqlScripts/fillDB.sql");
        //appl.registrations();
//        appl.fillDB();
        appl.fillDBFromScript("./resources/sqlScripts/fillDB.sql");
        appl.registrations();
//        appl.showUsersWithRole(Role.ADMIN);
//        appl.showUsersWithRole(Role.DOCTOR);
//        appl.showUsersWithRole(Role.DOCTOR_MANAGER);
//        appl.showUsersWithRole(Role.PATIENT);
        HibernateUtil.destroyServiceRegistry();
    }
    
    private void fillDB() {
      DBService.fillData();        
    }
    
    private void fillDBFromScript(String path) {
        DBService.fillDataFromScript(path);
    }
    
    private void registrations() {
        
        User u = new User("Vasya", "Fedorovich", "';,jm';l,'[hjm", "mwwpx889s89", Gender.MALE
                , null, null, "manyya@dom.com", null, "Kefirnaya str. 2", "+88944897527");
        registrationService.requestRegistration(u);
//        registrationService.confirmRegistration(u, "wrong_uuid");
        String row = FactoryDAO.getInstance().getUserConfirmDAO().getUserConfirmdByUser(u).getUuid();
        registrationService.confirmRegistration(u, row);
        registrationService.setUserRole(u, Role.PATIENT);
        
        registrationService.requestRegistration(u);
    }
    
    private void showUsersWithRole(Role role) {
        List<User> users = userService.getUsersByRole(role);
        for (User u : users) {
            System.out.printf("%nUser: %sRole: %s%n", u, role);
        }
    }
}
