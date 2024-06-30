package it.unisa.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.Cart;

//@WebServlet("insertImage")
@SuppressWarnings("serial")
public class ShopCart extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        String user_id = request.getParameter("user");
        String address="./carrello.jsp";
        if(user_id=="")
        {
        	address="./login_form.jsp";
            
        }
        else {
        	
        
        // instantiating a Model class to query the data
        Cart c = new Cart();
        try {
        	int e = c.shop(user_id);
			if(e==-3)
			{
				request.setAttribute("error", "inserire carta prima di procedere");
			}
			
			else if(e==-4)
			{
				request.setAttribute("error", "inserire indirizzo di spedizione prima di procedere");
			}
			
			else if(e==-5)
			{
				request.setAttribute("error", "inserire carta e indirizzo di spedizione prima di procedere");
			}
			
			else 
			{
				request.setAttribute("success", "ordine effetutato con successo");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        }
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }

