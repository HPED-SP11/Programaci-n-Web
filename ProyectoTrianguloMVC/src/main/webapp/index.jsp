<%-- 
    Document   : index
    Created on : Feb 26, 2026, 10:13:57 AM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MVC sencillo.</h1>
        <form action="CalculadoraServer" method="POST">
            <table border="0">
                <tr>
                    <th>Base:</th>
                    <td><input type="text" name="base"></td>
                </tr>
                <tr>
                    <th>Altura:</th>
                    <td><input type="text" name="altura"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Calcular con Java"></td>
                </tr>
        </form>
    </body>
</html>
