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

import it.unisa.model.Product;
import it.unisa.model.ProductDAO;
import it.unisa.model.ProductImage;
import it.unisa.model.ProductImageDAO;

//@WebServlet("ShowProduct")
@SuppressWarnings("serial")
public class get_product extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    	 ProductDAO pd_id = new ProductDAO();
         String categoria = request.getHeader("cat");
         String sex=request.getHeader("s");	
         String address="/index.jsp";
         System.out.println(sex);
         List<Integer> lp=new ArrayList<Integer>();
         lp = pd_id.get_list_id();
         
         if(categoria!=null)
         {
        	 lp=pd_id.get_list_id_cat(categoria);
        	 address="/categoria.jsp";
         }
         else if(sex!=null)
         {
        	 lp = pd_id.get_list_id_sex(sex);
        	 address="/sex.jsp";
         }
         else
         {
        	 lp = pd_id.get_list_id();
         }
        
         
         //request.setAttribute("product", lp);
         
         HttpSession session = request.getSession();
         session.setAttribute("product", lp);
         
         RequestDispatcher dispatcher =
                 request.getRequestDispatcher(address);
         dispatcher.forward(request, response);
        
    }
    	
    	
}
