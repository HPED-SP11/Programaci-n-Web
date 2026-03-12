<%-- 
    Document   : respuesta
    Created on : Mar 9, 2026, 5:34:50 PM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de la operación</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <header>
            <div class="header-left"><p>&ltHPED&gt</p></div>
            <div class="header-center"><h2>MVC para INSERT en DB MySQL</h2></div>
            <div class="header-right"><p>Marzo 9, 2026</p></div>
        </header>
        <div class="form" style="text-align: center; margin: 20px; padding: 20px;">
            <h3>Resultado de la operación:</h3>
            
            <p style="font-size: 1.2em; font-weight: bold;">${resultado}</p>
            
            <br>
            <a href="index.jsp" style="text-decoration: none; padding: 10px 20px; background-color: #e24329; color: white; border-radius: 5px;">
                Volver al formulario
            </a>
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
