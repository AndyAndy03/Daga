<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elimina Prodotto</title>
    <link rel="stylesheet" href="./css/styles.css">
    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url("./WebContent/gioielli.jpg");
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    color: #fff;
    flex-direction: column; /* Permette di avere il form e il bottone "Home" in colonna */
}

.form-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 90%; /* Modificato per percentuali */
    max-width: 500px;
    box-sizing: border-box;
    color: #333;
    margin: 20px; /* Aggiunto margine per spaziatura su piccoli schermi */
}

h2 {
    margin-top: 0;
    font-size: 1.5em;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    color: #333;
}

button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #dc3545;
    color: white;
    font-size: 1em;
    cursor: pointer;
}

button:hover {
    background-color: #c82333;
}

.home-button {
    margin-top: 20px;
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

/* Media Query per schermi più piccoli */
@media (max-width: 600px) {
    .form-container {
        width: 100%; /* Assicura che occupi tutta la larghezza disponibile */
        padding: 15px; /* Riduce il padding per piccoli schermi */
    }

    button, .home-button {
        width: 100%; /* Bottoni adattati alla larghezza disponibile */
        padding: 10px; /* Ridotto per piccoli schermi */
        font-size: 0.9em; /* Leggermente ridotto per migliorare la leggibilità */
    }
}

/* Media Query per schermi medi */
@media (min-width: 601px) and (max-width: 900px) {
    .form-container {
        width: 80%; /* Riduce la larghezza rispetto a schermi più grandi */
    }
}

    </style>
</head>
<body>
<%
session = request.getSession();
User utente = (User) session.getAttribute("utente");
if (utente != null && utente.getAdmin() == 1) {
%>
    <form action="DeleteProduct" method="post">
        <div class="form-container">
            <h2>Inserisci id prodotto da eliminare</h2>
            <div class="form-group">
                <label for="productId">Id:</label>
                <input type="text" id="productId" name="productId" placeholder="Id del prodotto" required>
            </div>
            <div class="form-group">
                <button type="submit">Elimina Prodotto</button>
            </div>
        </div>
    </form>

    <button class="home-button" onclick="window.location.href='index.jsp'">Home</button>
<% 
} else {
    RequestDispatcher dispatcher = request.getRequestDispatcher("/");
    dispatcher.forward(request, response);
}
%>
</body>
</html>
