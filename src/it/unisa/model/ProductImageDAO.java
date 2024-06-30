package it.unisa.model;
import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

	public class ProductImageDAO {

	    @SuppressWarnings({ "null" })
		public List<ProductImage> doRetrieveById(int id) {
	        try (Connection con = ConPool.getConnection()) {
	            PreparedStatement ps =
	                    con.prepareStatement("SELECT * FROM img_prodotti  WHERE id_prod=?");
	            ps.setInt(1, id);
	            ResultSet rs = ps.executeQuery();
	            
	            List<ProductImage> p = new ArrayList<ProductImage>();
	            
	            p.add(new ProductImage());
	            if(!rs.next())
	            	return null;
	            
	           do {
	        	   	
	            	//p[i] = new ProductImage();
	        	   	ProductImage k=new ProductImage();
	            	k.setId_img(rs.getInt(1));
	            	k.setImg(rs.getString(2));
	            	k.setId_prod(rs.getInt(3));
	            	p.add(k);
	                
	            }while (rs.next());
	            
	            p.remove(0);
	            return p;
	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }
	    }

	    public int doSave(it.unisa.model.ProductImage imgToSave) {
	        try (Connection con = ConPool.getConnection()) {
	            PreparedStatement ps = con.prepareStatement(
	                    "INSERT INTO img_prpdotti (id_prod,categoria,nome,quantita_disponibile,prezzo,descrizione,sex) VALUES (NULL,?,?)",
	                    Statement.RETURN_GENERATED_KEYS);
	        
	            ps.setString(1, imgToSave.getImg());
	            ps.setInt(2, imgToSave.getId_prod());
	         
	            if (ps.executeUpdate() != 1) {
	                System.out.println("Image not saved");
	                return -1;
	            }
	            ResultSet rs = ps.getGeneratedKeys();
	            rs.next();
	            int id = rs.getInt(1);
	            imgToSave.setId_img(id);
	            return id;


	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }
	    }


	}

