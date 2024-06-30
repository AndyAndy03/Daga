<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN</title>
    <link rel="stylesheet" href="./css/styles.css">
    <style>
        body.background {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url("./WebContent/gioielli.jpg");
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Permette di avere i form e il bottone "Home" in colonna */
            height: 100vh;
            color: #fff;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            width: 450px; /* Maggiore larghezza */
            text-align: center; /* Centra il testo verticalmente */
        }

        h2 {
            margin-top: 0;
            font-size: 1.5em;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #ffffff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 1em;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-container:last-child {
            margin-bottom: 0;
        }

        .home-button {
            margin-top: 20px;
            width: 150px;
            padding: 10px;
            background-color: #000000;
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
    .form-container {
        width: 90%; /* Adjust width for smaller screens */
        max-width: 100%; /* Ensure it takes full width on smaller screens */
    }

    input[type="text"] {
        width: 100%; /* Make text inputs full width on smaller screens */
    }

    button {
        width: 90%; /* Adjust button width for smaller screens */
    }

    .home-button {
        width: 100%; /* Make home button full width on smaller screens */
    }
}
    </style>
</head>
<body class="background">
<%
session = request.getSession();
User utente = (User) session.getAttribute("utente");
if (utente != null && utente.getAdmin() == 1) {
%>
    <form action="AddAdmin" method="post">
        <div class="form-container">
            <h2>Inserisci ID utente da promuovere</h2>
            <label for="username">ID:</label>
            <input type="text" id="username" name="username" placeholder="username utente" required>
            <button type="submit">Promuovi</button>
        </div>
    </form>
   
    <form action="DelAdmin" method="post">
        <div class="form-container">
            <h2>Inserisci ID admin da eliminare</h2>
            <label for="username">ID:</label>
            <input type="text" id="username" name="username" placeholder="username admin" required>
            <button type="submit">Elimina</button>
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
