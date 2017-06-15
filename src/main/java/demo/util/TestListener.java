package demo.util;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by mingfei.net@gmail.com
 * 6/15/17 08:37
 * https://github.com/thu/JavaEE_1702/
 */
@WebListener
public class TestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) { // event 事件
        System.out.println("requestDestroyed.");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("requestInitialized.");
    }
}
