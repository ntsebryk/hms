package com.softserve.edu.web;

import com.softserve.edu.exception.AuthorithationUserException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author aftor
 * Controller for mapping error pahes
 */
@Controller
public class ErrorsController {

    /**
     * Mapping on /login-error
     * Method just throw AuthorithationUserException
     * @throws AuthorithationUserException
     */
    @RequestMapping("/login-error")
    public String errorLogin(HttpServletResponse response, HttpServletRequest request) {
        return "login-error";
    }

    /**
     * Mapping on /error403
     * @return error403 page
     */
    @RequestMapping("/error403")
    public String error403() {
        return "error403";
    }

    /**
     * Mapping on /error404
     * @return error404 page
     */
    @RequestMapping("/error404")
    public String error404() {
        return "error404";
    }
}