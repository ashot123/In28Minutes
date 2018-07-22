<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="name" scope="request" class="java.lang.String"/>
<jsp:useBean id="todos" scope="request" type="java.util.List<in28minutes.todo.Todo>"/>
<jsp:useBean id="errorMessage" scope="request" class="java.lang.String"/>


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
        <p><font color="red">${errorMessage}</font></p>
        <%--<form method="POST" action="${pageContext.request.contextPath}/todo.do">--%>
        <form method="POST" action="/todo.do">
            New Todo : <input name="todo" type="text" />
            <input name="add" type="submit" />
        </form>
    </div>
</body>
</html>
