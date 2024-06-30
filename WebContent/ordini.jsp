<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ORDINI</title>
<link rel="stylesheet" href="./css/stile_home.css">

<style>
    body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.content {
    flex: 1;
    position: relative;
    padding: 20px;
}

.container {
    display: flex;
    flex-wrap: wrap; /* Permette il wrapping dei prodotti */
    justify-content: center; /* Centra i prodotti */
    padding: 20px;
    margin-top: 20px; /* Aggiunto margine superiore */
    gap: 20px; /* Spazio tra i productcard */
}

.productcard {
    width: 100%;
    max-width: 200px; /* Dimensioni massime del prodotto */
    height: auto;
    padding: 20px;
    text-align: center;
    background-color: #e6e6e6;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s, box-shadow 0.3s;
    flex: 1 1 calc(100% / 4 - 40px); /* Flex-grow, flex-shrink, flex-basis */
}

.productcard:hover {
    transform: translateY(-10px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
}

.productcard img {
    width: 100%;
    height: auto;
    border-radius: 5px;
    transition: box-shadow 0.3s;
    display: block; /* Assicura che l'immagine sia un elemento block */
    margin-bottom: 15px; /* Spazio sotto l'immagine */
}

.productcard img:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.productcard button:hover {
    opacity: 0.8;
}

.productcard .product-name {
    font-size: 1.2em;
    margin-top: 15px;
    color: #000;
}

/* Rimuovi il testo del nome del prodotto per impostazione predefinita */
.product-name {
    opacity: 0;
    height: 0;
    width: 0;
}

/* Mostra il testo del nome del prodotto solo quando passi sopra con il mouse */
.productcard:hover .product-name {
    opacity: 1;
    height: auto;
    width: 100%;
}

.home-button {
    margin: 20px auto; /* Centra il bottone orizzontalmente */
    width: 150px;
    padding: 10px;
    background-color: #000;
    border: none;
    border-radius: 4px;
    color: white;
    font-size: 1em;
    cursor: pointer;
    text-align: center;
}

.home-button:hover {
    background-color: #333;
}

/* Media Queries per diverse dimensioni di schermo */

/* Schermi piccoli (fino a 600px) */
@media (max-width: 600px) {
    .container {
        padding: 10px;
        gap: 10px;
    }
    
    .productcard {
        flex: 1 1 100%; /* Ogni productcard occupa tutta la larghezza disponibile */
        max-width: 100%;
        padding: 10px;
    }
    
    .home-button {
        width: 100%; /* Bottoni adattati alla larghezza disponibile */
        padding: 10px;
        font-size: 0.9em;
    }
}

/* Schermi medi (601px a 900px) */
@media (min-width: 601px) and (max-width: 900px) {
    .productcard {
        flex: 1 1 calc(50% - 40px); /* Due productcard per riga */
        max-width: 50%;
        padding: 15px;
    }
}

/* Schermi grandi (più di 900px) */
@media (min-width: 901px) {
    .productcard {
        flex: 1 1 calc(25% - 40px); /* Quattro productcard per riga */
        max-width: 25%;
        padding: 20px;
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
<%@ page import="it.unisa.model.OrdiniDAO" %>

<%
    session = request.getSession();
    User utente = (User) session.getAttribute("utente");
    if (utente == null) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("./login_form.jsp");
        dispatcher.forward(request, response);
    }
    
    OrdiniDAO od = new OrdiniDAO();
    List<Integer> ordini = null;
    ordini = od.get_ordini(utente.getUsername());
%>

<div class="content">
    <div class="container" style="justify-content: center">
        <%
            if (ordini != null) {
                for (int ordine : ordini) {
        %>
        <div class="productcard">
            <a href="./ShowOrdine.jsp?ordine=<%= ordine %>">Ordine N: <%= ordine %> Data: <%= od.get_ordine_data(ordine) %></a>
        </div>
        <%
                }
            }
        %>
    </div>
</div>

<button class="home-button" onclick="window.location.href='index.jsp'">Home</button>

<%@ include file="./WebContent/footer.html" %>
</body>
</html>
