<%-- 
    Document   : consultarAlumnos
    Created on : Apr 15, 2026, 11:09:41 PM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Alumno"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELECT * - Bases de Datos con MVC</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/><!--Bootstrap-->
    </head>
    <body>
        <header>
            <div class="header-left"><p>&ltHPED&gt</p></div>
            <div class="header-center"><h2>MVC para INSERT en DB MySQL</h2></div>
            <div class="header-right"><p>Marzo 12, 2026</p></div>
        </header>
        <div class="form-select">
            <h3>Lista de datos registrados:</h3><br>
            
            <!--<p style="font-size: 1.2em; font-weight: bold;">${resultado}</p>-->
            
            <table class="tabla-select">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Domicilio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Alumno> lista = (ArrayList<Alumno>) request.getAttribute("lista");
                            if (lista != null) {
                                for (Alumno a : lista) {
                        %>
                    <tr>
                        <td><%= a.getCodigo() %></td>
                        <td><%= a.getNombre() %></td>
                        <td><%= a.getDomicilio() %></td>
                        <td>
                            <a href="EliminarAlumnoServlet?codigo=<%= a.getCodigo() %>"
                               class="btn-eliminar"
                               onclick="return confirm('¿Estás seguro de eliminar a este alumno?')">
                                <i class="bi bi-trash3-fill"></i>
                            </a>
                        </td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr><td colspan="3">No hay registros en la base de datos.</td></tr>
                    <% } %>
                </tbody>
            </table>
            
            <br><br>
            <a href="index.jsp" class="btn-volver">
                Volver al menú
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
