<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<jsp:useBean id="name" type="java.lang.String" scope="request"/>
<jsp:useBean id="password" type="java.lang.String" scope="request"/>
<html>
<head>
    <title>Yahoo!!</title>
</head>
<body>
My First JSP!!! My name is ${name} and password is ${password}
</html>