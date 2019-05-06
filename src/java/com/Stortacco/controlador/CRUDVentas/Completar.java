package com.Stortacco.controlador.CRUDVentas;

import com.Stortacco.modelo.DataSource;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;

public class Completar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Completar() {
        super();

    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> al=new ArrayList<String>();
		try{
		DataSource ds=DataSource.getInstace();
	     Connection conn=ds.getConnection();
	     Statement stmt=conn.createStatement();
	     String sql="select Nombre from productos";
	     ResultSet rs = stmt.executeQuery(sql);
	     while(rs.next()){
	    	 al.add(rs.getString("Nombre"));
                
	     }
	     rs.close();
	     stmt.close();
	     conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		 JSONArray json=new JSONArray(al);
		 response.setContentType("application/json");
	        response.getWriter().print(json);
	}   
}

//public class Completar extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        ArrayList<String> names = new ArrayList<String>();
//        try {
//           
//            
//            DataSource ds = DataSource.getInstace();
//            Connection con = ds.getConnection();
//            PreparedStatement ps;
//            ResultSet rs;
//
//            ps = con.prepareStatement("SELECT Nombre FROM productos where Habilitado=?;");
//            ps.setString(1, "S");
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                names.add(rs.getString("Nombre"));
//            }
//            ps.close();
//            rs.close();
//            con.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        
//        String json = new Gson().toJson(names);
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        response.getWriter().print(json);
//    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
