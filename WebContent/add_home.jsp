<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inserimento Indirizzo</title>
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
        @media only screen and (max-width: 600px) {
    body {
        padding: 10px; /* Add padding to the body for smaller screens */
    }
    .form-container {
        width: 90%;
        max-width: 100%; /* Adjust width for smaller screens */
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
    <form action="AddHome" method="post">
        <div class="form-container">
            <input type="hidden" id="id_user" name="id_user" value="<%=utente.getUsername() %>">
            <h2>Inserisci indirizzo di casa</h2>
            <div class="form-group">
                <label for="paese">Paese:</label>
                <input type="text" id="paese" name="paese" placeholder="Paese" required>
            </div>
            <div class="form-group">
                <label for="cap">CAP:</label>
                <input type="text" id="cap" name="cap" placeholder="CAP" required>
            </div>
            <div class="form-group">
                <label for="via">Via:</label>
                <input type="text" id="via" name="via" placeholder="Via" required>
            </div>
            <div class="form-group">
                <label for="civico">Numero civico:</label>
                <input type="text" id="civico" name="civico" placeholder="Numero civico" required>
            </div>
            <div class="form-group">
                <button type="submit">Inserisci Indirizzo</button>
            </div>
        </div>
    </form>
    <button class="home-button" onclick="window.location.href='index.jsp'">Home</button>
<% 
}
%>
</body>
</html>
