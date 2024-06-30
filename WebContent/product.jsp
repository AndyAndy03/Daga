<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODOTTO</title>
<link rel="stylesheet" href="./css/stile_home.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
    body {
        font-family: 'Georgia', 'Times New Roman', serif;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        margin: 50px;
    }
    .product {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #ccc;
        padding-bottom: 20px;
        margin-bottom: 20px;
    }
    .carousel-item img {
        width: 100%;
        height: auto;
    }
    .product-info {
        flex: 1;
        margin-left: 20px;
    }
    .product-info h2 {
        margin: 0;
        font-size: 2em;
    }
    .product-info p {
        margin: 5px 0;
        font-size: 1.2em;
    }
    .product-info button {
        background-color: black;
        color: white;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-size: 1em;
    }
    .product-info button:hover {
        background-color: #333;
    }
    .carousel {
        width: 50%;
    }
    
    .carousel-control-prev,
    .carousel-control-next {
        opacity: 0;
        transition: opacity 0.5s;
    }
    
    .carousel:hover .carousel-control-prev,
    .carousel:hover .carousel-control-next {
        opacity: 1;
    }
    
    .carousel-control-prev-icon,
    .carousel-control-next-icon {
        background-color: black;
    }
     /* Icone delle frecce */
    .carousel-control-prev-icon::before,
    .carousel-control-next-icon::before {
        color: black;
    }
    .description-content {
        display: none;
        margin-top: 10px;
    }
    .accordion .card-header {
        cursor: pointer;
    }
    .description-link {
        color: #777;
        text-decoration: underline;
    }
    @media (min-width: 601px) and (max-width: 900px) {
        .container {
            width: 85%;
            padding: 15px;
        }
        .product {
            flex-direction: column;
            align-items: flex-start;
            padding: 20px;
        }
        .product-info {
            margin-left: 0;
            width: 100%;
        }
        .carousel {
            width: 80%;
        }
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            padding: 8px;
        }
    }
</style>
<script>
    function toggleDescription() {
        var content = document.getElementById("descriptionContent");
        if (content.style.display === "none" || content.style.display === "") {
            content.style.display = "block";
        } else {
            content.style.display = "none";
        }
    }
</script>
</head>
<body>
<%@ page import="it.unisa.model.Product" %>
<%@ page import="it.unisa.model.ProductImage" %>
<%@ page import="it.unisa.model.ProductDAO" %>
<%@ page import="it.unisa.model.ProductImageDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="it.unisa.model.User" %>
<%@ include file="./WebContent/header.jsp" %>

<%
    session = request.getSession();
	User utente=(User)session.getAttribute("utente");
    int id = Integer.parseInt(request.getParameter("id"));
    ProductDAO pd=new ProductDAO();
    ProductImageDAO pid=new ProductImageDAO();
    Product p = pd.doRetrieveById(id);
    
    List<ProductImage> i = (List<ProductImage>) pid.doRetrieveById(id);
    int idprod = p.getId_prod();
    String[] path_img = new String[i.size()];
    int k = 0;
    for (ProductImage pp : i) {
        String s = pp.getImg();
        path_img[k] = "./resource/Prodotti/" + s;
        k++;
    }
    k = 0;
%>

<div class="container">
    <div class="product">
        <div id="productCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <% for (int j = 0; j < i.size(); j++) { %>
                    <div class="carousel-item <%= j == 0 ? "active" : "" %>">
                        <img src="<%= path_img[j] %>" class="d-block w-100" alt="Product Image <%= j + 1 %>">
                    </div>
                <% } %>
            </div>
            <a class="carousel-control-prev" href="#productCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#productCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="product-info">
            <h2><%= p.getNome() %></h2>
            <p>Prezzo: &euro;<%= p.getPrezzo() %></p>
            <p>Disponibilita': <%= p.getQuantita_disponibile() %></p>
            <p><a href="javascript:void(0);" onclick="toggleDescription()" class="description-link">Descrizione</a></p>
            <div id="descriptionContent" class="description-content">
                <p><%= p.getDescrizione() %></p>
            </div>
            <% if (utente == null) { %>
                <form action="add_cart_no_login" method="post">
                    <input type="hidden" value="" name="user">
                    <button value="<%= idprod %>" name="productId">Add to Cart</button>
                </form>
                
            <% } else { %>
                <form action="AddCart" method="post" style="margin: 3px">
                    <input type="hidden" value=<%= utente.getUsername() %> name="user">
                    <button value="<%= idprod %>" name="productId">Add to Cart</button>
                </form>
                
                <form action="AddPre" method="post" style="margin: 3px">
                    <input type="hidden" value=<%= utente.getUsername() %> name="user">
                    <button value="<%= idprod %>" name="productId"><i class="fas fa-heart"></i></button>
                </form>
               
                <% if (utente.getAdmin() == 1) { %>
                    <form action="modify_product.jsp" method="post" style="margin: 3px">
                        <input type="hidden" name="ProductId" value=<%= p.getId_prod() %>>
                        <button type="submit">modifica prodotto</button>
                    </form>
                <% } %>
            <% } %>
        </div>
    </div>
</div>
<%@ include file="./WebContent/footer.html" %>
</body>
</html>
