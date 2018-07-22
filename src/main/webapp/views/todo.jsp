<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="name" scope="request" class="java.lang.String"/>
<jsp:useBean id="todos" scope="request" type="java.util.List<in28minutes.todo.Todo>"/>

<html>
<head>
    <title>Yahoo!!</title>
</head>
<body>
<H2>Welcome ${name}</H2>
    <div>
        Your Todos are
        <ol>
            <c:forEach items="${todos}" var="todo">
                <li>${todo.name}</li>
            </c:forEach>
        </ol>
    </div>
</body>
</html>
