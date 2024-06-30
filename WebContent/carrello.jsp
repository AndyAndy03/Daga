<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CARRELLO</title>
<link rel="stylesheet" href="./css/stile_home.css">

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
    }
    .product {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
        width: 100%;
        max-width: 1000px;
        box-sizing: border-box;
    }
    .product img {
        width: 200px;
        height: 200px;
        margin-right: 20px;
        border-radius: 10px;
        object-fit: cover;
    }
    .product-info {
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .product-info h2 {
        margin: 0 0 10px 0;
    }
    .product-info p {
        margin: 5px 0;
        color: #666;
    }
    .total-container {
        text-align: right;
        font-size: 1.5em;
        margin-top: 20px;
    }
    .total-container form {
        display: inline-block;
        margin-left: 20px;
    }
    button {
        background-color: black;
        color: white;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-size: 1em;
    }
    button:hover {
        background-color: #333;
    }
    @media only screen and (max-width: 600px) {
    .container {
        width: 90%; /* Adjust container width for smaller screens */
        padding: 10px; /* Add padding to the container for smaller screens */
    }

    .product {
        flex-direction: column; /* Stack products vertically on smaller screens */
        padding: 10px; /* Adjust product padding for smaller screens */
    }

    .product img {
        width: 100%; /* Make product image full width on smaller screens */
        height: auto; /* Ensure image height adjusts proportionally */
        margin-right: 0; /* Remove image margin on smaller screens */
        margin-bottom: 10px; /* Add space below image on smaller screens */
    }

    .product-info {
        padding: 0 10px; /* Add horizontal padding to product info for smaller screens */
    }

    .total-container {
        font-size: 1.2em; /* Adjust total container font size for smaller screens */
        text-align: center; /* Center align total container text on smaller screens */
        margin-top: 10px; /* Decrease top margin of total container for smaller screens */
    }

    .total-container form {
        margin-left: 0; /* Remove left margin from the form for smaller screens */
        margin-top: 10px; /* Add top margin to the form for better spacing on smaller screens */
    }
}
</style>
</head>
<body>
<%@ include file="./WebContent/header.jsp" %>

<%@ page import="it.unisa.model.Product" %>
<%@ page import="it.unisa.model.ProductImage" %>
<%@ page import="it.unisa.model.ProductDAO" %>
<%@ page import="it.unisa.model.ProductImageDAO" %>
<%@ page import="it.unisa.model.Cart" %>
<%@ page import="it.unisa.model.User" %>
<%@ page import="java.util.List" %>

<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    session = request.getSession();
    User utente = (User)session.getAttribute("utente");
    List<Integer> ca=new ArrayList<Integer>();
    List<Integer> q=new ArrayList<Integer>();
    Cart c = new Cart();
    if (utente == null) {
    	
    	if(session.getAttribute("carrello")==null)
    	{
    		session.setAttribute("carrello",ca);
    		session.setAttribute("q",q);
    	}
    	else
    	{
    		ca=(List<Integer>)session.getAttribute("carrello");
    		q=(List<Integer>)session.getAttribute("q");
    	}
    		System.out.println(ca);
    		System.out.println(q);
    } 
    else
    {
    	
        ca = c.get_cart(utente.getUsername());
    }
    float tot = 0;
    
    String error = (String) request.getAttribute("error");
   String success = (String) request.getAttribute("success");
    if(error!=null)
    {
    %>
    <h7 style="color:red; margin-left:10px"> 
    <%=error%>
    </h7>
    <%} 
    
    if(success!=null)
    {
    %>
    <h7 style="color:green; margin-left:10px"> 
    <%=success%>
    </h7>
    <%} 
    
    
    if (ca != null) {
        
    	int i=0;
        for (int el : ca) {
            ProductDAO pd = new ProductDAO();
            Product p = pd.doRetrieveById(el);
            if(utente!=null)
            tot += (p.getPrezzo()*c.get_q(p.getId_prod(),utente.getUsername()));
            else
            tot += (p.getPrezzo()*q.get(ca.indexOf(el)));	
            ProductImageDAO id = new ProductImageDAO();
            List<ProductImage> img = id.doRetrieveById(p.getId_prod());

            ProductImage im = img.get(0);
            String pi = "./resource/Prodotti/";
            String s = im.getImg();
            String path_img = "./resource/Prodotti/" + s;
            
%>
<div class="container">
    <div class="product">
        <img src="<%=path_img%>" alt="<%=p.getNome()%>">
        <div class="product-info">
            <h2><%=p.getNome()%></h2>
            <p>Prezzo: &euro;<%=p.getPrezzo()%></p>
            
            
                <% if (utente != null){ %>
                	<form action="UpdateQCart" method="post">
                	<label for="q">Quantità (tra 1 e <%=p.getQuantita_disponibile()%>):</label>
                	<input type="number" id="q" name="q" min="1" max="<%=p.getQuantita_disponibile()%>" value="<%=c.get_q(p.getId_prod(), utente.getUsername())%>">
                	<input type="hidden" id="id" name="id" value="<%=p.getId_prod()%>">
                	<input type="hidden" id="user" name="user" value="<%=utente.getUsername()%>">
                <%}else{ %>
               		 <form action="update_q_no_login" method="post">
                	<label for="q">Quantità (tra 1 e <%=p.getQuantita_disponibile()%>):</label>
                	<input type="number" id="q" name="q" min="1" max="<%=p.getQuantita_disponibile()%>" value="<%=q.get(i)%>">
         			<input type="hidden" id="id" name="id" value="<%=p.getId_prod()%>">
                	<input type="hidden" id="user" name="user" value="i">
         
         		<%
         		i=i+1;} %>
                
                <input type="submit" value="Aggiorna">
            </form>

            
                
                 <% if (utente != null){ %>
                	<form action="RemoveCart" method="post">
                	<input type="hidden" value="<%=utente.getUsername()%>" name="user">
                <%}else{ %>
                	<form action="remove_cart_no_login" method="post">
                <input type="hidden" value="" name="user">
         
         		<%} %>
         		
                <button value="<%=p.getId_prod()%>" name="productId">Rimuovi</button>
            </form>
        </div>
    </div>
</div>
<%
        }
    }

    double scale = Math.pow(10, 2);  // 2 is the number of decimal places
    double roundedValue = Math.round(tot * scale) / scale;
%>

<div class="container total-container">
<%if(!ca.isEmpty()){ %>
    TOTALE: &euro;<%=roundedValue%>
    
    <form action="ShopCart" method="post">
     <% if (utente != null){ %>
        <input type="hidden" name="user" value="<%= utente.getUsername()%>">
        <%}else{ %>
        <input type="hidden" name="user" value="">
        <%} %>
        <button type="submit">ACQUISTA</button>
    </form>
    <%} %>
</div>

</body>
<%@ include file="./WebContent/footer.html" %>
</html>
