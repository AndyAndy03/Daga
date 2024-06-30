<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>CATALOGO</title>
    <link rel="stylesheet" href="./css/stile_catalogo.css">
    <link rel="stylesheet" href="./css/stile_productcard.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
</head>
<body>
    <%@ include file="./WebContent/header.jsp" %>

    <div class="content">
        <%@ page import="it.unisa.model.Product" %>
        <%@ page import="it.unisa.model.ProductImage" %>
        <%@ page import="it.unisa.model.ProductDAO" %>
        <%@ page import="it.unisa.model.ProductImageDAO" %>
        <%@ page import="java.util.List" %>
         <%@ page import="java.util.List" %>
    <%@ page import="java.util.Random" %>
        <div class="container" style="flex-wrap: wrap"></div>
    
<script>

document.addEventListener('DOMContentLoaded', function() {
	
	var params = new URLSearchParams(window.location.search);
    var categoria = params.get('cat');
      
      
      let requestUrl = 'get_product_json';
      if (categoria) {
          requestUrl += '?cat=' + categoria;
      }
      
      
      var sesso = params.get('s');
        
        
        if (sesso) {
            requestUrl += '?s=' + sesso;
        }
        
	$.ajax({
        url: requestUrl, // URL della tua servlet
        method: 'GET',
        dataType: 'json',
        success: function(response) {
            
            var suggestionsArray = response;
    
            
            
            for(let el of suggestionsArray)
            {
            	 var url="./product.jsp?id="+el["id"];
            	 
            	document.querySelector(".container").innerHTML += `
					<div class="productcard" style="margin:20px">
                    <form action=`+url+` method="post">
                        <input type="hidden" name="ProductId" value=el["id"]>
                        <button type="submit">
                            <img src=`+el["img"]+` alt=`+el["nome"]+` />
                        </button>
                    </form>
                    <div class="product-name">`+el["nome"]+`</div>
                    <br>
                    <div class="product-name">&euro;`+el["prezzo"]+`</div>
                </div>
                
            </div>
				`
            }
    
}
	
	})});
    </script>
    
    
    <footer>
        <%@ include file="./WebContent/footer.html" %>
    </footer>
</body>
</html>
