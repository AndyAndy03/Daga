<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OK</title>
</head>
<body>
ok
<%
RequestDispatcher dispatcher = request.getRequestDispatcher("/");
dispatcher.forward(request, response);
%>
</body>
</html>