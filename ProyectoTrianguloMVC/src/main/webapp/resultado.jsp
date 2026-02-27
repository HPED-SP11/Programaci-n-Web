<%-- 
    Document   : resultado
    Created on : Feb 26, 2026, 10:15:38 AM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="modelo.Triangulo" %>

<%
    Triangulo t = (Triangulo) request.getAttribute("datoTriangulo");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultados de la Operación</h1>
        
        <h2>Resultado del Cálculo</h2>
        
        <p>El área calculada es: **<%= t.getArea() %>**</p>
        
        <a href="index.jsp">Intentar con otros valores.</a>
    </body>
</html>
