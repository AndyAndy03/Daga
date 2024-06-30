<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inserimento Prodotto</title>
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
if (utente != null && utente.getAdmin() == 1) {
%>
    <form action="InsertProduct" method="post" enctype="multipart/form-data">
        <div class="form-container">
            <h2>Inserisci un nuovo prodotto</h2>
            <div class="form-group">
                <label for="productName">Nome:</label>
                <input type="text" id="productName" name="productName" placeholder="Nome del prodotto" required>
            </div>
            <div class="form-group">
                <label for="productDescription">Descrizione:</label>
                <textarea id="productDescription" name="productDescription" placeholder="Descrizione del prodotto" required></textarea>
            </div>
            <div class="form-group">
                <label for="productPrice">Prezzo:</label>
                <input type="number" step="0.01" min="0.00" id="productPrice" name="productPrice" placeholder="Prezzo del prodotto" oninput="formatPrice(this)" required>
            </div>
            <div class="form-group">
                <label for="productCat">Categoria:</label>
                <select id="productCat" name="productCat" required>
                    <option value="Anelli">Anelli</option>
                    <option value="Bracciali">Bracciali</option>
                    <option value="Collane">Collane</option>
                    <option value="Orecchini">Orecchini</option>
                    <option value="Orologi">Orologi</option>
                </select>
            </div>
            <div class="form-group">
                <label for="productSex">Genere:</label>
                <select id="productSex" name="productSex" required>
                    <option value="M">M</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="form-group">
                <label for="productImage">Foto:</label>
                <input type="file" accept="image/png, image/jpeg" id="productImage" name="productImage" required>
                <img id="previewImage" src="#" alt="Preview Image">
            </div>
            <div class="form-group">
                <button type="submit">Inserisci Prodotto</button>
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

<script>
    function formatPrice(input) {
        input.value = input.value.replace(/[^0-9.]/g, '');
        if (input.value.includes('.')) {
            var parts = input.value.split('.');
            input.value = parts[0] + '.' + (parts[1] ? parts[1].slice(0, 2) : '');
        }
    }

    document.getElementById('productImage').addEventListener('change', function() {
        var preview = document.getElementById('previewImage');
        var file = this.files[0];
        var reader = new FileReader();

        reader.onloadend = function () {
            preview.src = reader.result;
            preview.style.display = 'block';
        }

        if (file) {
            reader.readAsDataURL(file);
        } else {
            preview.src = '';
            preview.style.display = 'none';
        }
    });
</script>

</body>
</html>
