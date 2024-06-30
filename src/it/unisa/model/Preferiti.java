package it.unisa.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Preferiti {

    public int add_prod(int pro_id,String user) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO preferiti (id_prod,id_user) VALUES (?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, pro_id);
            ps.setString(2, user);
     
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not saved");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
      


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		return pro_id;
    }
    
    @SuppressWarnings("null")
	public List<Integer>get_list(String user) throws SQLException{
  
    	@SuppressWarnings("rawtypes")
		List<Integer> cart = new ArrayList();
    	try (Connection con = ConPool.getConnection()) {
    		
    	
    	PreparedStatement ps = con.prepareStatement("SELECT id_prod FROM preferiti where id_user=?");
                ps.setString(1, user);
                ResultSet rs = ps.executeQuery();
                
          
	            
	            if(!rs.next())
	            	return null;
	            
	            int i=0;
	           do {
	        	   	
	            	cart.add(rs.getInt(1));
	            	i=i+1;
	                
	            }while (rs.next());
                
    	}
		
		return cart;
    	
    }

	public int del_prod(int prod_id, String user_id) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM preferiti WHERE id_user=? AND id_prod=?",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user_id);
            ps.setInt(2, prod_id);
     
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not deleted");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
      


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		return 1;
		
	}

}


