package it.unisa.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class RicercaDAO {
	
	
	public List<Integer> get_list_id(String parola) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM prodotto WHERE nome LIKE ?");
            ps.setString(1, "%" + parola + "%");
            ResultSet rs = ps.executeQuery();
            
            List<Integer> p = new ArrayList<Integer>();
            
            if(!rs.next())
            	return null;
            
           do {
        	   	
            	p.add(rs.getInt(1));
                
            }while (rs.next());
            
            p.remove(0);
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
	
}


