package it.unisa.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.Product;
import it.unisa.model.ProductDAO;

//@WebServlet("InsertProduct")
@SuppressWarnings("serial")
public class InsertProduct extends HttpServlet {
    @Override
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String nome = request.getParameter("productName");
        String descrizione = request.getParameter("productDescription");
        String categoria = request.getParameter("productCat");
        String sex = request.getParameter("productSex");
        String price = request.getParameter("productPrice");
        String Images = request.getParameter("productImage");
        System.out.println(Images);
        int q=0;

        // instantiating a Model class to query the data
        Product proToSave = new Product();
        proToSave.setCategoria(categoria);
        proToSave.setNome(nome);
        proToSave.setQuantita_disponibile(q);
        proToSave.setPrezzo(Float.parseFloat(price));
        proToSave.setDescrizione(descrizione);
        proToSave.setSex(sex);
        

        ProductDAO service = new ProductDAO();
        int result = service.doSave(proToSave);

        // depending on the Model response the  "address" of the proper View component (jsp) is set
        if (result != -1) {
            String address;
            request.setAttribute("product", proToSave);
            request.setAttribute("action", "inserito");
            address = "/results/success.jsp";

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }
}
