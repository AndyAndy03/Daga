package it.unisa.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.Cart;

//@WebServlet("insertImage")
@SuppressWarnings("serial")
public class UpdateQCart extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reading parameters from the request
    	int prod_id = Integer.parseInt(request.getParameter("id"));
        String user_id = request.getParameter("user");
        int q = Integer.parseInt(request.getParameter("q"));
        
        Cart c = new Cart();
        c.set_q(prod_id, user_id,q);
        

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("./carrello.jsp");
            dispatcher.forward(request, response);
        }
    }

