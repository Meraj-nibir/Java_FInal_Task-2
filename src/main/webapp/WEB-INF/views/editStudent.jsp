<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>
<body>

<h2>Edit Student</h2>

<form action="<c:url value='/students/${student.id}/edit'/>" method="post">
    <input type="hidden" name="id" value="${student.id}"/>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${student.name}" required/>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${student.email}" required/>

    <label for="dateOfBirth">Date of Birth:</label>
    <input type="date" id="dateOfBirth" name="dateOfBirth" value="${student.dateOfBirth}" required/>

    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
        <option value="MALE" ${student.gender == 'MALE' ? 'selected' : ''}>Male</option>
        <option value="FEMALE" ${student.gender == 'FEMALE' ? 'selected' : ''}>Female</option>
    </select>

    <label for="quota">Quota:</label>
    <input type="text" id="quota" name="quota" value="${student.quota}" required/>

    <label for="country">Country:</label>
    <input type="text" id="country" name="country" value="${student.country}" required/>

    <button type="submit">Save Changes</button>
</form>

</body>
</html>
