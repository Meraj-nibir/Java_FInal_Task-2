<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
</head>
<body>

<h2>Student Details</h2>

<table>
    <tr>
        <td>ID:</td>
        <td>${student.id}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>${student.name}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${student.email}</td>
    </tr>
    <tr>
        <td>Date of Birth:</td>
        <td>${student.dateOfBirth}</td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td>${student.gender}</td>
    </tr>
    <tr>
        <td>Quota:</td>
        <td>${student.quota}</td>
    </tr>
    <tr>
        <td>Country:</td>
        <td>${student.country}</td>
    </tr>
</table>

</body>
</html>
