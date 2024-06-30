package it.unisa.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.ProductImage;
import it.unisa.model.ProductImageDAO;

//@WebServlet("insertImage")
@SuppressWarnings("serial")
public class InsertImage extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reading parameters from the request
        int pro_id = Integer.parseInt(request.getParameter("productId"));
        String img = request.getParameter("img");
        
      
        // instantiating a Model class to query the data
        ProductImage imgToSave = new ProductImage();
        imgToSave.setId_prod(pro_id);
        imgToSave.setImg(img);
        
        

        ProductImageDAO service = new ProductImageDAO();
        int result = service.doSave(imgToSave);

        // depending on the Model response the  "address" of the proper View component (jsp) is set
        if (result != -1) {
            String address;
            request.setAttribute("image", imgToSave);
            request.setAttribute("action", "inserito");
            address = "/WEB-INF/results/success.jsp";

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }
}
