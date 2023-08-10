<%-- 
    Document   : register
    Created on : Jul 30, 2023, 1:14:20 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.PreparedStatement"%>

<%--<%@page import="classes.MD5" %>--%>
<%@page import="java.sql.*" %>
<%

    
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    Part image = request.getPart("image"); // Assuming you handle the image upload separately
    String publication = request.getParameter("publication");
    String director = request.getParameter("director");
    String review = request.getParameter("review");
    String category = request.getParameter("categories");
    Part imgdata = request.getPart("image");
//    String password = MD5.getMd5(request.getParameter("password"));
    InputStream imageInputStream = image.getInputStream();
    String query = "INSERT INTO movie (Movie_ID, Movie_Name, Image, Release_Date, Director, Review, Categories) VALUES (?, ?, ?, ?, ?, ?, ?)";
    Connection con = DbConnector.getConnection();
    PreparedStatement pstmt = con.prepareStatement(query);
    InputStream is = imgdata.getInputStream();
    pstmt.setString(1, id);
    pstmt.setString(2, title);
    pstmt.setBlob(3, imageInputStream);
    pstmt.setString(4, publication);
    pstmt.setString(5, director);
    pstmt.setString(6, review);
    pstmt.setString(7, category);
    int a = pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <% if (a > 0) { %>
        <script>
            alert("Successfully Saved");
            window.location = 'admin.jsp';
        </script>
        <% } else { %>
        <script>
            alert("Error Occurred");
        </script>
        <% }%>
    </body>
</html>
