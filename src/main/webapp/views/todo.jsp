<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="name" scope="request" class="java.lang.String"/>
<jsp:useBean id="todos" scope="request" type="java.util.List<in28minutes.todo.Todo>"/>
<jsp:useBean id="errorMessage" scope="request" class="java.lang.String"/>

<!DOCTYPE html>
<html>
<head>
    <title>Yahoo!!</title>
    <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<H1>Welcome ${name}</H1>
<div>
    Your Todos are
    <ol>
        <c:forEach items="${todos}" var="todo">
            <li>${todo.name} <a href="/deletetodo.do?todo=${todo.name}">Delete</a></li>
        </c:forEach>
    </ol>

    <p>
        <font color="red">${errorMessage}</font>
    </p>
    <form method="POST" action="/todo.do">
        New Todo : <input name="todo" type="text" /> <input name="add"
                                                            type="submit" />
    </form>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>