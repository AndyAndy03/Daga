package it.unisa.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.Preferiti;

//@WebServlet("insertImage")
@SuppressWarnings("serial")
public class AddPre extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reading parameters from the request
    	int prod_id = Integer.parseInt(request.getParameter("productId"));
        String user_id = request.getParameter("user");
        
        
      
        // instantiating a Model class to query the data
        Preferiti p=new Preferiti();
        p.add_prod(prod_id, user_id);

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("./preferiti.jsp");
            dispatcher.forward(request, response);
        }
    }

