<%-- 
    Document   : index
    Created on : Mar 6, 2026, 10:21:41 PM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primer Versión - Insert a DB con Servlet</title>
        <link rel="stylesheet" href="Styles.css" />
    </head>
    <body>
        <header>
            <h2>Insert utilizando MySQL y Conector/J driver.</h2>
        </header>
        <div class="form">
            <form action="Consulta" method="POST">
                <table border="0">
                    <tr>
                        <th class="th">Código</th>
                        <td><input type="number" name="coudeg" required class="num"></td>
                    </tr>
                    <tr>
                        <th class="th">Nombre</th>
                        <td><input type="text" name="nombre" required class="txt"></td>
                    </tr>
                    <tr>
                        <th class="th">Domicilio</th>
                        <td><input type="text" name="domicilio" required class="txt"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Enviar a la DB"></td>
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
