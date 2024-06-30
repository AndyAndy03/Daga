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
public class get_product_id extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    	 ProductDAO pd_id = new ProductDAO();
         
         String address="/product.jsp";
         
         String id = request.getHeader("id");
         
         
		 
         ProductDAO pd = new ProductDAO();
         Product p = pd.doRetrieveById( Integer.valueOf(id));
         ProductImageDAO idm= new ProductImageDAO();
         List<ProductImage> img = idm.doRetrieveById(p.getId_prod());
         
   
         HttpSession session = request.getSession();
		 session.setAttribute("product",p);
		 session.setAttribute("images",img);
        
         
         RequestDispatcher dispatcher =
                 request.getRequestDispatcher(address);
         dispatcher.forward(request, response);
        
    }
    	
    	
}
