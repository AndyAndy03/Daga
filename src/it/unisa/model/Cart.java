package it.unisa.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Cart {

	public int get_q_ord(int pro_id,int ord_id)
	{
		try (Connection con = ConPool.getConnection()) {
			
		PreparedStatement ps = con.prepareStatement("SELECT q FROM prodotto_ordine where id_ordine=? AND id_prod=?");
        ps.setInt(1, ord_id);
        ps.setInt(2, pro_id);
        ResultSet rs = ps.executeQuery();
        
        
        
        if(!rs.next())
        	return -1;
        
        return rs.getInt(1);
        
		} catch (SQLException e) {
            throw new RuntimeException(e);
}

	}
	
	public int get_q(int pro_id,String user)
	{
		try (Connection con = ConPool.getConnection()) {
			
		PreparedStatement ps = con.prepareStatement("SELECT q FROM carrello where id_user=? AND id_prod=?");
        ps.setString(1, user);
        ps.setInt(2, pro_id);
        ResultSet rs = ps.executeQuery();
        
        
        if(!rs.next())
        	return -1;
        
        return rs.getInt(1);
        
		} catch (SQLException e) {
            throw new RuntimeException(e);
}

	}
	
	public int set_q(int pro_id,String user,int q)
	{
	
		if(q<=0)
		{
			remove_prod(pro_id,user);
			return 1;
		}
		else {
			try (Connection con = ConPool.getConnection()) {
	            PreparedStatement ps = con.prepareStatement(
	                    "UPDATE carrello SET q = ? where id_user=? AND id_prod=?",
	                    Statement.RETURN_GENERATED_KEYS);
	            
	            ps.setInt(1, q);
	            ps.setString(2, user);
	            ps.setInt(3, pro_id);
	            
	            if (ps.executeUpdate() != 1) {
	                System.out.println("error");
	                return -1;
	            }
	            ResultSet rs = ps.getGeneratedKeys();
	            rs.next();
	   
	            return 1;
	
	
	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }
		}
	}
	
	
	 public int remove_prod(int pro_id,String user)
	 {
		 try (Connection con = ConPool.getConnection()) {
	            PreparedStatement ps = con.prepareStatement(
	                    "DELETE FROM carrello WHERE id_prod=? AND id_user=?",
	                    Statement.RETURN_GENERATED_KEYS);
	            ps.setInt(1, pro_id);
	            ps.setString(2, user);
	     
	            if (ps.executeUpdate() != 1) {
	                System.out.println("Product not deleted");
	                return -1;
	            }
	            ResultSet rs = ps.getGeneratedKeys();
	            rs.next();
	      


	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }
			return pro_id;
		 
	 }
	 
    public int add_prod(int pro_id,String user) {
    	
    	try {
			List<Integer> c = get_cart(user);
			if(c!=null)
			if (c.contains(pro_id)) {
				set_q(pro_id,user,get_q(pro_id,user));
				return 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	 
    	
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO carrello (id_prod,id_user) VALUES (?,?)",
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
	public List<Integer>get_cart(String user) throws SQLException{
  
    	@SuppressWarnings("rawtypes")
		List<Integer> cart = new ArrayList();
    	try (Connection con = ConPool.getConnection()) {
    		
    	
    	PreparedStatement ps = con.prepareStatement("SELECT id_prod FROM carrello where id_user=?");
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

	public int shop(String user_id) throws SQLException {
		
		FatturaDAO f=new FatturaDAO();
		int r=f.create_fattura(user_id,this.get_cart(user_id));
		
		if(r!=1)
			return r;
					
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM carrello WHERE id_user=?",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user_id);
     
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not deleted");
                return 2;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
      


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		return 1;
		
	}

	public String getUsername(int id_ordine) throws SQLException {
		try (Connection con = ConPool.getConnection()) {
    		
	    	
	    	PreparedStatement ps = con.prepareStatement("SELECT id_utente FROM ordine where id_ordine=?");
	                ps.setInt(1, id_ordine);
	                ResultSet rs = ps.executeQuery();
	                
	          
		            
		            if(!rs.next())
		            	return null;
		            
		         return rs.getString(1);
		            	
	              
		}}

	public void merge(List<Integer> prod, List<Integer> q, String username) {
		for(int p:prod) {
			if (get_q(p,username)<1)
			{
				
				add_prod(p,username);
				
			}
			set_q(p,username,q.get(prod.indexOf(p)));
		}
		
	}

}


