package com.softserve.edu.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * A component class with propertis for sending email
 */
@Component
public class EmailProperties {
    @Value("${mail.from}")
    private String fromAdress;

    @Value("${mail.pass}")
    private String fromPass;

    @Value("${mail.smtp.auth}")
    private String smtpAuth;

    @Value("${mail.smtp.starttls.enable}")
    private String smtpStarttlsEnable;

    @Value("${mail.smtp.host}")
    private String smtpHost;

    @Value("${mail.smtp.port}")
    private String smtpPort;

    public String getSmtpPort() {
        return smtpPort;
    }

    public void setSmtpPort(String smtpPort) {
        this.smtpPort = smtpPort;
    }

   public String getFromAdress() {
        return fromAdress;
    }

    public void setFromAdress(String fromAdress) {
        this.fromAdress = fromAdress;
    }

    public String getFromPass() {
        return fromPass;
    }

    public void setFromPass(String fromPass) {
        this.fromPass = fromPass;
    }

    public String getSmtpAuth() {
        return smtpAuth;
    }

    public void setSmtpAuth(String smtpAuth) {
        this.smtpAuth = smtpAuth;
    }

    public String getSmtpStarttlsEnable() {
        return smtpStarttlsEnable;
    }

    public void setSmtpStarttlsEnable(String smtpStarttlsEnable) {
        this.smtpStarttlsEnable = smtpStarttlsEnable;
    }

    public String getSmtpHost() {
        return smtpHost;
    }

    public void setSmtpHost(String smtpHost) {
        this.smtpHost = smtpHost;
    }
}