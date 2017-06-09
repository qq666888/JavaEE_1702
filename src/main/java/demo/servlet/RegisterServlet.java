package demo.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mingfei.net@gmail.com
 * 6/9/17 10:54
 * https://github.com/thu/JavaEE_1702/
 * servlet 服务器端小程序
 * 1. 接收请求
 * 2. 处理请求
 * 3. 返回响应
 */
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
