package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public User doRetrieveById(String username) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM utente WHERE username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User p = new User();
                p.setUsername(rs.getString(1));
                p.setEmail(rs.getString(2));
                p.setPassword(rs.getString(3));
                p.setTelefono(rs.getString(4));
                p.setCognome(rs.getString(5));
                p.setNome(rs.getString(6));
                p.setAdmin(rs.getInt(7));
                
               
                return p;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int doSave(User user) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO utente VALUES(?,?,SHA1(?),?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getTelefono());
            ps.setString(5, user.getCognome());
            ps.setString(6, user.getNome());
            ps.setInt(7, user.getAdmin());
            
            if (ps.executeUpdate() != 1) {
                System.out.println("User not saved");
                return -1;
            }
            return 1;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User doRetrieveByUsernamePassword(String username, String password) {

        PreparedStatement statement = null;
        ResultSet resultSet = null;
        User utente = null;
        try (Connection connection = ConPool.getConnection()) {
            statement = connection.prepareStatement("SELECT * FROM utente WHERE username=? AND password=SHA1(?)");
            statement.setString(1, username);
            statement.setString(2, password);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                utente = new User();
                utente.setUsername(resultSet.getString("username"));
                utente.setEmail(resultSet.getString("email"));
                utente.setPassword(password);
                utente.setNome(resultSet.getString("nome"));
                utente.setCognome(resultSet.getString("cognome"));
                utente.setAdmin(resultSet.getInt("admin"));
              
            }
        }  catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return utente;
    }

    public List<User> get_users() {
    	try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM utente");
            ResultSet resultSet = ps.executeQuery();
            
            List<User> p = new ArrayList<User>();
            
            p.add(new User());
            if(!resultSet.next())
            	return null;
            
           do {
        	   	
        	   User utente=new User();
        	   utente.setUsername(resultSet.getString("username"));
               utente.setEmail(resultSet.getString("email"));
               utente.setPassword("***");
               utente.setNome(resultSet.getString("nome"));
               utente.setCognome(resultSet.getString("cognome"));
               utente.setAdmin(resultSet.getInt("admin"));
            	p.add(utente);
                
            }while (resultSet.next());
            
            p.remove(0);
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

	public int username_register(String username) {
		try (Connection con = ConPool.getConnection()) {
			
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM utente where username=?");
            ps.setString(1, username);
            ResultSet resultSet = ps.executeQuery();
            
            List<User> p = new ArrayList<User>();
            
            p.add(new User());
            if(!resultSet.next())
            	return 0;
            
           do {
        	   	
        	   return 1;
                
            }while (resultSet.next());
            
           
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}

	public int email_register(String email) {
		try (Connection con = ConPool.getConnection()) {
			
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM utente where email=?");
            ps.setString(1, email);
            ResultSet resultSet = ps.executeQuery();
            
            List<User> p = new ArrayList<User>();
            
            p.add(new User());
            if(!resultSet.next())
            	return 0;
            
           do {
        	   	
        	   return 1;
                
            }while (resultSet.next());
            
           
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		
	}
	
}



