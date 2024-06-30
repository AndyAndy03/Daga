package it.unisa.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.HomeDAO;

//@WebServlet("InsertProduct")
@SuppressWarnings("serial")
public class AddHome extends HttpServlet {
    @Override
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String user = request.getParameter("id_user");
        String paese = request.getParameter("paese");
        int cap = Integer.parseInt(request.getParameter("cap"));
        String via = request.getParameter("via");
        int civico = Integer.parseInt(request.getParameter("civico"));

        HomeDAO h = new HomeDAO();
        if(h.exist(user))
        	h.remove(user);
        int result = 0;
		try {
			result = h.add(user,paese,cap,via,civico);
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
