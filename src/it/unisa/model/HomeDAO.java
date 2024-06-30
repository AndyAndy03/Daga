package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HomeDAO {

	public int add(String user, String paese, int cap, String via, int civico) throws SQLException {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO indirizzo (user_id,paese,cap,via,civico) VALUES (?,?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user);
            ps.setString(2, paese);
            ps.setInt(3, cap);
            ps.setString(4, via);
            ps.setInt(5, civico);
            
            if (ps.executeUpdate() != 1) {
                System.out.println("indirizzo not saved");
                return -1;
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
         
            return 1;
	}
	}
	
	public Home get_home(String user_id) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM indirizzo WHERE user_id=?");
            ps.setString(1, user_id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	Home h=new Home();
            	h.setPaese(rs.getString(2));
            	h.setCap(rs.getInt(3));
            	h.setVia(rs.getString(4));
            	h.setCivico(rs.getInt(5));
                
                return h;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		
	}
	
	public boolean exist(String user) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM indirizzo WHERE user_id=?");
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	
                
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
                "DELETE FROM indirizzo WHERE user_id=?",
                Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, user);
        
        if (ps.executeUpdate() != 1) {
            System.out.println("indirizzo not deleted");
        }
        ResultSet rs = ps.getGeneratedKeys();
        rs.next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}}
