/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.AlumnoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author hpede
 */
@WebServlet(name = "ConfirmarDatosAlumnoDAO", urlPatterns = {"/ConfirmarDatosAlumnoDAO"})
public class ConfirmarDatosAlumnoDAO extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConfirmarDatosAlumnoDAO</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfirmarDatosAlumnoDAO at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String codigoStr = request.getParameter("codigo");
        String nombreStr = request.getParameter("nombre");
        String domicilioStr = request.getParameter("domicilio");
        
        int codigo = 0;
        if (codigoStr != null && !codigoStr.isEmpty()) {
            codigo = Integer.parseInt(codigoStr);
        }

        AlumnoDAO dao = new AlumnoDAO();
        
        try {
            boolean actualizadoCorr;
            if (nombreStr != null)
                actualizadoCorr = dao.actualizarNombre(Integer.parseInt(codigoStr), nombreStr);
            else
                actualizadoCorr = dao.actualizarDomicilio(Integer.parseInt(codigoStr), domicilioStr);
            
            if(actualizadoCorr)
                response.setStatus(HttpServletResponse.SC_OK);
            else
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (IOException | NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (SQLException ex) {
            System.getLogger(ConfirmarDatosAlumnoDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
