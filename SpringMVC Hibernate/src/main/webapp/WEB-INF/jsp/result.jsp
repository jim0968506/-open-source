<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
<h2>Submitted Account Information</h2>
<h2>${flag}</h2>
      <table>
         <tr>
            <td>UserName</td>
            <td>${userName}</td>
         </tr>
         <tr>
            <td>Password</td>
            <td>${password}</td>
         </tr>
         <tr>
            <td>Phone</td>
            <td>${aid}</td>
         </tr>
      </table>  
</body>
</html>