package it.unisa.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.CardDAO;

//@WebServlet("InsertProduct")
@SuppressWarnings("serial")
public class AddCard extends HttpServlet {
    @Override
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    	String user = request.getParameter("id_user");
        String numero = request.getParameter("CardNumber");
        String data = request.getParameter("CardDate");
        String cvc = request.getParameter("CardCVC");

        CardDAO h = new CardDAO();
        if(h.exist(user))
        	h.remove(user);
        int result = 0;
		try {
			result = h.add(user,numero,data,cvc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};

        // depending on the Model response the  "address" of the proper View component (jsp) is set
        if (result != -1) {
            String address;
            request.setAttribute("action", "inserito");
            address = "/results/success.jsp";

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }
}
