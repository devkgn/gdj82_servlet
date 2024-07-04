package com.gn.common;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


// @WebListener
public class ContextListenerTest implements ServletContextListener {


    public ContextListenerTest() {
    }


    public void contextDestroyed(ServletContextEvent sce)  {
    	System.out.println("웹 애플리케이션 종료됨");
    }


    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("웹 애플리케이션 실행됨");
    }
	
}
