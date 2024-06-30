package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrdiniDAO {

	public String get_ordine_user(int ordine) throws SQLException
	{
		try (Connection con = ConPool.getConnection()) {
			
			PreparedStatement ps = con.prepareStatement("SELECT id_utente FROM ordine where id_ordine=?");
	        ps.setInt(1, ordine);
	        
	        ResultSet rs = ps.executeQuery();
	        
	  
	        
	        if(!rs.next())
	        	return null;
	        
	        return rs.getString(1);
	        
			} catch (SQLException e) {
	            throw new RuntimeException(e);
	}
	}
	
	public String get_ordine_data(int ordine) throws SQLException
	{
		try (Connection con = ConPool.getConnection()) {
			
		PreparedStatement ps = con.prepareStatement("SELECT data FROM ordine where id_ordine=?");
        ps.setInt(1, ordine);
        
        ResultSet rs = ps.executeQuery();
        
  
        
        if(!rs.next())
        	return null;
        
        return rs.getString(1);
        
		} catch (SQLException e) {
            throw new RuntimeException(e);
}
	}
	
	public List<Integer> get_ordini_admin() throws SQLException
	{
		@SuppressWarnings("unchecked")
		List<Integer> ordini = new ArrayList();
    	try (Connection con = ConPool.getConnection()) {
    		
    	
    	PreparedStatement ps = con.prepareStatement("SELECT id_ordine FROM ordine");
                ResultSet rs = ps.executeQuery();
                
          
	            
	            if(!rs.next())
	            	return null;
	            
	            int i=0;
	           do {
	        	   	
	        	   ordini.add(rs.getInt(1));
	            	i=i+1;
	                
	            }while (rs.next());
                
    	}
		
		return ordini;
        
}
	
	public List<Integer> get_ordini(String user) throws SQLException
	{
		@SuppressWarnings("unchecked")
		List<Integer> ordini = new ArrayList();
    	try (Connection con = ConPool.getConnection()) {
    		
    	
    	PreparedStatement ps = con.prepareStatement("SELECT id_ordine FROM ordine WHERE id_utente=?");
    	ps.setString(1, user);
                ResultSet rs = ps.executeQuery();
                
          
	            
	            if(!rs.next())
	            	return null;
	            
	            int i=0;
	           do {
	        	   	
	        	   ordini.add(rs.getInt(1));
	            	i=i+1;
	                
	            }while (rs.next());
                
    	}
		
		return ordini;
        
}

	public int create_ordine(String numero, String data, String user_id) {
		// TODO Auto-generated method stub
		
	
	try (Connection con = ConPool.getConnection()) {
        PreparedStatement ps = con.prepareStatement(
                "INSERT INTO ordine (data,numero,data_scadenza,id_utente) VALUES (now(),?,?,?)",
                Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, numero);
        ps.setString(2, data);
        ps.setString(3, user_id);
       
        if (ps.executeUpdate() != 1) {
            System.out.println("ordine not saved");
            return -1;
        }
        ResultSet rs = ps.getGeneratedKeys();
        rs.next();
        int id = rs.getInt(1);
        
        return id;


    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
	}
}
	
