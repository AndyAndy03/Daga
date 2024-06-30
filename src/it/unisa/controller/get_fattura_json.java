package it.unisa.controller;
import com.google.gson.Gson;

import it.unisa.model.Card;
import it.unisa.model.CardDAO;
import it.unisa.model.Cart;
import it.unisa.model.FatturaDAO;
import it.unisa.model.Home;
import it.unisa.model.HomeDAO;
import it.unisa.model.Product;
import it.unisa.model.ProductDAO;
import it.unisa.model.ProductImage;
import it.unisa.model.ProductImageDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.SQLException;

import it.unisa.model.Card;
import it.unisa.model.Home;
import it.unisa.model.CardDAO;
import it.unisa.model.HomeDAO;
import it.unisa.model.ProductDAO;
@SuppressWarnings("serial")
public class get_fattura_json extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        
        int id = Integer.parseInt(request.getParameter("id"));
        String user_id=request.getParameter("user");
        
        
        CardDAO cd= new CardDAO();
		Card c=cd.get_card(user_id);
		
		HomeDAO hd= new HomeDAO();
		Home h=hd.get_home(user_id);
		
		FatturaDAO fd=new FatturaDAO();
		List<Integer> p = new ArrayList<Integer>();
		try {
			p = fd.get_prodotti(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        Gson gson=new Gson();
        String json = gson.toJson(id);
        String content="ID: "+id+"\n\r";
        		content+="CARD: "+c.getNumero()+"  "+c.getData()+"\n\r";
        		content+="HOME: "+h.getPaese()+"  "+h.getVia()+"  "+h.getCivico()+"\n\r";
        	
        		content+="PRODUCT: \n\r";
        		float tot=0;
        		for(int i:p)
				{
        			Cart cart = new Cart();	
					ProductDAO d=new ProductDAO();
					Product el=d.get_prod(i);
					content+=el.getNome()+"  "+el.getPrezzo()+"  X"+cart.get_q_ord(el.getId_prod(),id)+"\n\r";
					tot+=(el.getPrezzo()*cart.get_q_ord(el.getId_prod(),id));
				}
        		content+="TOTALE:"+tot+"$\n\r";
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        
        PrintWriter out = response.getWriter();
        out.print(content);
        out.flush();
    }
}
