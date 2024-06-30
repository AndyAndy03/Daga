package it.unisa.controller;
import com.google.gson.Gson;

import it.unisa.model.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("serial")
public class get_product_name_list extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	ProductDAO pd=new ProductDAO();
    	
    	
       
        String[] array = (String[]) pd.get_list_name().toArray(new String[0]);

        // Convert array to JSON
        Gson gson = new Gson();
        String json = gson.toJson(array);

        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }
}
    