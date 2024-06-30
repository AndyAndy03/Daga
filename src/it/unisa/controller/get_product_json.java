package it.unisa.controller;
import com.google.gson.Gson;

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

@SuppressWarnings("serial")
public class get_product_json extends HttpServlet {

    static class P_obj {
        public int id;
        public String nome;
        public double prezzo;
        public String img;

        public P_obj(int id, String nome, double prezzo, String img) {
            this.id = id;
            this.nome = nome;
            this.prezzo = prezzo;
            this.img = img;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        ProductDAO pd=new ProductDAO();
        P_obj[] array = new P_obj[pd.get_list_id().size()];
        int c=0;
        
        String categoria = request.getParameter("cat");
        String sex=request.getParameter("s");	
        
        
        
        List<Integer> lp=new ArrayList<Integer>();
        lp = pd.get_list_id();
        
        if(categoria!=null)
        {
       	 lp=pd.get_list_id_cat(categoria);
       	 
        }
        else if(sex!=null)
        {
       	 lp = pd.get_list_id_sex(sex);
       	 
        }
        else
        {
       	 lp = pd.get_list_id();
        }
        
        for(int id:lp)
        {
        	Product p=pd.get_prod(id);
        	ProductImageDAO id_ = new ProductImageDAO();
            List<ProductImage> img = id_.doRetrieveById(p.getId_prod());
            ProductImage im = img.get(0);
            String path_img = "./resource/Prodotti/" + im.getImg();
            
            BigDecimal bd = new BigDecimal(Double.toString(p.getPrezzo()));
            bd = bd.setScale(2, RoundingMode.HALF_UP);

            double roundedValue = bd.doubleValue();
            
        	array[c]=new P_obj(p.getId_prod(),p.getNome(),bd.doubleValue(),path_img);
        	c=c+1;
        }
    			
        Gson gson = new Gson();
        
        String json = gson.toJson(array);

        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }
}
