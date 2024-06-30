<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>HOME</title>
    <link rel="stylesheet" href="./css/stile_home.css">
    <link rel="stylesheet" href="./css/stile_productcard.css">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
    <%@ include file="./WebContent/header.jsp" %>

    <%@ page import="it.unisa.model.Product" %>
    <%@ page import="it.unisa.model.ProductImage" %>
    <%@ page import="it.unisa.model.ProductDAO" %>
    <%@ page import="it.unisa.model.ProductImageDAO" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.Random" %>
    <div class="content">
        <div class="Categorie">
            <div class="CatUomo">
                <div class="category-image">
                    <img src="./resource/Prodotti/Uomo/Anelli/ane010stU/c1425121-model.webp" alt="Categoria Uomo">
                    <a href="./catalogo.jsp?s=M">
                    <div class="category-overlay">
                    
                        <span>Uomo</span> <!-- Aggiunta la scritta -->
                        
                    </div>
                    </a>
                </div>
            </div>
            <div class="CatDonna">
                <div class="category-image">
                    <img src="./resource/Prodotti/Donna/Bracciali/bra002stD/913008415.webp" alt="Categoria Donna">
                    <a href="./catalogo.jsp?s=F">
                    <div class="category-overlay">
                    
                        <span>Donna</span> <!-- Aggiunta la scritta -->
                        
                    </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- Aggiunta la scritta "I consigliati del mese" -->
        <div class="recommended-heading">I consigliati del mese</div>

        <div class="content">
            <!-- Bottone di scorrimento sinistro -->
            <button class="scroll-arrow scroll-left" onclick="scrollLeft()">&#10094;</button>
            
            <!-- Contenitore dei prodotti -->
            <div class="container">
               
            </div>
            
            <!-- Bottone di scorrimento destro -->
            <button class="scroll-arrow scroll-right" onclick="scrollRight()">&#10095;</button>
        </div>
    
    
    <script>
    document.addEventListener('DOMContentLoaded', function() {
    	$.ajax({
            url: 'get_product_json', // URL della tua servlet
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                
                var suggestionsArray = response;
        
                
                var c=0;
                for(let el of suggestionsArray)
                {
                	if((Math.floor(Math.random() * 6) + 1)==1 && c<10)
    				{
    					c=c+1;
    					try {
    			            var url="./product.jsp?id="+el["id"];
    			            
                	document.querySelector(".container").innerHTML += `
    				    <div class="productcard">
    				        <form action=`+url+` method="post">
    				            <input type="hidden" name="ProductId" value=`+el["id"]+`>
    				            <button type="submit">
    				                <img src=`+el["img"]+` alt=`+el["nome"]+` />
    				            </button>
    				        </form>
    				        <div class="product-name">`+el["nome"]+`</div>
    				        <br>
    				        <div class="product-price">&euro;`+el["prezzo"]+` </div>
    				    </div>
    				`
                
        
                } catch (error) {
                    
                }
                }}
    	
            }})});
    
    </script>
    
    <div class="recommended-heading"><a href="catalogo.jsp" style="text-decoration: none" color="black">Catalogo completo</a></div>
    
   
        <footer>
            <%@ include file="./WebContent/footer.html" %>
        </footer>

        <script>
            // Funzione per aggiornare lo stato delle frecce di scorrimento
            function updateScrollArrows() {
                var container = document.querySelector('.container');
                var scrollLeft = container.scrollLeft;
                var scrollWidth = container.scrollWidth;
                var clientWidth = container.clientWidth;

                var scrollRightButton = document.querySelector('.scroll-right');
                var scrollLeftButton = document.querySelector('.scroll-left');

                // Mostra/nasconde la freccia sinistra in base alla posizione dello scroll
                if (scrollLeft > 0) {
                    scrollLeftButton.style.display = 'block';
                } else {
                    scrollLeftButton.style.display = 'none';
                }

                // Mostra/nasconde la freccia destra in base alla posizione dello scroll
                if (scrollWidth > scrollLeft + clientWidth) {
                    scrollRightButton.style.display = 'block';
                } else {
                    scrollRightButton.style.display = 'none';
                }
            }

            // Funzione per lo scorrimento verso sinistra
            function scrollLeft() {
                var container = document.querySelector('.container');
                container.scrollBy({
                    left: -300,
                    behavior: 'smooth'
                });
                updateScrollArrows();
            }

            // Funzione per lo scorrimento verso destra
            function scrollRight() {
                var container = document.querySelector('.container');
                container.scrollBy({
                    left: 300,
                    behavior: 'smooth'
                });
                updateScrollArrows();
            }

            // Aggiorna lo stato delle frecce quando la pagina è caricata o ridimensionata
            window.addEventListener('load', updateScrollArrows);
            window.addEventListener('resize', updateScrollArrows);
        </script>
    </body>
</html>