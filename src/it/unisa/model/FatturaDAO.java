package it.unisa.model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FatturaDAO {

	public int create_fattura(String user_id, List<Integer> get_cart) {
		CardDAO cd= new CardDAO();
		Card c=cd.get_card(user_id);
		HomeDAO hd= new HomeDAO();
		Home h=hd.get_home(user_id);
		
		if(c==null && h==null)
		{
			return -5;
			
		}
		
		if(c==null)
		{
			return -3;
		}
		
		
		if(h==null)
		{
			return -4;
		}
		
		
		OrdiniDAO od=new OrdiniDAO();
		int id_ordine=od.create_ordine(c.getNumero(), c.getData(),user_id);
	
		
		String fileName = "./fatture/fat_"+id_ordine +".txt";
		       
		        String content = "ID:"+id_ordine+"\n" +
		        				 "HOME:"+h.getCap()+"  "+h.getPaese()+"  "+h.getVia() +"  "+h.getCivico() +"\n" +
		        				 "CARD:"+c.getNumero()+"  "+c.getCvc()+"  "+c.getCvc() +"\n";
		                         

		        try (BufferedWriter writer = new BufferedWriter(new FileWriter(fileName))) {
		            writer.write(content);
		            System.out.println("File creato e contenuto scritto con successo!");
		        } catch (IOException e) {
		            System.err.println("Si è verificato un errore durante la scrittura del file: " + e.getMessage());
		        }

		
		
		for (int el : get_cart)
		{
			
			
			 try (Connection con = ConPool.getConnection()) {
		            PreparedStatement ps = con.prepareStatement(
		                    "INSERT INTO prodotto_ordine (id_ordine,id_prod,categoria,nome,quantita_disponibile,prezzo,descrizione,sex,q) VALUES (?,?,?,?,?,?,?,?,?)",
		                    Statement.RETURN_GENERATED_KEYS);
		            
		            ProductDAO pd=new ProductDAO();
		        	Product product=pd.doRetrieveById(el);
		        	pd.set_q(product,user_id);
		        		
		        		
		        	 Product p = pd.doRetrieveById(product.getId_prod());
		        	 Cart ca = new Cart();
		        	 
		        	ps.setInt(1, id_ordine);
		            ps.setInt(2, product.getId_prod());
		            ps.setString(3, product.getCategoria());
		            ps.setString(4, product.getNome());
		            ps.setInt(5, product.getQuantita_disponibile());
		            ps.setFloat(6, product.getPrezzo());
		            ps.setString(7, product.getDescrizione());
		            ps.setString(8, product.getSex());
		            ps.setInt(9, ca.get_q(p.getId_prod(),ca.getUsername(id_ordine)));
		            if (ps.executeUpdate() != 1) {
		                System.out.println("Product not saved");
		                
		            }
		            ResultSet rs = ps.getGeneratedKeys();
		            rs.next();
		            
		   

		        } catch (SQLException e) {
		            throw new RuntimeException(e);
		        }
			 
		}
		return 1;
	}
	
	public List<Integer> get_prodotti(int id_ordine) throws SQLException
	{
	            
	            @SuppressWarnings({ "rawtypes", "unchecked" })
	    		List<Integer> cart = new ArrayList();
	        	try (Connection con = ConPool.getConnection()) {
	        		
	        	
	        	PreparedStatement ps = con.prepareStatement("SELECT id_prod FROM prodotto_ordine WHERE id_ordine=?");
	        	ps.setInt(1, id_ordine);
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
}


