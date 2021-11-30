<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students</title>
</head>
<body>
    <table border="1">
            <th>ID</th>
            <th>UserName</th>
            <th>Password</th>
            <c:forEach items="${message}" var="account">
                <tr>
                    <td>${account.aid}</td>
                    <td>${account.userName}</td>
                    <td>${account.password}</td>
                </tr>
            </c:forEach>                 
        </table>
</body>
</html>
