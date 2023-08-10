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
        session.setAttribute("user", "sasith");
        response.sendRedirect("index.html");
    } else {
        response.sendRedirect("login.jsp?status=0");
    }
%>
