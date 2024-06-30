package it.unisa.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
            HttpSession session = request.getSession();
            session.setAttribute("utente", null);
    

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/results/success.jsp");
        dispatcher.forward(request, response);
    }


}
