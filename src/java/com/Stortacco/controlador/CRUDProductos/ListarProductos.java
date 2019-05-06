package com.Stortacco.controlador.CRUDProductos;

import com.Stortacco.modelo.Conectadb;
import com.Stortacco.beans.Productos;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListarProductos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        try {

            ArrayList<Productos> lista = new ArrayList<>();

            Conectadb cdb = new Conectadb();
            Connection con = cdb.conectar();
            PreparedStatement ps;
            ResultSet rs;

            ps = con.prepareStatement("SELECT * FROM productos WHERE Habilitado=?;");
            ps.setString(1, "S");
            rs = ps.executeQuery();
            while (rs.next()) {
                Productos pr = new Productos();
                pr.setIdProductos(rs.getInt("idProductos"));
                pr.setNombre(rs.getString("Nombre"));
                pr.setDescripcionProducto(rs.getString("Descripcion_Producto"));
                pr.setCantidad(rs.getInt("Cantidad"));
                pr.setFechaIngreso(rs.getDate("Fecha_Ingreso"));
                pr.setPrecioCompra(rs.getFloat("Precio_Compra"));
                pr.setPrecioVenta(rs.getFloat("Precio_Venta"));
                pr.setIdProveedor(rs.getInt("idProveedor"));

                lista.add(pr);
            }
            request.setAttribute("lista", lista);
            RequestDispatcher rd = request.getRequestDispatcher("listarProductos.jsp");
            rd.forward(request, response);
            cdb.cierraConexion();

        } catch (SQLException sql) {
            sql.printStackTrace();
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
