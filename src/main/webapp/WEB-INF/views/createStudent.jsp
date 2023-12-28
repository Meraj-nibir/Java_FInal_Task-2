<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
</head>
<body>

<h2>Create Student</h2>

<form action="<c:url value='/students/create'/>" method="post" modelAttribute="student">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required/>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required/>

    <label for="dateOfBirth">Date of Birth:</label>
    <input type="date" id="dateOfBirth" name="dateOfBirth" required/>

    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
        <option value="MALE">Male</option>
        <option value="FEMALE">Female</option>
    </select>

    <label for="quota">Quota:</label>
    <input type="text" id="quota" name="quota" required/>

    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required/>

    <button type="submit">Create Student</button>
</form>

</body>
</html>
