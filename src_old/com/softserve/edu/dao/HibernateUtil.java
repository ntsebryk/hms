package com.softserve.edu.dao;

import org.hibernate.SessionFactory;
import org.hibernate.SessionFactoryObserver;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.registry.internal.StandardServiceRegistryImpl;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

    private static SessionFactory sessionFactory = null;
    private static ServiceRegistry serviceRegistry;
    private static Configuration configuration;

    static {

        try {

            configuration = new Configuration();

            configuration.configure();

            serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();

            sessionFactory = configuration.buildSessionFactory(serviceRegistry);

        } catch (Exception e) {
            e.printStackTrace();
        }

//        configuration.setSessionFactoryObserver(new SessionFactoryObserver() {
//
//            private static final long serialVersionUID = 1L;
//
//            @Override
//            public void sessionFactoryCreated(SessionFactory factory) {
//
//            }
//
//            @Override
//            public void sessionFactoryClosed(SessionFactory factory) {
//                // StandardServiceRegistryBuilder.destroy(serviceRegistry);
//                // ((StandardServiceRegistryImpl) serviceRegistry).destroy();
//            }
//        });
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public static void destroyServiceRegistry() {
        //StandardServiceRegistryBuilder.destroy(serviceRegistry);
        ((StandardServiceRegistryImpl) serviceRegistry).destroy();
    }
    
}




















