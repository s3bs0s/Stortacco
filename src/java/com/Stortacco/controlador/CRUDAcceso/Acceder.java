package com.Stortacco.controlador.CRUDAcceso;

import com.Stortacco.modelo.Conectadb;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Acceder extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        try {
            String emailU = request.getParameter("email");
            String passU = request.getParameter("pass");
            
            Conectadb cdb = new Conectadb();
            Connection con = cdb.conectar();
            PreparedStatement ps;
            ResultSet rs;
            ps = con.prepareStatement("SELECT * FROM usuarios WHERE Email=? AND Password=?;");
            ps.setString(1, emailU);
            ps.setString(2, passU);
            rs = ps.executeQuery();
            if (rs.next()){
                String rol= rs.getString("Rol");
                int idU= rs.getInt("idUsuarios");
                String nomU = null;
                
                ps.close();
                rs.close();
                ps = con.prepareStatement("SELECT * FROM informacion_usuarios WHERE idUsuario=?;");
                ps.setInt(1, idU);
                rs = ps.executeQuery();
                if (rs.next()){
                    nomU= rs.getString("Nombre");
                }
                
                HttpSession session = request.getSession(true);
                
                session.setAttribute("Rol", rol );
                session.setAttribute("Nombre", nomU );
                session.setAttribute("idUsuarios", idU);
                
                request.getRequestDispatcher("Index?mensaje=SI").forward(request, response);
                
            } else {
                   HttpSession session = request.getSession(true);
                
                session.setAttribute("Rol","invitado" );
                session.setAttribute("Nombre",null);
                session.setAttribute("idUsuarios", null);
                
                request.getRequestDispatcher("Ingresar?mensaje=NO").forward(request, response);
            }
            cdb.cierraConexion();
        } catch (SQLException sql) {
            sql.getStackTrace();
            request.getRequestDispatcher("Ingresar?mensaje=NBD").forward(request, response);
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
        processRequest(request, response);
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
