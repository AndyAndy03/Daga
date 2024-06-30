package it.unisa.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.Product;
import it.unisa.model.ProductDAO;
import it.unisa.model.ProductImage;
import it.unisa.model.ProductImageDAO;

//@WebServlet("ShowProduct")
@SuppressWarnings("serial")
public class ShowProduct extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //int productId = (int)request.getAttribute("ProductId");
        int productId = Integer.parseInt(request.getParameter("ProductId"));
      
        ProductDAO service = new ProductDAO();
        ProductImageDAO service2 = new ProductImageDAO();
        
        Product product = service.doRetrieveById(productId);
        List<ProductImage> img =service2.doRetrieveById(productId);
        		
        request.setAttribute("product", product);
        request.setAttribute("image", img);
        //request.setAttribute("productId", productId);
        String address = "/product.jsp";

        if (product == null) {
            request.setAttribute("badId", productId);
            address = "/results/error.jsp";
        } 
        
        //System.out.println(request);
        //RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
        dispatcher.forward(request, response);
        
        
        
    }
    	
    	
}
