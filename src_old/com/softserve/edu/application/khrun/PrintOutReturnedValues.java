package com.softserve.edu.application.khrun;

import java.util.Iterator;
import java.util.List;

import com.softserve.edu.entity.User;

public class PrintOutReturnedValues {

    public static <E> void printOutList(List<E> listOfSomeEntity) {

        System.out.println("ID\t" + "First Name:\t" + "Last Name:\t"
                + "Login:\t" + "Status\n");

        Iterator<E> iterator = listOfSomeEntity.iterator();

        while (iterator.hasNext()) {
            E elementClass = iterator.next();
            System.out.println(elementClass.toString());
        }
    }

    public static <E> void printOutObject(E someEntity) {

        System.out.println("ID\t" + "First Name:\t" + "Last Name:\t"
                + "Login:\t" + "Status\n");

        System.out.println(someEntity.toString());
    }
}
