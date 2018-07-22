<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<jsp:useBean id="name" scope="request" class="java.lang.String"/>
<jsp:useBean id="todos" scope="request" type="java.util.List<webapp.Todo>"/>

<html>
<head>
    <title>Yahoo!!</title>
</head>
<body>
<H2>Welcome ${name}</H2>
<div>
    Your Todos are
    ${todos}
</div>
</body>
</html>