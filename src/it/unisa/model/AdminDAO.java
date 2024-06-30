package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDAO {

	public int del_admin(String user) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE utente SET admin = 0 WHERE username = ?",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user);
            
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

	public int add_admin(String user) {
		try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE utente SET admin = 1 WHERE username = ?",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user);
            
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
