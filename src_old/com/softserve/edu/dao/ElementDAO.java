package com.softserve.edu.dao;

import java.util.List;

public interface ElementDAO <E> {
    
    public void addElement (E element);
    
    public void updateElement(E element);
    
    public E getElementByID (Integer id);
    
    public void deleteElement (E element);
    
    public List<E> getAllElements ();
}
