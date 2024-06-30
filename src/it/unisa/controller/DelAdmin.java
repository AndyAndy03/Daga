package it.unisa.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.AdminDAO;

//@WebServlet("InsertProduct")
@SuppressWarnings("serial")
public class DelAdmin extends HttpServlet {
    @Override
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	String user = request.getParameter("username");
        AdminDAO ad= new AdminDAO();
        ad.del_admin(user);
        
        // depending on the Model response the  "address" of the proper View component (jsp) is set
        
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        
    }
}
