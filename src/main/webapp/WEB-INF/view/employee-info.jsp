<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Document</title>
</head>
<body>
<div style="display: flex;flex-direction: column;
align-items:center;border-radius:24px;width:700px;margin:24px;
padding:24px;color:#1e0d46;font-size: 36px;
background-color: #bdaea4">
    <br>
    <h2>Employee Info</h2>
    <br>
    <form:form action="saveEmployee" modelAttribute="employee">
        <form:hidden path="id"/>
        Name <form:input path="name"
                         style="font-size: 36px;font-family: New Roman;"/>
        <br><br>
        Surname <form:input path="surname"
                            style="font-size: 36px;font-family: New Roman;"/>
        <br><br>
        Department <form:input path="department"
                               style="font-size: 36px;font-family: New Roman;"/>
        <br><br>
        Salary <form:input path="salary"
                           style="font-size: 36px;font-family: New Roman;"/>
        <br><br>
        <input style="font-size: 36px;font-family: New Roman;"
               type="submit" value="Ok"/>
    </form:form>
</div>
</body>
</html>
