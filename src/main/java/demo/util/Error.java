package demo.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mingfei.net@gmail.com
 * 6/14/17 16:10
 * https://github.com/thu/JavaEE_1702/
 */
public class Error {

    public static void showErrorMessage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("message", "Error.");
        req.getRequestDispatcher("default.jsp").forward(req, resp);
    }
}
