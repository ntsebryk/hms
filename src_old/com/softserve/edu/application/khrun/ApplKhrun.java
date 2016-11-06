package com.softserve.edu.application.khrun;

import com.softserve.edu.dao.HibernateUtil;

public class ApplKhrun {

    public ApplKhrun() {
        HibernateUtil.getSessionFactory();
    }

    public static void main(String[] args) {
        
        ApplKhrun applKhrun =new ApplKhrun();
        applKhrun.selectToDo();
    }

    // Select action (like in web page)
    public void selectToDo() {

        System.out.println("Select what you want to do:\n\n"
                + "1: filter elements by status\n"
                + "2: filter elements by variable arguments\n"
                + "3: edit elements\n"
                + "type number of your choice");

        int selectedChoice = ConsoleRead.getIntegerFromConsole();

        switch (selectedChoice) {
            case 1:
                AdminGetEntities.getUsersByStatus();
                break;
            case 2:
                AdminGetEntities.getUsersByArguments();
                break;
            case 3:
                AdminGetEntities.changeUserStatus();
                break;
            default:
                System.out.println("Please make a right choice");
                break;
        }
    }
    
    public static void startAgainInnerLoop() {
        System.out.println("Try again? y or n");

        String valueFromConsole = ConsoleRead.getStringFromConsole();

        if (valueFromConsole.equals("y")) {
            ApplKhrun applKhrun = new ApplKhrun();
            applKhrun.selectToDo();
        }
    }
}
