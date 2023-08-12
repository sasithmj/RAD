<%-- 
    Document   : logincon
    Created on : Aug 7, 2023, 9:58:30 PM
    Author     : sasit
--%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page session="true" %>
<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User(username, password);
    if (user.authenticate(DbConnector.getConnection())) {
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(60 * 60 * 24);
        response.addCookie(cookie);
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("login.jsp?status=0");
    }
%>
