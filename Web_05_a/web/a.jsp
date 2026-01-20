<%-- 
    Document   : a
    Created on : Jan 19, 2026, 10:17:26 AM
    Author     : Thua
--%>

<%@page import="Model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller</title>
    </head>
    <body>
        <h1>Chao mung ban <%=((UserDTO)session.getAttribute("user")).getFullName()%> da dang nhap thanh cong</h1>
        <h2><a href="MainController?action=logout">logout</a></h2>
        <h2><a href="dashboard.jsp">dashboard</a></h2>
    </body>
</html>
