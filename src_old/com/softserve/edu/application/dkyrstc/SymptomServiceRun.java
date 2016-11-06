/**
 * 
 */
package com.softserve.edu.application.dkyrstc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.DiseaseServiceImpl;
import com.softserve.edu.service.SymptomService;
import com.softserve.edu.service.SymptomServiceImpl;

/**
 * @author Kirsanov
 */
public class SymptomServiceRun {
    private static SymptomService ss = new SymptomServiceImpl();

    public void runService() {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        boolean isOut = false;
        String option = null;
        String showAll = "1. Show all symptoms;";
        String group = "2. Show fixed rows of symptoms;";
        String add = "3. Add symptom;";
        String edit = "4. Edit symptom;";
        String delete = "5. Delete symptom;";
        String orderByName = "6. Order all symptoms by name;";
        String findByName = "7. Find symptom by name;";
        String findByDisease = "8. Find symptom by disease;";
        String exit = "0. Quit.";
        while (true) {
            System.out
                    .printf("Pick the right option:\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
                            showAll, group, add, edit, delete, orderByName,
                            findByName, findByDisease, exit);
            try {
                option = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            switch (option) {
            case "1":
                this.showAllSymptomsToConsole();
                break;
            case "2":
                this.showSymptomsToConsole();
                break;
            case "3":
                this.addSymptomByConsole();
                break;
            case "4":
                this.editSymptomByConsole();
                break;
            case "5":
                this.deleteSymptomByConsole();
                break;
            case "6":
                this.orderSymptomsToConsole();
                break;
            case "7":
                this.findSymptomsByNameToConsol();
                break;
            case "8":
                this.findSymptomsByDisease();
                break;
            case "0":
                isOut = true;
                break;
            default:
                System.out.println("Enter correct number!");
                break;
            }
            if (isOut) {
                System.out.println("Bye!");
                HibernateUtil.destroyServiceRegistry();
                break;
            }
            System.out.println("Press ENTER key to continue...");
            while (true) {
                try {
                    reader.readLine();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                break;
            }
        }
    }

    public void showAllSymptomsToConsole() {
        List<Symptom> listOfAllSymptoms = ss.findAllSymptoms();
        if (!listOfAllSymptoms.isEmpty()) {
            for (Symptom s : listOfAllSymptoms) {
                System.out.println(s);
            }
        } else {
            System.out.println("There are no symptoms in the system.");
        }
    }

    public void orderSymptomsToConsole() {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        List<Symptom> orderedList = null;
        String option = null;
        System.out.println("1. Ascending Order.\n2. Descending order.");
        while (true) {
            try {
                option = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            switch (option) {
            case "1":
                orderedList = ss.findAllSymptomsByAscendingOrder();
                break;
            case "2":
                orderedList = ss.findAllSymptomsByDescendingOrder();
                break;
            default:
                System.out.println("Wrong number!");
                continue;
            }
            break;
        }
        if (!orderedList.isEmpty()) {
            for (Symptom s : orderedList) {
                System.out.println(s);
            }
        } else {
            System.out.println("There are no symptoms in the system.");
        }

    }

    public void findSymptomsByNameToConsol() {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        String name = null;

        System.out.println("Enter the symptom name...");
        while (true) {
            try {
                name = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (!name.equals("")) {
                break;
            }
            System.out.println("To small name. Try again.");
        }
        List<Symptom> symptoms = ss.findSymptomsByName(name);
        if (!symptoms.isEmpty()) {
            for (Symptom s : symptoms) {
                System.out.println(s);
            }
        } else {
            System.out.println("There are no such symptoms in the system.");
        }
    }

    public void showSymptomsToConsole() {
        List<Symptom> listOfAllSymptoms = ss.findAllSymptoms();
        if (listOfAllSymptoms.isEmpty()) {
            System.out.println("There are no symptoms in the system.");
        } else {

            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    System.in));
            String rowsQuantity = "";
            int rowsShown = 0;
            System.out.println("Enter the number of rows per page...");
            try {
                rowsQuantity = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            while (true) {
                for (int i = rowsShown; i < listOfAllSymptoms.size(); i++) {
                    if (i == rowsShown + Integer.parseInt(rowsQuantity)) {
                        break;
                    }
                    System.out.println(listOfAllSymptoms.get(i));
                }
                rowsShown += Integer.parseInt(rowsQuantity);
                if (rowsShown > listOfAllSymptoms.size() - 1) {
                    break;
                }
                System.out
                        .println("Type + if you want to review next page and anythig else to quit...");
                String next = null;
                try {
                    next = reader.readLine();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (next.equals("+")) {
                    continue;
                } else {
                    break;
                }
            }
            System.out.println("All symptoms has been shown");
        }
    }

    public void addSymptomByConsole() {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        String name = "";
        String description = "";
        System.out.println("Enter the symptom, please...");
        while (true) {
            try {
                name = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (!name.equals("")) {
                break;
            }
            System.out.println("To small name. Try again.");
        }
        System.out.println("Enter the symptom's description, please...");
        try {
            description = reader.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Symptom symptom = new Symptom(name, description);
        ss.addSymptom(symptom);
        System.out.println("Symptom added successfully!");
    }

    public Symptom findSymptomByConsole() {
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        Symptom symptom = null;
        int id = 0;
        System.out.println("Enter the ID number of the symptom...");
        try {
            id = Integer.parseInt(reader.readLine());
            if (id <= 0) {
                throw new NumberFormatException();
            }
        } catch (NumberFormatException | IOException e) {
            System.out.println("Wrong number format!");
            return this.findSymptomByConsole();
        }
        symptom = ss.findSymptomById(id);
        if (symptom == null) {
            System.out
                    .println("Such ID doesn't exict. Choose from list below:");
            List<Symptom> list = ss.findAllSymptoms();
            for (Symptom s : list) {
                System.out.println(s);
            }
            return this.findSymptomByConsole();

        }
        System.out.println("Your symptom is:\n" + symptom);
        return symptom;
    }

    public void deleteSymptomByConsole() {
        Symptom symptom = this.findSymptomByConsole();
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        String answer = "";
        System.out.println("Delete? (y/n)");
        while (true) {
            try {
                answer = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (answer.equals("y")) {
                break;
            } else if (answer.equals("n")) {
                System.out.println("Deleting canceled.");
                return;
            } else {
                System.out.println("Type y or n:");
                continue;
            }
        }
        ss.deleteSymptom(symptom);
        System.out.println("Symptom deleted successfully!");
    }

    public void editSymptomByConsole() {
        Symptom symptom = null;
        String newName = null;
        String newDescription = null;
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        symptom = this.findSymptomByConsole();
        while (true) {
            System.out.println("Write a new name, please:");
            try {
                newName = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (newName.equals("")) {
                System.out.println("Name is to short.");
                continue;
            }
            break;
        }
        while (true) {
            System.out.println("Write a new description, please:");
            try {
                newDescription = reader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (newDescription.equals("")) {
                System.out.println("Description is to short.");
                continue;
            }
            break;
        }
        symptom.setName(newName);
        symptom.setDescription(newDescription);
        ss.editSymptom(symptom);
        System.out.println("Symptom updated.");
    }

    public void findSymptomsByDisease() {
        DiseaseService ds = new DiseaseServiceImpl();
        BufferedReader reader = new BufferedReader(new InputStreamReader(
                System.in));
        int idDisease = 1;
        System.out.println("Enter ID of disease...");
        try {
            idDisease = Integer.parseInt(reader.readLine());
        } catch (NumberFormatException | IOException e) {
            System.out.println("Wrong format!");
            e.printStackTrace();
        }
        Disease disease = ds.getById(idDisease);
        List<Symptom> symptoms = ss.findAllSymptomsByDisease(disease);
        for (Symptom s : symptoms) {
            System.out.println(s);
        }
    }
}
