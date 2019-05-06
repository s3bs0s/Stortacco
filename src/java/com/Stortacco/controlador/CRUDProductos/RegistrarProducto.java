package com.Stortacco.controlador.CRUDProductos;

import com.Stortacco.modelo.Conectadb;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrarProducto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        try {

            String Nombre = request.getParameter("nom");
            String Descripcion = request.getParameter("des");
            String Cantidad = request.getParameter("can");
            String PrecioCompra = request.getParameter("prec");
            String PrecioVenta = request.getParameter("prev");
            String idProveedor = request.getParameter("prove");

            Conectadb cdb = new Conectadb();
            Connection c = cdb.conectar();
            PreparedStatement ps;
            Date fe = new Date();
            DateFormat fef = new SimpleDateFormat("yyyy-MM-dd");

            ps = c.prepareStatement("INSERT INTO productos(Nombre,Descripcion_Producto,Cantidad,Fecha_Ingreso,Precio_Compra,Precio_Venta,idProveedor,Habilitado) Values (?,?,?,?,?,?,?,?);");
            ps.setString(1, Nombre);
            ps.setString(2, Descripcion);
            ps.setInt(3, Integer.parseInt(Cantidad));
            ps.setString(4, fef.format(fe));
            ps.setFloat(5, Float.parseFloat(PrecioCompra));
            ps.setFloat(6, Float.parseFloat(PrecioVenta));
            ps.setInt(7, Integer.parseInt(idProveedor));
            ps.setString(8, "S");
            int res = ps.executeUpdate();

            if (res > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("Productos?mensaje=SI");
                
                rd.forward(request, response);

            } else {
                RequestDispatcher rd = request.getRequestDispatcher("Productos?mensaje=NO");
                
                rd.forward(request, response);
            }
            cdb.cierraConexion();
        } catch (SQLException sql) {
            System.out.println(sql.getStackTrace());
            RequestDispatcher rd = request.getRequestDispatcher("Productos?mensaje=NBD");
            
            rd.forward(request, response);
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
