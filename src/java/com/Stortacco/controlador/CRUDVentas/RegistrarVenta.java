package com.Stortacco.controlador.CRUDVentas;

import com.Stortacco.modelo.Conectadb;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrarVenta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
//        try {

        String idUsuario = request.getParameter("idusuario");
        String Total = request.getParameter("tot");

        Conectadb cdb = new Conectadb();
        Connection c = cdb.conectar();
        PreparedStatement ps;
        Date fe = new Date();
//            DateFormat fef = new SimpleDateFormat("yyyy-MM-dd");
//            DateFormat heh = new SimpleDateFormat("HH:mm:ss");
//            int idVendedor =  (int)request.getSession().getAttribute("idRol");
        DateFormat fecc = new SimpleDateFormat("ddMMyyyy");
        DateFormat horac = new SimpleDateFormat("hhmmmss");
        String codigo = "f" + fecc.format(fe) + "h" + horac.format(fe);
        System.out.println(codigo);

//           
//            ps = c.prepareStatement("INSERT INTO ventas(Fecha_Registro,Hora_Registro,idUsuario,Total) Values (?,?,?,?);");
//            ps.setString(1, fef.format(fe));
//            ps.setString(2, heh.format(fe+":00"));
//            ps.setInt(3, Integer.parseInt(idUsuario));
//            ps.setFloat(4,Float.parseFloat(Total));
//            
//
//            RequestDispatcher rd = request.getRequestDispatcher("listarVentas.jsp?mensaje=Y");
//            rd.forward(request, response);
//            cdb.cierraConexion();
//
//        } catch (SQLException sql) {
//            System.out.println(sql.getStackTrace());
//            RequestDispatcher rd = request.getRequestDispatcher("listarVentas.jsp?mensaje=N");
//            rd.forward(request, response);
//        }
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
