package it.unisa.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unisa.model.Cart;

//@WebServlet("insertImage")
@SuppressWarnings("serial")
public class remove_cart_no_login extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reading parameters from the request
    	int prod_id = Integer.parseInt(request.getParameter("productId"));
        String user_id = request.getParameter("user");
        
        
        List<Integer> ca=new ArrayList<Integer>();
        List<Integer> q=new ArrayList<Integer>();
        
        HttpSession session = request.getSession();
        
		if(session.getAttribute("carrello")==null)
    	{
    		session.setAttribute("carrello",ca);
    		session.setAttribute("q",q);
    	}
        
        ca=(List<Integer>)session.getAttribute("carrello");
		q=(List<Integer>)session.getAttribute("q");
		
		q.remove(ca.indexOf(prod_id));
		ca.remove(ca.indexOf(prod_id));
		

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("./carrello.jsp");
            dispatcher.forward(request, response);
        }
    }

