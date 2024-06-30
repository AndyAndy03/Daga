package it.unisa.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    public Product doRetrieveById(int id) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM prodotto WHERE id_prod=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setCategoria(rs.getString(2));
                p.setNome(rs.getString(3));
                p.setQuantita_disponibile(rs.getInt(4));
                p.setPrezzo(rs.getFloat(5));
                p.setDescrizione(rs.getString(6));
                p.setSex(rs.getString(7));
                
                return p;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int doSave(Product product) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO prodotto (id_prod,categoria,nome,quantita_disponibile,prezzo,descrizione,sex) VALUES (NULL,?,?,?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, product.getCategoria());
            ps.setString(2, product.getNome());
            ps.setInt(3, product.getQuantita_disponibile());
            ps.setFloat(4, product.getPrezzo());
            ps.setString(5, product.getDescrizione());
            ps.setString(6, product.getSex());
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not saved");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            int id = rs.getInt(1);
            product.setId_prod(id);
            return id;


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

	public int doUpdate(String id, Product product) {
		// TODO Auto-generated method stub
		 try (Connection con = ConPool.getConnection()) {
	            PreparedStatement ps = con.prepareStatement(
	                    "UPDATE prodotto SET categoria = ?, nome = ?, quantita_disponibile = ?, prezzo = ?, descrizione = ?, sex = ? WHERE id_prod = ?",
	                    Statement.RETURN_GENERATED_KEYS);
	            ps.setString(1, product.getCategoria());
	            ps.setString(2, product.getNome());
	            ps.setInt(3, product.getQuantita_disponibile());
	            ps.setFloat(4, product.getPrezzo());
	            ps.setString(5, product.getDescrizione());
	            ps.setString(6, product.getSex());
	            ps.setString(7, id);
	            if (ps.executeUpdate() != 1) {
	                System.out.println("Product not saved");
	                return -1;
	            }
	            ResultSet rs = ps.getGeneratedKeys();
	            rs.next();
	   
	            return 1;


	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }
	    }

	public List<Integer> get_list_id() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT id_prod FROM prodotto");
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
	
	public List<Integer> get_list_id_cat(String cat) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT id_prod FROM prodotto WHERE categoria=?");
            ps.setString(1, cat);
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
	
	public List<Integer> get_list_id_sex(String s) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT id_prod FROM prodotto WHERE sex=?");
            ps.setString(1, s);
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

	public int set_q(Product product,String utente) {
		if(product.getQuantita_disponibile()<=0)
			return -1;
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE prodotto SET quantita_disponibile = ? WHERE id_prod = ?",
                    Statement.RETURN_GENERATED_KEYS);
            Cart c = new Cart();
            ps.setInt(1, product.getQuantita_disponibile()-c.get_q(product.getId_prod(), utente));
            
            ps.setInt(2, product.getId_prod());
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not saved");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
   
            return 1;


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		
	}

	public List<String> get_list_name() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome FROM prodotto");
            ResultSet rs = ps.executeQuery();
            System.out.println("ookk");
            List<String> p = new ArrayList<String>();
            
            if(!rs.next())
            	return null;
            
           do {
        	   System.out.println(rs.getString(1));
            	p.add(rs.getString(1));
                
            }while (rs.next());
            
            p.remove(0);
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

	public Product get_prod(int id) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM prodotto where id_prod=?");
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            Product p = new Product();
            
            if(!rs.next())
            	return null;
            
           do {
        	   
            	p.setId_prod(rs.getInt(1));
            	p.setCategoria(rs.getString(2));
            	p.setNome(rs.getString(3));
            	p.setQuantita_disponibile(rs.getInt(4));
            	p.setPrezzo(rs.getFloat(5));
            	p.setDescrizione(rs.getString(6));
            	p.setSex(rs.getString(7));
            	
            }while (rs.next());
            
            
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}


