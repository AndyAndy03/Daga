<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.unisa.model.User, it.unisa.model.Card, it.unisa.model.Home, it.unisa.model.CardDAO, it.unisa.model.HomeDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>USER</title>
    <style>
    body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

h1, h3 {
    text-align: center;
    color: #000000;
}

.menu {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    list-style: none;
    padding: 0;
    text-align: center;
}

.menu li {
    margin: 10px 20px;
}

.menu a {
    text-decoration: none;
    color: #fff;
    background-color: #333;
    display: inline-block;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

.menu a:hover {
    background-color: #007bff;
    color: #fff;
}

.info {
    margin-top: 20px;
    border-top: 1px solid #ccc;
    padding-top: 20px;
}

.info h3 {
    margin-top: 0;
    color: #000000;
}

.info p {
    margin-bottom: 10px;
}

/* Responsive Styles */
@media (max-width: 1200px) {
    .container {
        width: 90%;
    }
    
    .menu li {
        margin: 10px 15px;
    }
}

@media (max-width: 992px) {
    .container {
        width: 95%;
    }
    
    .menu a {
        padding: 8px 16px;
    }
}

@media (max-width: 768px) {
    .container {
        width: 100%;
        margin: 10px;
        padding: 15px;
    }
    
    .menu {
        flex-direction: column;
    }
    
    .menu li {
        margin: 5px 0;
    }
    
    .menu a {
        padding: 10px;
    }
}

@media (max-width: 576px) {
    .container {
        padding: 10px;
    }
    
    .menu a {
        padding: 8px;
        font-size: 14px;
    }
}

    </style>
</head>
<body>
<%
    session = request.getSession();
    User utente = (User) session.getAttribute("utente");
    if (utente != null) {
    	System.out.println(utente.getTelefono());
        CardDAO cd = new CardDAO();
        Card c = cd.get_card(utente.getUsername());

        HomeDAO hd = new HomeDAO();
        Home h = hd.get_home(utente.getUsername());
%>
<div class="container">
    <h1 style="color: #000000;">Benvenuto <%= utente.getUsername() %> </h1>
    <ul class="menu">
        <% if (utente.getAdmin() == 1) { %>
            <li><a href="./admin.jsp">Gestisci Admin</a></li>
            <li><a href="./add_product.jsp">Aggiungi Prodotto</a></li>
            <li><a href="./del_product.jsp">Elimina Prodotto</a></li>
            <li><a href="./ordini_admin.jsp">Lista Tutti Ordini</a></li>
            <li><a href="./users_list.jsp">Lista Utenti</a></li>
        <% } %>
        </ul>
        <ul class="menu">
        <li><a href="./ordini.jsp">Lista Ordini</a></li>
        <li><a href="./add_home.jsp">Inserisci Indirizzo</a></li>
        <li><a href="./add_card.jsp">Inserisci Carta</a></li>
        
    </ul>
    
        <ul class="menu">
    <li><a href="./">Home</a></li>
    </ul>
    <div class="info">
        <h3>Dati personali</h3>
        <p>Nome: <%= utente.getNome() %></p>
        <p>Cognome: <%= utente.getCognome() %></p>
        <p>Email: <%= utente.getEmail() %></p>
        
    </div>
    <div class="info">
        <h3>Carta di credito</h3>
        <% if (c != null) { %>
            <p>Numero: <%= c.getNumero() %></p>
            <p>Data: <%= c.getData() %></p>
        <% } else { %>
            <p>Nessuna carta di credito associata</p>
        <% } %>
    </div>
    <div class="info">
        <h3>Indirizzo di spedizione</h3>
        <% if (h != null) { %>
            <p>Paese: <%= h.getPaese() %></p>
            <p>Cap: <%= h.getCap() %></p>
            <p>Via: <%= h.getVia() %></p>
            <p>Civico: <%= h.getCivico() %></p>
        <% } else { %>
            <p>Nessun indirizzo di spedizione associato</p>
        <% } %>
    </div>
</div>
<%
    } else {
        request.getRequestDispatcher("./login_form.jsp").forward(request, response);
    }
%>

</body>
</html>
