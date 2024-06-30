<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link rel="stylesheet" href="./css/stile_home.css">

<style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
}

/* Contenitore principale */
.container {
    width: 90%; /* Aumentata la larghezza per piccoli schermi */
    max-width: 1200px; /* Limite di larghezza per grandi schermi */
    margin: 0 auto;
    padding: 20px;
    box-sizing: border-box;
}

/* Stili per ogni prodotto */
.product {
    display: flex;
    flex-direction: row;
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
    flex-wrap: wrap; /* Permette il wrapping per piccoli schermi */
}

/* Immagini del prodotto */
.product img {
    width: 200px;
    height: 200px;
    margin-right: 20px;
    border-radius: 10px;
    object-fit: cover;
    flex-shrink: 0; /* Previene il ridimensionamento */
}

/* Informazioni del prodotto */
.product-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    min-width: 200px; /* Assicura una larghezza minima */
}

/* Titolo del prodotto */
.product-info h2 {
    margin: 0 0 10px 0;
}

/* Descrizione del prodotto */
.product-info p {
    margin: 5px 0;
    color: #666;
}

/* Contenitore dei bottoni */
.btn-container {
    display: flex;
    align-items: center;
    flex-wrap: wrap; /* Permette il wrapping per piccoli schermi */
}

/* Stili generali dei bottoni */
button {
    background-color: black;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    font-size: 1em;
    margin-right: 10px;
    margin-bottom: 10px; /* Spazio per wrapping su piccoli schermi */
}

button:hover {
    background-color: #333;
}

/* Media Queries per la responsività */

/* Schermi piccoli (fino a 600px) */
@media (max-width: 600px) {
    .container {
        width: 95%; /* Aumenta la larghezza per piccoli schermi */
        padding: 10px;
    }
    
    .product {
        flex-direction: column; /* Disposizione verticale per piccoli schermi */
        align-items: flex-start;
        padding: 15px;
    }

    .product img {
        width: 100%; /* Larghezza completa per l'immagine */
        height: auto;
        margin-right: 0;
        margin-bottom: 15px; /* Spazio inferiore per piccoli schermi */
    }

    .product-info {
        width: 100%; /* Larghezza completa */
        min-width: 0;
    }
    
    .btn-container {
        width: 100%; /* Larghezza completa per i bottoni */
        justify-content: center; /* Centra i bottoni */
    }
    
    button {
        width: 100%; /* Bottoni adattati alla larghezza disponibile */
        text-align: center;
    }
}

/* Schermi medi (da 601px a 900px) */
@media (min-width: 601px) and (max-width: 900px) {
    .product {
        flex-direction: column; /* Disposizione verticale */
        align-items: flex-start;
        padding: 20px;
    }

    .product img {
        width: 100%;
        height: auto;
        margin-right: 0;
        margin-bottom: 15px;
    }

    .product-info {
        width: 100%;
    }
    
    .btn-container {
        width: 100%;
        justify-content: flex-start;
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
<%@ page import="it.unisa.model.Preferiti" %>
<%@ page import="java.util.List" %>
<%
    session = request.getSession();
    User utente = (User)session.getAttribute("utente");
    if (utente == null) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("./login_form.jsp");
        dispatcher.forward(request, response);
    }

    float tot = 0;
    Preferiti c = new Preferiti();
    List<Integer> ca = c.get_list(utente.getUsername());

    if (ca != null) {
        for (int el : ca) {
            System.out.println(el);
        }

        for (int el : ca) {
            ProductDAO pd = new ProductDAO();
            Product p = pd.doRetrieveById(el);
            tot += p.getPrezzo();
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
            <p>Descrizione del prodotto.</p>
            <p>Prezzo: &euro;<%=p.getPrezzo()%></p>
            <div class="btn-container">
                <form action="AddCart" method="post">
                    <input type="hidden" value="<%=utente.getUsername()%>" name="user">
                    <button value="<%=p.getId_prod()%>" name="productId">Aggiungi al Carrello</button>
                </form>
                <form action="DelPre" method="post">
                    <input type="hidden" value="<%=utente.getUsername()%>" name="user">
                    <button value="<%=p.getId_prod()%>" name="productId">Rimuovi dai Preferiti</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%
        }
    }
%>

<%@ include file="./WebContent/footer.html" %>
</body>
</html>
