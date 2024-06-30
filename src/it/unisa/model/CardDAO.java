package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CardDAO {

	public int add(String user, String numero, String data, String cvc) throws SQLException {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO card (user_id,numero,data_scadenza,cvc) VALUES (?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user);
            ps.setString(2, numero);
            ps.setString(3, data);
            ps.setString(4, cvc);
            
            if (ps.executeUpdate() != 1) {
                System.out.println("Card not saved");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            
            return 1;
	}
	}

	public Card get_card(String user_id) {
		
		
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM card WHERE user_id=?");
            ps.setString(1, user_id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	Card c=new Card();
            	c.setNumero(rs.getString(1));
            	c.setData(rs.getString(3));
                c.setCvc(rs.getInt(4));
                
                return c;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		
	}

	public boolean exist(String user) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM card WHERE user_id=?");
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	Card c=new Card();
            	c.setNumero(rs.getString(1));
            	c.setData(rs.getString(3));
                c.setCvc(rs.getInt(4));
                
                return true;
            }
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}

	public void remove(String user) {
		try (Connection con = ConPool.getConnection()) {
		PreparedStatement ps = con.prepareStatement(
                "DELETE FROM card WHERE user_id=?",
                Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, user);
        
        if (ps.executeUpdate() != 1) {
            System.out.println("Card not deleted");
        }
        ResultSet rs = ps.getGeneratedKeys();
        rs.next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	}
