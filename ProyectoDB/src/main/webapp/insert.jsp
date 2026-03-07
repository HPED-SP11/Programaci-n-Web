<%-- 
    Document   : insert
    Created on : Mar 7, 2026, 12:10:34 AM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado del INSERT</title>
        <link rel="stylesheet" href="Styles.css" />
    </head>
    <body>
        <header>
            <h2>Insert utilizando MySQL y Conector/J driver.</h2>
        </header>
        <div class="form" style="text-align: center; margin: 20px; padding: 20px;">
            <h3>Resultado de la operación:</h3>
            
            <p style="font-size: 1.2em; font-weight: bold;">${resultado}</p>
            
            <br>
            <a href="index.jsp" style="text-decoration: none; padding: 10px 20px; background-color: #007BFF; color: white; border-radius: 5px;">
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
