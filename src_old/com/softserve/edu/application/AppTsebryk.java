package com.softserve.edu.application;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.service.DiseaseDrugService;
import com.softserve.edu.service.DiseaseDrugServiceImpl;
import com.softserve.edu.service.DiseaseService;
import com.softserve.edu.service.DiseaseServiceImpl;
import com.softserve.edu.service.DrugServiceImpl;
import com.softserve.edu.service.FillingDBServiceImpl;

public class AppTsebryk {

	private static DrugServiceImpl drugServiceImpl = new DrugServiceImpl();
	private static DiseaseService diseaseService = new DiseaseServiceImpl();
	private static DiseaseDrugService diseaseDrugService = new DiseaseDrugServiceImpl();
	private static BufferedReader r = new BufferedReader(new InputStreamReader(
			System.in));

	static {
		new FillingDBServiceImpl()
				.fillDataFromScript("./resources/sqlScripts/fillDB.sql");
	}

	public static void run() {
		int id;
		System.out.println("\n\n\nChoose option:\n " + "0: To Exit\n "
				+ "1: Select Disease\n " + "2: Get all Drugs for Disease\n "
				+ "3: Add Drug for Disease\n "
				+ "4: Get all Diseases for Drug\n" + "5: Get all Drugs\n"
				+ "6: Get Drugs by name\n" + "7: Order Drugs by name\n"
				+ "8: Delete Drug from Disease\n");

		switch (Integer.parseInt(getStringFromConsole())) {
		case 0:
			System.out.println("Thank for using our Aplication =) Gool luck!");
			closeStream();
			HibernateUtil.destroyServiceRegistry();
			return;
		case 1:
			System.out.println("Select Disease:");
			System.out.println("Enter Disease id:");
			showDisease(Integer.parseInt(getStringFromConsole()));
			run();
			break;
		case 2:
			System.out.println("Get all Drugs for Disease");
			System.out.println("Enter Disease id:");
			id = Integer.parseInt(getStringFromConsole());
			showDisease(id);
			System.out.println("The result:");
			getAllDrugsForDisease(id);
			run();
			break;
		case 3:
			System.out.println("Add Drug for Disease");
			System.out.println("Enter Disease id:");
			id = Integer.parseInt(getStringFromConsole());
			showDisease(id);
			addDrugsForDisease(id);
			System.out.println("The result:");
			getAllDrugsForDisease(id);
			run();
			break;
		case 4:
			System.out.println("Get all Diseases for Drug");
			getAllDrugs();
			System.out.println("Enter Drug id:");
			id = Integer.parseInt(getStringFromConsole());
			System.out.println("The result:");
			getAllDiseasesForDrug(id);
			run();
			break;
		case 5:
			System.out.println("Get all Drugs");
			getAllDrugs();
			run();
			break;
		case 6:
			System.out.println("Get Drugs by name");
			getDrugsByName();
			run();
			break;
		case 7:
			System.out.println("Order Drugs by name");
			orderDrugsByName();
			run();
			break;
		case 8:
			System.out.println("Delete drug from disease");
			System.out.println("Enter Disease id:");
			id = Integer.parseInt(getStringFromConsole());
			getAllDrugsForDisease(id);
			deleteDrugsFromDisease();
			System.out.println("The result:");
			getAllDrugsForDisease(id);
			run();
			break;
		default:
			System.out.println("Choose option");
			run();
			break;
		}
	}

	public static void main(String[] args) {
		try {
			System.out.println("Welcome to remote Hospital!");
			run();

		} finally {
			closeStream();
		}
	}

	public static void showDrugs(List<Drug> list) {
		System.out.printf("\n%s    %-15s\t%-20.20s    \t%s \n", "[id]",
				"[name]", "[description]", "[koeficient]");

		for (Drug dd : list) {
			System.out.printf("%d \t%-15s\t%-20.20s... \t%d \n",
					dd.getIdDrug(), dd.getName(), dd.getDescription(),
					dd.getCoeficient());
		}
		System.out.println();
		getStringFromConsole();
	}

	public static void getAllDrugs() {
		showDrugs(drugServiceImpl.getAllDrugs());

	}

	public static void getDrugsByName() {
		System.out.println("\nInput name, which you want to find...");
		String name = getStringFromConsole();
		System.out.printf("\nShow drugs, which contains %s:", name);
		showDrugs(drugServiceImpl.getDrugByName(name));

	}

	public static String getStringFromConsole() {
		String string = "";
		try {
			string = r.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return string;
	}

	public static void orderDrugsByName() {
		showDrugs(drugServiceImpl.orderDrugByName());

	}

	public static void getAllDrugsForDisease(Integer id) {
		Disease disease = diseaseService.getById(id);
		showDrugForDisease(diseaseDrugService.getAllDrugsForDisease(disease));
	}

	public static void addDrugsForDisease(Integer id) {
		getAllDrugs();
		System.out.println("Enter Drug id:");
		int drugId = Integer.parseInt(getStringFromConsole());
		Disease disease = diseaseService.getById(id);
		DiseaseDrug diseaseDrug = new DiseaseDrug();
		diseaseDrug.setDisease(disease);
		diseaseDrug.setDrug(new DrugServiceImpl().getDrugById(drugId));
		System.out.println("Enter Drug koeficient from 1 to 100:");
		diseaseDrug.setDiseaseDrugCoefficient(Integer
				.parseInt(getStringFromConsole()));
		diseaseDrugService.addDiseaseDrug(diseaseDrug);
	}

	public static void deleteDrugsFromDisease() {
		System.out.println("Select Drug id to delete:");
		int drugId = Integer.parseInt(getStringFromConsole());
		diseaseDrugService.deleteDiseaseDrug(diseaseDrugService
				.getDiseaseDrugById(drugId));
	}

	public static void getAllDiseasesForDrug(Integer id) {
		Drug drug = drugServiceImpl.getDrugById(id);
		showDiseaseForDrug(diseaseDrugService.getAllDiseasesForDrug(drug));
	}

	public static void showDiseaseForDrug(List<DiseaseDrug> list) {
		System.out.printf("\n%s    %-15s\t%-20.20s    \t%s \n", "[id]",
				"[name]", "[description]", "[departament]");
		for (DiseaseDrug dd : list) {
			System.out.printf("%d \t%-10.10s \t%-20.20s... \t%s \n", dd
					.getIdDiseasDrug(), dd.getDisease().getName(), dd
					.getDisease().getDescription(), dd.getDisease()
					.getDepartment().getName());
		}
	}

	public static void showDrugForDisease(List<DiseaseDrug> list) {
		System.out.printf("\n%s    %-15s\t%-20.20s    \t%s \n", "[id]",
				"[name]", "[description]", "[koeficient]");

		for (DiseaseDrug dd : list) {
			System.out.println(dd);

		}
		System.out.println();
		getStringFromConsole();

	}

	public static void showDisease(Integer id) {
		Disease disease = diseaseService.getById(id);
		System.out.printf("Name: %s\nDescription: %s", disease.getName(),
				disease.getDescription());
		System.out.println();
		getStringFromConsole();
	}

	public static void closeStream() {
		try {
			if (r != null) {
				r.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
