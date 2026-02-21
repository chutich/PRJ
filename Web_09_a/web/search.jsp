<%-- Document : search Created on : Jan 19, 2026, 11:26:03 AM Author : Thua --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Model.UniversityDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>

    <body>
        <c:if test="${empty user}">
            <c:redirect url="Login.jsp"/>
        </c:if>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="Search">
            <input type="text" name="keywords" value="${keywords}" style="width: 97.5vw;height: 25px;margin: auto;align-self: center">
            <input type="submit" value="Search">
        </form>
        <c:if test="${empty list}">
            <h1>not found</h1>
        </c:if>
        <c:if test="${not empty list}">
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>name</th>
                        <th>shortName</th>
                        <th>description</th>
                        <th>foundedYear</th>
                        <th>address</th>
                        <th>city</th>
                        <th>region</th>
                        <th>type</th>
                        <th>totalStudents</th>
                        <th>totalFaculties</th>
                        <th>isDraft</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="u">
                        <tr>
                            <td>${u.id}</td>
                            <td>${u.name}</td>
                            <td>${u.shortName}</td>
                            <td>${u.description}</td>
                            <td>${u.foundedYear}</td>
                            <td>${u.address}</td>
                            <td>${u.city}</td>
                            <td>${u.region}</td>
                            <td>${u.type}</td>
                            <td>${u.totalStudents}</td>
                            <td>${u.totalFaculties}</td>
                            <td>
                                <c:if test="${u.isDraft}">
                                    <input type="submit" value="Update">
                                </c:if>
                            </td>
                            <td>  
                                <form action="MainController" method="post"
                                      onsubmit="return confirm('Bạn có chắc chắn muốn xóa trường đại học này không?');">
                                    <input type="hidden" name="action" value="deleteUniversity"/>
                                    <input type="hidden" name="id" value="${u.id}"/>
                                    <input type="hidden" name="keywords" value="${keywords}"/>
                                    <input type="submit" value="Delete"/>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </body>
</html>