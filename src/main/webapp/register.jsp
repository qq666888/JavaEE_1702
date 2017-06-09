<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.util.Db" %>
<%
    String nick = request.getParameter("nick").trim();
    String mobile = request.getParameter("mobile").trim();
    String password = request.getParameter("password");

    if (nick.length() == 0 || mobile.length() == 0 || password.length() == 0) {
        request.setAttribute("message", "....");
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    String[] hobbies = request.getParameterValues("hobbies");
    String[] cities = request.getParameterValues("cities");

    Connection connection = Db.getConnection();

    String sqlNick = "SELECT * FROM db_javaee.user WHERE nick = ?";
    PreparedStatement statement = connection.prepareStatement(sqlNick);
    statement.setString(1, nick);
    ResultSet resultSet = statement.executeQuery();
    boolean isNickExist = resultSet.next();

    String sqlMobile = "SELECT * FROM db_javaee.user WHERE mobile = ?";
    statement = connection.prepareStatement(sqlMobile);
    statement.setString(1, mobile);
    resultSet = statement.executeQuery();
    boolean isMobileExist = resultSet.next();

    if (isNickExist) {
        request.setAttribute("message", "昵称已经存在");
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    } else if (isMobileExist) {
        request.setAttribute("message", "手机号已经存在");
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    } else {
        String sql = "INSERT INTO db_javaee.user VALUE (NULL ,?,?,?,?,?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1, nick);
        statement.setString(2, mobile);
        statement.setString(3, password);
        statement.setString(4, Arrays.toString(hobbies));
        statement.setString(5, Arrays.toString(cities));
        statement.executeUpdate();
        response.sendRedirect("index.jsp");
    }
    Db.close(resultSet, statement, connection);
%>
