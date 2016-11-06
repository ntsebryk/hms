package com.softserve.edu.web;

import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;
import com.softserve.edu.repository.CardRecordRepository;
import com.softserve.edu.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

public class CustomAuthenticationSucessHandler extends SimpleUrlAuthenticationSuccessHandler {

    @Autowired
    UserRepository userRepo;

    @Autowired
    CardRecordRepository cardRecordRepo;

    /**
     * write in response defaultTargetUrl and then
     * calls {@code clearAuthenticationAttributes()} to remove any leftover session data.
     * @param request
     * @param response
     * @param authentication
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {

        response.getWriter().print(getDefaultTargetUrl(authentication));
        response.getWriter().flush();
        clearAuthenticationAttributes(request);
    }

    public String getDefaultTargetUrl(Authentication authentication) {
        List<GrantedAuthority> authorities = (List<GrantedAuthority>) authentication.getAuthorities();
        setDefaultTargetUrl("/patient");


        for (GrantedAuthority authority : authorities) {

            if (Role.valueOf(authority.getAuthority()).equals(Role.ROLE_DOCTOR)) {
                setDefaultTargetUrl("/docRecord");
            }

            if (Role.valueOf(authority.getAuthority()).equals(Role.ROLE_LABMANAGER)) {
                setDefaultTargetUrl("/laboratory");
            }

            if (Role.valueOf(authority.getAuthority()).equals(Role.ROLE_PHARMACIST)) {
                setDefaultTargetUrl("/pharmacist");
            }

            if (Role.valueOf(authority.getAuthority()).equals(Role.ROLE_MANAGER)) {
                setDefaultTargetUrl("/admin-manager");
                break;
            }

            if (Role.valueOf(authority.getAuthority()).equals(Role.ROLE_PATIENT)) {
                List<CardRecord> cr = cardRecordRepo.findActiveCardsByLogin(authentication.getName());
                if(cr.size() > 0) {
                    setDefaultTargetUrl("/patient");
                    break;
                }
            }
        }

        return getDefaultTargetUrl();
    }
}