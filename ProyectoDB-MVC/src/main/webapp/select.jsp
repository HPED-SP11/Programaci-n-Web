<%-- 
    Document   : select
    Created on : 12 mar 2026, 11:00:17 a.m.
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELECT - Bases de Datos con MVC</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <header>
            <div class="header-left"><p>&ltHPED&gt</p></div>
            <div class="header-center"><h2>MVC para INSERT en DB MySQL</h2></div>
            <div class="header-right"><p>Marzo 12, 2026</p></div>
        </header>
        <div class="form">
            <form action="SelectAlumnoDAO" method="POST">
                <table border="0">
                    <tr>
                        <th>Código:</th>
                        <td><input type="number" min="0" name="codigo" required></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Buscar"></td>
                    </tr>
                    <tr>
                        <td><a href="index.jsp">Volver al menú.</a></td>
                    </tr>
                </table>
            </form>
        </div>
        <footer>
            <ul>
                <li>Hernández Pérez, Edgar Daniel - 221770108 - Universidad de Guadalajara</li>
                <li>
                    <a href="https://github.com/HPED-SP11" target="_blank">
                        <i class="bi bi-github"></i>
                    </a>
                    <a href="https://gitlab.com/hped" target="_blank">
                        <i class="bi bi-gitlab"></i>
                    </a>
                    <a href="https://www.linkedin.com/in/edgar-perez-hped" target="_blank">
                        <i class="bi bi-linkedin"></i>
                    </a>
                    <a href="https://bsky.app/profile/hped.bsky.social" target="_blank">
                        <i class="bi bi-bluesky"></i>
                    </a>
                </li>
            </ul>
        </footer>
    </body>
</html>
