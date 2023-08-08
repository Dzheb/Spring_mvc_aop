<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Document</title>
</head>
<body>
<div style="display: flex;flex-direction: column;
align-items:center;border-radius:24px;width:900px;margin:24px;
padding:24px;color:#1e0d46;font-size: 36px;
background-color: #bdaea4"><h2>All Employees</h2>
<br>
<table>

    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
<c:forEach var = "emp" items="${allEmps}">
    <c:url var="updateButton" value="/updateInfo">
        <c:param name="empId" value="${emp.id}"/>
    </c:url>
    <c:url var="deleteButton" value="/deleteEmployee">
        <c:param name="empId" value="${emp.id}"/>
    </c:url>
    <tr>
        <td>${emp.name}</td>
        <td>${emp.surname}</td>
        <td>${emp.department}</td>
        <td>${emp.salary}</td>
        <td>
               <input style="font-size: 36px;font-family: New Roman;" type="button" value="Update"
                      onclick="window.location.href = '${updateButton}'"/>
                <input style="font-size: 36px;font-family: New Roman;" type="button" value="Delete"
                   onclick="window.location.href = '${deleteButton}'"/>
        </td>
    </tr>
</c:forEach>
</table>
    <br>
    <input style="font-size: 36px;font-family: New Roman;"
           type="button" value="Add" onclick="window.location.href='addNewEmployee'"/>
</div>
</body>
</html>
