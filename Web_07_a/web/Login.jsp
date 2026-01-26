<%-- 
    Document   : Login
    Created on : Jan 19, 2026, 9:40:04 AM
    Author     : Thua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form name="login" action="MainController" method="POST">
            <input type="hidden" name="action" value="login">
            Username<input type="text" name="username" required></br>
            Password <input type="password" name="password" required></br>
            <input type="submit" value="login">
        </form>
        <%
            String mess = request.getAttribute("mess")+ "";
            mess = (mess.equals("null"))? "":mess;
        %>
        <span style="color: rgb(82, 13, 13)"><%=mess%></span>
        
        <script>
            
        </script>
    </body>
</html>
