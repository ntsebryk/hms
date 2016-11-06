package com.softserve.edu.service;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.MessageFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Properties;
import java.util.UUID;

import javax.mail.*;
import javax.mail.internet.*;
import javax.persistence.PersistenceException;
import javax.servlet.http.HttpServletRequest;

import com.softserve.edu.entity.*;
import com.softserve.edu.repository.DepartmentRepository;
import com.softserve.edu.util.EmailProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.exception.RegistrationUserException;
import com.softserve.edu.repository.UserRepository;
import com.softserve.edu.repository.UserRoleRepository;

/**
 * @author aftor
 * Class provides the functionality for the new user registration.
 */
@Service
public class RegistrationUserServiceImpl implements RegistrationUserService{
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private UserRoleRepository userRoleRepository;

    @Autowired
    private DepartmentRepository departmentRepository;

    @Autowired
    private EmailSenderService emailSender;

    /**
     * The method applied for the registration of the user
     * @param user
     * @throws PersistenceException throws exception if sending email is fail
     */
    @Override
    @Transactional
    public void requestRegistration(User user, Role role) throws RegistrationUserException {
        if(user.getLogin() == null) {
            setData(user);
        }

        if (isUserExists(user)) {
            throw new RegistrationUserException("User has already applied for registration");
        } else {
            String uuid = UUID.randomUUID().toString();
            String password = user.getPass();

            user.setPass(encodePass(user.getPass()));
            user.setStatus(Status.PENDING);
            user.setUuid(uuid);
            user.setRegistrationDate(new Date());

            userRepository.save(user);
            userRoleRepository.save(new UserRole(user, role, Status.PENDING));
            try {
                sendConfirmationEmail(user, password, role);
            } catch(MessagingException e) {
                throw new RegistrationUserException(String.format("User wasn't add because email wasn't send.%nException message: %s", e.getMessage()));
            }
        }
    }

    /**
     * Method approves the application for registration of the user
     * @param uuid if uuid is identical - confirmation will be approved
     * @return true if confirmation was successful and false otherwise
     */
    @Override
    @Transactional
    public boolean confirmRegistration(String uuid) {
        User user = userRepository.findByUuid(uuid);
        boolean result = false;
        if (user == null) {
            result = false;
        } else {
            user.setStatus(Status.APPROVED);
            user.setUuid(null);
            UserRole ur = userRoleRepository.findByUserAndStatus(user, Status.PENDING);
            ur.setStatus(Status.APPROVED);
            result = true;
        }
        
        return result;
    }
    
    /**
     * Method checks whether the user in the database (checks by login and email)
     * @param user
     * @return true if user already in DB and false otherwise
     */
    private boolean isUserExists(User user) {
        return  userRepository.findByLoginOrEmail(user.getLogin(), user.getEmail()) != null; 
    }

    /**
     * The method sends mail to user for confirm his registration
     * @param user
     * @throws MessagingException
     */
    private void sendConfirmationEmail(User user, String password, Role role) throws MessagingException {
        StringBuilder content = new StringBuilder(500);
        content.append(MessageFormat.format("<h3>Registration in Hospital Management System</h3><p>Hello {0}, you  were successfully registered.</p>"
                , user.getFullName()));
        content.append(MessageFormat.format("<p>Your login is: {0} and your password is: {1}.</p>", user.getLogin(), password));
        content.append(MessageFormat.format("<p>Your role is: {0}.</p>", role.name()));
        content.append(MessageFormat.format("<a href=\"http://localhost:8080/hospital/confirm/{0}\"><p>Please, confirm your registration.</p></a>"
                , user.getUuid()));
        content.append(MessageFormat.format("</br><p>---</p><p>Original link: http://localhost:8080/hospital/confirm/{0}</p><p>Pleased, LV-123 group.</p>"
                , user.getUuid()));

        emailSender.sendEmail("Registration in hospital", content.toString(), new InternetAddress(user.getEmail()));
    }
    
    /**
     * The method encodes the user's password.
     * @param password for encode.
     * @return encoded password.
     */
    private String encodePass(String password) {
        MessageDigest md = null;
        StringBuffer hexString = new StringBuffer();
        byte[] hash;
        
        try {
            md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        md.update(password.getBytes());
        hash = md.digest();
        for (int i = 0;i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if (hex.length()==1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }

    /**
     * The method set info to user from user email
     */
    private void setData(User user) {
        String email = user.getEmail();
        user.setPass(generateRandomPassword(6));
        user.setLogin(email.substring(0, email.indexOf('@')));

        if(user.getIdDepartment() != null) {
            user.setDepartment(departmentRepository.findOne(user.getIdDepartment()));
        }
    }

    /**
     * Method generate random password string
     * @param lenght the password lenght
     * @return generated password
     */
    private String generateRandomPassword(int lenght)
    {
        String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789";

        String pw = "";
        SecureRandom random = new SecureRandom();
        for (int i=0; i<lenght; i++)
        {
            int index = (int)(random.nextDouble()*letters.length());
            pw += letters.substring(index, index+1);
        }
        return pw;
    }
}