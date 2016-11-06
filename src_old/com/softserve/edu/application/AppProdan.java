package com.softserve.edu.application;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.hibernate.criterion.Order;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.PatientServiceImpl;


public class AppProdan {
	static PatientServiceImpl serv = new PatientServiceImpl();

	public static void main(String[] args) {
		AppProdan app = new AppProdan();
		app.run();
	}
	
	
	public void run() {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String key = "";
		User patient = null;
		int cardId = 0;
		boolean exit = false;
		while(true) {
			System.out.println("Enter id of needed user");
			while(true) {
				try {
					patient = serv.getPatient(Integer.parseInt(reader.readLine()));
				} catch(IOException e) {e.printStackTrace();}
				if (patient != null) {break;}
			}			
			List<Card> cardListt = serv.getCardList(patient, Order.asc("idCard"));
			System.out.print("Write number of card: ");
			for(Card c: cardListt){
				System.out.print(c.getIdCard().toString() + " ");
			}
			System.out.println();
			while(true){
				try {
					cardId = Integer.parseInt(reader.readLine());
				} catch(IOException e) {e.printStackTrace();}
				if (cardId != 0) {break;}
			}
			System.out.println("Write some number(1. Write history, 2. Sort history, 3. Add new card, 4. Write symptoms or 5. Write drugs)");
			try {
				key = reader.readLine();
			} catch (IOException e) {e.printStackTrace();}
			switch (key) {
			case "1":
				this.writeDiseaseHistory(patient, Order.asc("idCard"));
				break;
			case "2":
				this.sortDiseaseHistory(patient, Order.asc("idCard"));
				break;
			case "21":
				this.sortDiseaseHistoryByKeyAsk(patient);
				break;
			case "22":
				this.sortDiseaseHistoryByKeyDesc(patient);
				break;
			case "3":
				this.addDisease(patient);
				break;
			case "4":
				this.showSymptoms(cardId);
				break;
			case "5":
				this.showDrugs(cardId);
				break;
			case "0":
				exit = true;
				break;
			default :
				System.out.println("Incorrect data!");
			}
			if (exit==true){break;}
		}
	}
	
	public void writeDiseaseHistory(User patient, Order order){
		List<Card> cardList = serv.getCardList(patient, order);
		if (!cardList.isEmpty()){
			for(Card c : cardList){
				try {
				System.out.println(c);
				} catch (NullPointerException e){e.printStackTrace();}
			}
		}
	}
	
	public void sortDiseaseHistoryByKeyAsk(User patient) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String key = null;
		List<Card> cardList;
		System.out.println("Write order: ");
		while(true) {
			try {
				cardList = serv.getCardList(patient, Order.asc(reader.readLine()));
			} catch (Exception e) {System.out.println("Incorrect key.Try again: "); continue;}
			break;
		}
		for(Card c : cardList)
		{
			System.out.println(c);
		}
	}
	
	public void sortDiseaseHistoryByKeyDesc(User patient) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String key = null;
		List<Card> cardList;
		System.out.println("Write order: ");
		while(true) {
			try {
				cardList = serv.getCardList(patient, Order.desc(reader.readLine()));
			} catch (Exception e) {System.out.println("Incorrect key.Try again: "); continue;}
			break;
		}
		for(Card c : cardList)
		{
			System.out.println(c);
		}
	}
	
	public void sortDiseaseHistory(User patient, Order order) {
		List<Card> cardList = serv.getCardList(patient, order);
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String key = "";
		while(true)	{
			System.out.println("write: 'id', 'name' or 'date' to sort");
			
			try {
				key = reader.readLine();
			} catch (IOException e){e.printStackTrace();}
			if (key.equals("id")){
				Comparator<Card> comparator = new Comparator<Card>() {
					public int compare (Card c1, Card c2) {
						return c1.getIdCard().compareTo(c2.getIdCard());
					}
				};
				
				Collections.sort(cardList, comparator);	
				for(Card c : cardList)
					{System.out.println(c);}
				break;
				
			} else if (key.equals("name")){
				Comparator<Card> comparator = new Comparator<Card>() {
					public int compare (Card c1, Card c2) {
						return c1.getDisease().getName().compareTo(c2.getDisease().getName());
					}
				};
				
				Collections.sort(cardList, comparator);
				for(Card c : cardList)
					{System.out.println(c);}
				break;
				
			} else if (key.equals("date")){
				Comparator<Card> comparator = new Comparator<Card>() {
					public int compare (Card c1, Card c2) {
						return c1.getDate().compareTo(c2.getDate());
					}
				};
				
				Collections.sort(cardList, comparator);
				for(Card c : cardList)
					{System.out.println(c);}
				break;
				
			}	else {System.out.println("Incorrect data!");}
		}
	}
	
	public void addDisease(User patient){
		Card card = new Card();
		Date date = new Date();
		card.setIsActive(true);
		card.setPatient(patient);
		card.setDate(date);
		serv.addDisease(card);
	}	
	
	public void showSymptoms(int idCard){
		List<Symptom> listSymptom = serv.showSymptoms(idCard);
		if(!listSymptom.isEmpty()){
			for(Symptom s : listSymptom){
				System.out.println(s);
			}
		} else {System.out.println("No symptoms");}
	}
	
	public void showDrugs(int idCard){
		List<Drug> listDrug = serv.showDrugs(idCard);
		if(!listDrug.isEmpty()){
			for(Drug d : listDrug){
					System.out.println(d);
			}
		} else {System.out.println("No recipes");}
	}
}
