package com.softserve.edu.service;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

/**
 * @author aftor
 * Interface for sending email
 */
public interface EmailSenderService {

    /**
     * Method sends email
     * @param subject
     * @param messageText
     */
    public void sendEmail(String subject, String content, Address sendTo) throws MessagingException;
}