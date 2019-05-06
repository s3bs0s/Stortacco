package com.Stortacco.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author JONATHAN
 */
public class Autocompletar extends Conectadb {
    
    public ArrayList<String> getNamesProductos(String find) throws SQLException{
        ArrayList<String> names = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String sql="select Nombre from productos where Nombre like ? limit 10";
            pst = getConn().prepareStatement(sql);
            pst.setString(1, find+"%");
            rs = pst.executeQuery();
            while (rs.next()) {
                names.add(rs.getString("Nombre"));
            }
            
        } catch (Exception e){
            
        }finally{
            try{
                if (getConn() != null) getConn().close();
                if (rs != null)rs.close();
                if (pst != null)pst.close();
            }catch (SQLException e){
            }
        }
         return names;
    }  
}
