<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inserimento Carta di Credito</title>
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
    flex-direction: column; /* Permette di avere i form e il bottone "Home" in colonna */
}

.form-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    box-sizing: border-box;
    color: #333;
}

h2 {
    margin-top: 0;
    font-size: 1.5em;
    color: #333;
    text-align: center; /* Centro il testo */
}

.form-group {
    margin-bottom: 15px;
    text-align: center; /* Centro i contenuti del gruppo di form */
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.form-group input,
.form-group select,
.form-group textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    color: #333;
}

.form-group textarea {
    resize: vertical;
    height: 100px;
}

.form-group input[type="file"] {
    padding: 3px;
}

button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: white;
    font-size: 1em;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

img#previewImage {
    margin-top: 10px;
    max-width: 100%;
    display: none;
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

/* Media query per dispositivi mobili */
@media (max-width: 600px) {
    body {
        padding: 20px;
        height: auto;
    }

    .form-container {
        width: 100%;
        padding: 15px;
    }

    button,
    .home-button {
        width: 100%;
    }
}
       
    </style>
</head>
<body>

<%
session = request.getSession();
User utente = (User) session.getAttribute("utente");
if (utente != null) {
%>
    <form action="AddCard" method="post">
        <div class="form-container">
            <input type="hidden" id="id_user" name="id_user" value="<%=utente.getUsername() %>">
            <h2>Inserisci carta di credito</h2>
            <div class="form-group">
                <label for="CardNumber">Numero:</label>
                <input type="text" id="CardNumber" name="CardNumber" placeholder="Numero carta" required>
            </div>
            <div class="form-group">
                <label for="CardDate">Data:</label>
                <input type="month" id="CardDate" name="CardDate" placeholder="Data carta" required>
            </div>
            <div class="form-group">
                <label for="CardCVC">CVC:</label>
                <input type="text" id="CardCVC" name="CardCVC" placeholder="CVC carta" required>
            </div>
            <div class="form-group">
                <button type="submit">Inserisci Carta</button>
            </div>
        </div>
    </form>
    <button class="home-button" onclick="window.location.href='index.jsp'">Home</button>
<% 
}
%>
</body>
</html>
