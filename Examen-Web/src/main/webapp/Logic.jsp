<%-- 
    Document   : Logic
    Created on : 15 feb 2026, 8:06:01 p.m.
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
        <%
            try {

                String usuario1 = "Estudiante 1";
                String passwrd1 = "Estudiante1";
                String examen1;
                
                String usuario2 = "Estudiante 2";
                String passwrd2 = "Estudiante2";
                String examen2;
                
                String usuario3 = "Estudiante 3";
                String passwrd3 = "Estudiante3";
                String examen3;
                
                usuario1 = request.getParameter("user");
                passwrd1 = request.getParameter("psswd");
                
                usuario2 = request.getParameter("user");
                passwrd2 = request.getParameter("psswd");
                
                usuario3 = request.getParameter("user");
                passwrd3 = request.getParameter("psswd");
                
                if((request.getParameter("user").equals(usuario1 = "Estudiante 1") && request.getParameter("psswd").equals(passwrd1 = "Estudiante1")) || (request.getParameter("user").equals(usuario2 = "Estudiante 2") && request.getParameter("psswd").equals(passwrd2 = "Estudiante2")) || (request.getParameter("user").equals(usuario3 = "Estudiante 3") && request.getParameter("psswd").equals(passwrd3 = "Estudiante3"))) {
                    response.sendRedirect("Examen.jsp");
                } else {
                    out.println("<br><br>Ingresaste datos erroneos");
                }

        } catch(Exception e) {
            out.println("<br><br>Ingresa tus credenciales de estudiante");
        }
        %>
    </body>
</html>
