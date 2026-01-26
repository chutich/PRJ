<%-- Document : search Created on : Jan 19, 2026, 11:26:03 AM Author : Thua --%>

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
        <form action="search.jsp" method="post">
            <%
                String searchValue = request.getParameter("username") != null ? request.getParameter("username") : "";
            %>
            <input type="text" name="username" value="<%=searchValue%>" style="width: 97.5vw;height: 25px;margin: auto;align-self: center">
            <input type="submit" value="Search">
        </form>

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
                <%
                    List<UniversityDTO> ul = ((List<UniversityDTO>) request.getAttribute("listUniversity"));
                    if (!ul.isEmpty()) {
                        for (UniversityDTO u : ul) {
                %>
                <tr>
                    <td><%=u.getId()%></td>
                    <td><%=u.getName()%></td>
                    <td><%=u.getShortName()%></td>
                    <td><%=u.getDescription()%></td>
                    <td><%=u.getFoundedYear()%></td>
                    <td><%=u.getAddress()%></td>
                    <td><%=u.getCity()%></td>
                    <td><%=u.getRegion()%></td>
                    <td><%=u.getType()%></td>
                    <td><%=u.getTotalStudents()%></td>
                    <td><%=u.getTotalFaculties()%></td>
                    <td><%=u.isIsDraft()%></td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>

    </body>

</html>