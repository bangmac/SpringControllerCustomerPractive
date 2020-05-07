<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
    <style>
        table {
            border: 1px solid #000;
        }

        th, td {
            border: 1px dotted #555;
        }
    </style>
</head>
<body>
There are <span th:text="${customers.size()}"></span> customer(s).
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>delete</th>
        <th>view</th>
    </tr>
    </thead>
    <tbody>
    <tr th:each="c : ${customers}">
        <td th:text="${c.id}"></td>
        <td>
            <a th:href="@{/customers/{id}(id=${c.id})}" th:text="${c.name}"></a>
        </td>
        <td th:text="${c.email}"></td>
        <td th:text="${c.address}"></td>
        <td>
            <a th:href="@{/customers/{id}(id=${c.id})}">delete</a>
        </td>
        <td>
            <a th:href="@{/customers/{id}(id=${c.id})}">view</a>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>