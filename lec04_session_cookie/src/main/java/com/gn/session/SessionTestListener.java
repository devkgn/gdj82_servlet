package com.gn.session;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionTestListener implements HttpSessionListener, HttpSessionAttributeListener {


    public SessionTestListener() {}


    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("세션 시작");
    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
    	System.out.println("세션 종료");
    }

    public void attributeAdded(HttpSessionBindingEvent se)  { 
    	System.out.println("세션 속성 추가");
    }


    public void attributeRemoved(HttpSessionBindingEvent se)  { 
    	System.out.println("세션 속성 제거");
    }


    public void attributeReplaced(HttpSessionBindingEvent se)  { 
    	System.out.println("세션 속성 대체");
    }
	
}
