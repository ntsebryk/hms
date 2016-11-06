package com.softserve.edu.service;

import com.softserve.edu.util.EmailProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.*;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.text.MessageFormat;
import java.util.Properties;

@org.springframework.stereotype.Service
public class EmailSenderServiceImpl implements EmailSenderService {

    @Autowired
    private EmailProperties emailProperties;

    @Override
    public void sendEmail(String subject, String content, Address sendTo) throws MessagingException {
        final String from = emailProperties.getFromAdress();
        final String pass = emailProperties.getFromPass();

        Properties smtpProps = new Properties();
        smtpProps.setProperty("mail.smtp.auth", emailProperties.getSmtpAuth());
        smtpProps.setProperty("mail.smtp.starttls.enable", emailProperties.getSmtpStarttlsEnable());
        smtpProps.setProperty("mail.smtp.host", emailProperties.getSmtpHost());
        smtpProps.setProperty("mail.smtp.port", emailProperties.getSmtpPort());

        Session session = Session.getInstance(smtpProps, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.setSubject(subject);
        message.setContent(content, "text/html");
        message.addRecipient(Message.RecipientType.TO, sendTo);

        Transport.send(message);
    }
}