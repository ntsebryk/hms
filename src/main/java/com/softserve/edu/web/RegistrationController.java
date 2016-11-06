package com.softserve.edu.web;

import javax.servlet.http.HttpServletResponse;

import com.softserve.edu.entity.Role;
import com.softserve.edu.util.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.softserve.edu.entity.Gender;
import com.softserve.edu.entity.User;
import com.softserve.edu.exception.RegistrationUserException;
import com.softserve.edu.service.RegistrationUserService;

/**
 * Controller for unregistered users. Here presents functionality for registration and authorization.
 * @author aftor
 */
@Controller
public class RegistrationController {
    
    @Autowired
    private RegistrationUserService registrationService;

    @Autowired
    private CustomAuthenticationSucessHandler authenticationSuccessHandler;
    
    /**
     * Welcome page
     * @return view for unregistered user or redirect on the current registered user page.
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if(!auth.getPrincipal().equals("guest")) {
            return new ModelAndView("redirect:" + authenticationSuccessHandler.getDefaultTargetUrl(auth));
        }

        return new ModelAndView("welcome");
    }
    
    /**
     * Processing the registration request
     * @param user
     * @param result check the possibility of converting the query data to the user object
     *          return true if data is correct and false otherwise
     * @return view about success registration
     * @throws RegistrationUserException throws when there is already a user with this login or password 
     */
    @RequestMapping(value = "/", method = RequestMethod.POST)
    @ResponseBody
    public Response registration(@RequestBody User user, @RequestParam("role") String role) throws RegistrationUserException {
        Role r = Role.valueOf(role);
        user.setGender(Gender.getGenderById(user.getIdGender()));
        registrationService.requestRegistration(user, r);

        return Response.success("We sent e-mail to " + user.getEmail() + ", please, check your mail and confirm registration."
                , "Hello, " + user.getFullName() + " :)");
    }
    
    /**
     * Method is handler for RegistrationUserException
     * @param response
     * @param ex
     * @return view with error response
     */
    @ExceptionHandler(RegistrationUserException.class)
    @ResponseBody
    public Response handlePersistenceException(HttpServletResponse response, RegistrationUserException ex) {
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        return Response.error(ex.getMessage(), ex.getMessageDetails());
    }
    
    /**
     * Method for confirmation registration
     * @param uuid
     * @param mv
     * @return view about result of registration
     */
    @RequestMapping(value = "/confirm/{uuid}", method = RequestMethod.GET)
    public ModelAndView confirm(@PathVariable("uuid") String uuid, ModelAndView mv) {
        boolean confirm = registrationService.confirmRegistration(uuid);        
        mv.addObject("confirm", confirm);
        mv.setViewName("confirmation");
        return mv;
    }
}