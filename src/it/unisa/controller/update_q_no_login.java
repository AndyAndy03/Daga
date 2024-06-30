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
public class update_q_no_login extends HttpServlet {
    @SuppressWarnings("unchecked")
	@Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reading parameters from the request
    	int prod_id = Integer.parseInt(request.getParameter("id"));
        String user_id = request.getParameter("user");
        int q = Integer.parseInt(request.getParameter("q"));
        
        List<Integer> ca=new ArrayList<Integer>();
        List<Integer> ql=new ArrayList<Integer>();
        
        HttpSession session = request.getSession();
        
        ca=(List<Integer>)session.getAttribute("carrello");
		ql=(List<Integer>)session.getAttribute("q");
		
		try
		{
        if(ca.contains(prod_id))
        {
        	ql.set(ca.indexOf(prod_id), q);
        	
        }
		}catch(Exception e){}
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("./carrello.jsp");
            dispatcher.forward(request, response);
        }
    }

