package com.softserve.edu.application.khrun;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.AdminServiceImpl;
import com.softserve.edu.service.AdminService;

public class AdminGetEntities {

    public static List<User> listOfUsers = null;

    public static void getUsersByStatus() {

        for (Status s : Status.values()) {
            System.out.println(s.toString());
        }

        int idStatus = ConsoleRead.getIntegerFromConsole();

        AdminService adminService = new AdminServiceImpl();
        switch (idStatus) {
            case 1:
                listOfUsers = adminService.getListOfUserByStatus(Status
                        .values()[idStatus - 1]);
                PrintOutReturnedValues.printOutList(listOfUsers);
                break;
            case 2:
                listOfUsers = adminService.getListOfUserByStatus(Status
                        .values()[idStatus - 1]);
                PrintOutReturnedValues.printOutList(listOfUsers);
                break;
            case 3:
                listOfUsers = adminService.getListOfUserByStatus(Status
                        .values()[idStatus - 1]);
                PrintOutReturnedValues.printOutList(listOfUsers);
                break;
            default:
                System.out.println("Print correct number");
                break;
        }
        
        ApplKhrun.startAgainInnerLoop();
    }

    public static void getUsersByArguments() {
    	
    	Map<String, String> selectByArguments = new HashMap<String, String>();
        
    	listOfUsers = FactoryDAO.getInstance().getUserDAO().getAllElements();
        PrintOutReturnedValues.printOutList(listOfUsers);
        
        while(true) {
        	System.out.println("Print pair column and value to which you want to filter:");
        	String pairToFilter = ConsoleRead.getStringFromConsole();
        	String[] strings = pairToFilter.split(" ");
        	String column = strings[0];
        	String valueOfColumn = strings[1];
        	
        	selectByArguments.put(column, valueOfColumn);
        	
        	System.out.println("Want to print more? y / n");
        	String valueFromConsole = ConsoleRead.getStringFromConsole();

            if (valueFromConsole.equals("n")) {
                break;
            }
        }

        AdminService adminService = new AdminServiceImpl();
        listOfUsers = adminService.getListOfUserByArguments(selectByArguments);

        PrintOutReturnedValues.printOutList(listOfUsers);
        
        ApplKhrun.startAgainInnerLoop();
    }
    
    public static void changeUserStatus() {
        
        PrintOutReturnedValues.printOutList(FactoryDAO.getInstance().getUserDAO().getAllElements());
        System.out.println("Select id user, which should be edited");
        
        int idUser = ConsoleRead.getIntegerFromConsole();

        System.out.println("Select new STATUS for user:");
        for (Status s : Status.values()) {
        	System.out.println(s.toString());
        }

        int newStatus = ConsoleRead.getIntegerFromConsole();

        System.out.println("User before update");
        PrintOutReturnedValues.printOutObject(FactoryDAO.getInstance().getUserDAO().getElementByID(idUser));
        
        AdminService adminService = new AdminServiceImpl();
        adminService.editUser(idUser, newStatus);
        
        System.out.println("Updated user:");
        PrintOutReturnedValues.printOutObject(FactoryDAO.getInstance().getUserDAO().getElementByID(idUser));
        
        ApplKhrun.startAgainInnerLoop();
    }
}
