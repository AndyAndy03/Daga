<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>
<%@ page import="it.unisa.model.UserDAO" %>
<%@ page import="it.unisa.model.Card" %>
<%@ page import="it.unisa.model.CardDAO" %>
<%@ page import="it.unisa.model.Home" %>
<%@ page import="it.unisa.model.HomeDAO" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Utenti</title>
    <link rel="stylesheet" href="./css/stile_home.css">
    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

#utenti-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 20px;
}

.utente {
    background: #fff;
    padding: 20px;
    margin: 10px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    box-sizing: border-box;
    color: #333;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.utente h1 {
    margin-top: 0;
    font-size: 1.5em;
}

.info {
    width: 100%;
    margin-top: 20px;
}

.info h3 {
    margin-top: 0;
    font-size: 1.2em;
}

.info p {
    margin: 5px 0;
    color: #555;
}

.home-button {
    margin: 20px auto;
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

/* Responsive Styles */
@media (max-width: 1200px) {
    #utenti-container {
        padding: 15px;
    }

    .utente {
        margin: 10px;
        padding: 15px;
    }
}

@media (max-width: 992px) {
    .utente {
        max-width: 450px;
        padding: 15px;
        margin: 10px;
    }

    .utente h1 {
        font-size: 1.4em;
    }

    .info h3 {
        font-size: 1.1em;
    }
}

@media (max-width: 768px) {
    .utente {
        max-width: 400px;
        padding: 10px;
        margin: 8px;
    }

    .utente h1 {
        font-size: 1.3em;
    }

    .info h3 {
        font-size: 1em;
    }
}

@media (max-width: 576px) {
    #utenti-container {
        flex-direction: column;
        align-items: center;
        padding: 10px;
    }

    .utente {
        width: 90%;
        padding: 10px;
        margin: 5px 0;
    }

    .utente h1 {
        font-size: 1.2em;
    }

    .info h3 {
        font-size: 0.9em;
    }

    .home-button {
        width: 100px;
        padding: 8px;
        font-size: 0.9em;
    }
}

    </style>
</head>
<body>
<%@ include file="./WebContent/header.jsp" %>
<%
    session = request.getSession();
    User utente = (User) session.getAttribute("utente");
    if (utente != null && utente.getAdmin() == 1) {
        UserDAO ud = new UserDAO();
        List<User> list_u = ud.get_users();
        CardDAO cd = new CardDAO();
        HomeDAO hd = new HomeDAO();
%>
<div id="utenti-container">
    <%
        for (User u : list_u) {
            Card c = cd.get_card(u.getUsername());
            Home h = hd.get_home(u.getUsername());
    %>
    <div class="utente">
        <h1><%= u.getUsername() %></h1>
        <div class="info">
            <h3>Dati personali</h3>
            <p>Nome: <%= u.getNome() %></p>
            <p>Cognome: <%= u.getCognome() %></p>
            <p>Email: <%= u.getEmail() %></p>
            <p>Telefono: <%= u.getTelefono() %></p>
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
        }
    %>
</div>

<button class="home-button" onclick="window.location.href='index.jsp'">Home</button>

<%
    } else {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/");
        dispatcher.forward(request, response);
    }
%>
<%@ include file="./WebContent/footer.html" %>
</body>
</html>
