package demo.util;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by mingfei.net@gmail.com
 * 6/15/17 08:37
 * https://github.com/thu/JavaEE_1702/
 */
//@WebListener
public class RequestListenerTest implements ServletRequestListener, ServletRequestAttributeListener {

    @Override
    public void requestDestroyed(ServletRequestEvent sre) { // event 事件
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("requestDestroyed: " + request.getRequestURL());
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("requestInitialized: " + request.getRequestURL());
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {
        // request.setAttribute()
        System.out.println("attributeAdded: " + srae.getName() + ", " + srae.getValue());
    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) {
        //
        System.out.println("attributeRemoved: " + srae.getName() + ", " + srae.getValue());
    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) {
        //
        System.out.println("attributeReplaced: " + srae.getName() + ", " + srae.getValue());
    }
}
