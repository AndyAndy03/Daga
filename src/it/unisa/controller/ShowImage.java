package it.unisa.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.ProductImageDAO;
import it.unisa.model.ProductImage;

//@WebServlet("ShowImage")
@SuppressWarnings("serial")
public class ShowImage extends HttpServlet {
    @SuppressWarnings("unused")
	@Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // reading parameters from the request
        int productId = Integer.parseInt(request.getParameter("ProductId"));
        // instantiating a Model class to query the data
        ProductImageDAO service = new ProductImageDAO();
        // creating the javabean "customer" to receive the Model response
        // and invocating the Model service by passing the request parameter "customerId"
        List<ProductImage> image = service.doRetrieveById(productId);

        //storing the resulting javabean in the "request" object
        request.setAttribute("image", image.get(0));
        String address = null;
        address = "./product.jsp";

        // depending on the Model response the  "address" of the proper View component (jsp) is set
        if (image == null) {
            request.setAttribute("badId", productId);
            address = "/WEB-INF/results/error.jsp";
        } 

        // The servlet dispatches the control to the chosen jsp (through its address)
        // and passes it both the reference to the javabean (stored in the "request") and
        // the response where the jsp will store the final page.
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }
}
