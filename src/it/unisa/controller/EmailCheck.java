package it.unisa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import it.unisa.controller.get_product_json.P_obj;
import it.unisa.model.Product;
import it.unisa.model.ProductDAO;
import it.unisa.model.ProductImage;
import it.unisa.model.ProductImageDAO;
import it.unisa.model.User;
import it.unisa.model.UserDAO;
import com.google.gson.Gson;

@SuppressWarnings("serial")
public class EmailCheck extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");;
        
        UserDAO ud= new UserDAO();
        int user_check=ud.email_register(email);
        
        Gson gson = new Gson();
        String json = gson.toJson(user_check);

        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }}