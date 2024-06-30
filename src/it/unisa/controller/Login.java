package it.unisa.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unisa.model.Cart;
import it.unisa.model.User;

import it.unisa.model.UserDAO;

@SuppressWarnings("serial")
public class Login extends HttpServlet {
    @SuppressWarnings("unchecked")
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String address = "";

        UserDAO utenteDAO = new UserDAO();
        User utente = new User();
        utente=utenteDAO.doRetrieveByUsernamePassword(username, password);
        
        HttpSession session = request.getSession();
        Cart c= new Cart();
        address = "/index.jsp";
        
        if (utente != null) {
        	
        	if(session.getAttribute("carrello")!=null)
        	{
        		c.merge((List<Integer>)session.getAttribute("carrello"),(List<Integer>)session.getAttribute("q"),utente.getUsername());
        		address="/carrello.jsp";
        	}
        	
            
            session.setAttribute("utente", utente);
            session.setAttribute("carrello",null);
            
        } else {
        	
        	request.setAttribute("error", "username o password errata");
            address = "/login_form.jsp";
        }

        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }


}
