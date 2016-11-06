package com.softserve.edu.application.khrun;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ConsoleRead {

    public static String getStringFromConsole() {

        String stringFromConsol = null;

        BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
        try {
            stringFromConsol = bf.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return stringFromConsol;
    }

    public static int getIntegerFromConsole() {

        String valueFromConsol = null;

        BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
        try {
            valueFromConsol = bf.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        int integerFromConsol = 0;
        try {
        	integerFromConsol = Integer.parseInt(valueFromConsol);
        } catch (NumberFormatException nfe){
        	System.out.println("Read carefully!!! You must input number!!!");
        }

        return integerFromConsol;
    }
}
