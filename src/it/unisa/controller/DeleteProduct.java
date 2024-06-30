package it.unisa.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.ConPool;

//@WebServlet("InsertProduct")
@SuppressWarnings("serial")
public class DeleteProduct extends HttpServlet {
    @Override
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String id = request.getParameter("productId");
        

        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM prodotto WHERE ProductId=?",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, id);
            
            if (ps.executeUpdate() != 1) {
                System.out.println("Product not deleted");
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        
    }
}
