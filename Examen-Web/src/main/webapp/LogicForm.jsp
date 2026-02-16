<%-- 
    Document   : LogicForm
    Created on : 15 feb 2026, 8:07:27 p.m.
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>.bien {color: greenyellow; font-weight: bold;} .mal {color: red; font-weight: bold;} body {font-family: 'Google Sans', sans-serif; font-optical-sizing: auto; margin: 1.2rem;}</style>
    </head>
    <body>
        <h1>Resultados:</h1>
        <%
            String p1 = request.getParameter("P1");
            String[] p2 = request.getParameterValues("P2");
            String[] p3 = request.getParameterValues("P3");
            String p4 = request.getParameter("P4");
            String p5 = request.getParameter("P5");
            String p6 = request.getParameter("P6");
            String p7 = request.getParameter("P7");
            String[] p8 = request.getParameterValues("P8");
            String[] p9 = request.getParameterValues("P9");
            String[] p10 = request.getParameterValues("P10");
            
            int aciertos = 0;
            
            out.println("<p>Pregunta 1: ");
            if ("intranet".equals(p1)) {
                out.print("<span class='bien'>Correcta</span>");
                aciertos++;
            } else {
                out.print("<span class='mal'>Incorrecta (Era Intranet)</span>");
            }
            out.print("</p>");
            
            out.print("<p>Pregunta 2: ");
            boolean p2_correcta = false;
            if (p2 != null && p2.length == 2) {
                int correctasP2 = 0;
                for(String val : p2) {
                    if(val.equals("distancia") || val.equals("entorno")) correctasP2++;
                }
                if(correctasP2 == 2) { p2_correcta = true; aciertos++; }
            }
            out.print(p2_correcta ? "<span class='bien'>Correcta</span>" : "<span class='mal'>Incorrecta</span>");
            out.print("</p>");
            
            out.print("<p>Pregunta 3: ");
            boolean p3_correcta = false;
            if (p3 != null && p3.length == 2) {
                int correctasP3 = 0;
                for(String val : p3) {
                    if(val.equals("firewall") || val.equals("antivirus")) correctasP3++;
                }
                if(correctasP3 == 2) { p3_correcta = true; aciertos++; }
            }
            out.print(p3_correcta ? "<span class='bien'>Correcta</span>" : "<span class='mal'>Incorrecta</span>");
            out.print("</p>");
            
            out.println("<p>Pregunta 4: ");
            if ("svi".equals(p4)) {
                out.print("<span class='bien'>Correcta</span>");
                aciertos++;
            } else {
                out.print("<span class='mal'>Incorrecta (Era La interfaz virtual del switch)</span>");
            }
            out.print("</p>");
            
            out.println("<p>Pregunta 5: ");
            if ("completar".equals(p5)) {
                out.print("<span class='bien'>Correcta</span>");
                aciertos++;
            } else {
                out.print("<span class='mal'>Incorrecta (Era Completa el resto de una palabra escrita parcialmente en un comando)</span>");
            }
            out.print("</p>");
            
            out.println("<p>Pregunta 6: ");
            if ("lineconin".equals(p6)) {
                out.print("<span class='bien'>Correcta</span>");
                aciertos++;
            } else {
                out.print("<span class='mal'>Incorrecta (Era lineconin)</span>");
            }
            out.print("</p>");
            
            out.println("<p>Pregunta 7: ");
            if ("svi".equals(p7)) {
                out.print("<span class='bien'>Correcta</span>");
                aciertos++;
            } else {
                out.print("<span class='mal'>Incorrecta (Era Una interfaz virtual de switch)</span>");
            }
            out.print("</p>");
            
            out.print("<p>Pregunta 8: ");
            boolean p8_correcta = false;
            if (p8 != null && p8.length == 2) {
                int correctasP8 = 0;
                for(String val : p8) {
                    if(val.equals("contram") || val.equals("configram")) correctasP8++;
                }
                if(correctasP8 == 2) { p8_correcta = true; aciertos++; }
            }
            out.print(p8_correcta ? "<span class='bien'>Correcta</span>" : "<span class='mal'>Incorrecta</span>");
            out.print("</p>");
            
            out.print("<p>Pregunta 9: ");
            boolean p9_correcta = false;
            if (p9 != null && p9.length == 2) {
                int correctasP9 = 0;
                for(String val : p9) {
                    if(val.equals("SwBranch799") || val.equals("RM-3-Switch-2A4")) correctasP9++;
                }
                if(correctasP9 == 2) { p9_correcta = true; aciertos++; }
            }
            out.print(p9_correcta ? "<span class='bien'>Correcta</span>" : "<span class='mal'>Incorrecta</span>");
            out.print("</p>");
            
            out.print("<p>Pregunta 10: ");
            boolean p10_correcta = false;
            if (p10 != null && p10.length == 3) {
                int correctasP10 = 0;
                for(String val : p10) {
                    if(val.equals("remoto") || val.equals("nofisico") || val.equals("vlan")) correctasP10++;
                }
                if(correctasP10 == 3) { p10_correcta = true; aciertos++; }
            }
            out.print(p10_correcta ? "<span class='bien'>Correcta</span>" : "<span class='mal'>Incorrecta</span>");
            out.print("</p>");
        %>
    </body>
</html>
