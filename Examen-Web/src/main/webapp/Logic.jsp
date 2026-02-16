<%-- 
    Document   : Logic
    Created on : 15 feb 2026, 8:06:01 p.m.
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*, modelo.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                
                String usr = request.getParameter("user");
                String pass = request.getParameter("psswd");

                List<Usuario> lista = new ArrayList<Usuario>();
                lista.add (new Usuario("Estudiante 1", "Estudiante1"));
                lista.add (new Usuario("Estudiante 2", "Estudiante2"));
                lista.add (new Usuario("Estudiante 3", "Estudiante3"));
                
                boolean registrado = false;
                for(Usuario user : lista) {
                    if(user.getUsername().equals(usr) && user.getPassword().equals(pass)) {
                        registrado = true;
                        session.setAttribute("usuarioRegistrado", usr);
                        break;
                    }
                } 
                if(registrado){
                    response.sendRedirect("Examen.jsp");
                } else {
                    out.println("<script>alert('Ingresaste datos erroneos'); window.location='LogIn.jsp';</script>");
                }
                
        } catch(Exception e) {
            out.println("<br><br>Ingresa tus credenciales de estudiante");
        }
        %>
    </body>
</html>
