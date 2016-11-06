package com.softserve.edu.util;

import javax.json.Json;
import javax.json.JsonObject;

/**
 * class, forming response from server with message code, caption and message test
 */
public class Response {

    /**
     * code of message (0 - error code, 1 - success code)
     */
    private int  messageCode;

    /**
     * the caption of response
     */
    private String messageDetails;

    /**
     * response message test
     */
    private String message;

    public Response(int code, String message, String messageDetails) {
        this.messageCode = code;
        this.messageDetails = messageDetails;
        this.message = message;
    }

    public static Response success(String message, String messageDetails) {
        return new Response(1, message, messageDetails);
    }

    public static Response error(String message, String messageDetails) {
        return new Response(0, message, messageDetails);
    }

    public int getMessageCode() {
        return messageCode;
    }

    public void setMessageCode(int messageCode) {
        this.messageCode = messageCode;
    }

    public String getMessageDetails() {
        return messageDetails;
    }

    public void setMessageDetails(String messageDetails) {
        this.messageDetails = messageDetails;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}