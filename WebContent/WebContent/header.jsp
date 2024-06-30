<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #000;
        }

        header {
            background-color: #FFF;
            height: 80px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            box-sizing: border-box;
            top: 0;
            z-index: 1000;
            position: relative;
        }

        .left-section,
        .right-section {
            display: flex;
            align-items: center;
        }

        .logo_header {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }

        .logo_header img {
            height: 50px;
            width: auto;
        }

        .user,
        .cart,
        .piaciuti,
        .ricerca {
            width: 60px;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            margin-right: 10px;
        }

        .user img,
        .ricerca img,
        .cart img,
        .piaciuti img {
            max-width: 100%;
            max-height: 100%;
        }

        .search-container {
            display: none;
            position: absolute;
            top: 20px;
            right: 90px;
            margin-right: 70px;
            z-index: 1000;
        }

        .search-container.active {
            display: flex;
        }

        .search-container input[type="text"] {
            padding: 8px;
            border: 1px solid #000;
            border-radius: 3px;
            margin-right: 10px;
            width: 200px;
        }

        .search-container button {
            padding: 8px;
            border: none;
            background-color: #000;
            border-radius: 3px;
            cursor: pointer;
            color: #FFF;
            font-size: 1em;
        }

        .menu {
            background-color: #fff;
            height: 20px;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-sizing: border-box;
            padding: 10px 0;
            margin-top: 0; /* Changed margin-top to 0 */
            z-index: 1000;
        }

        .menu a {
            color: black;
            text-decoration: none;
            padding: 0 20px;
        }

        .logout button {
            padding: 8px;
            border: none;
            background-color: #000;
            border-radius: 3px;
            cursor: pointer;
            color: #FFF;
            font-size: 1em;
        }

        .logout button:hover {
            background-color: #333;
        }

        .suggestions {
            position: absolute;
            top: 40px; /* Adjust this value to match the height of the input field */
            left: 0;
            width: calc(100% - 10px); /* Full width minus padding */
            border: 1px solid #000;
            border-radius: 3px;
            background-color: #FFF;
            z-index: 1000;
            display: none;
        }

        .suggestions div {
            padding: 8px;
            cursor: pointer;
        }

        .suggestions div:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <header>
        <div class="left-section">
            <% 
            session = request.getSession(); 
            User ut = (User) session.getAttribute("utente"); 
            String url_user = "./login_form.jsp"; 
            if (ut != null) {
                url_user = "user.jsp"; 
            %>
            <%= ut.getUsername()%>  
            <br>
            <div class="logout" style="margin-left: 3px">
                <form action="Logout" method="Post">
                    <button type="submit">logout</button>
                </form>
            </div>
            <% } %>
            <div class="user">
                <a href="<%= url_user %>">
                    <img src="./WebContent/user.png" alt="Utente">
                </a>
            </div>
        </div>

        <div class="logo_header">
            <a href="./">
                <img src="./WebContent/DAGA.png" alt="Logo">
            </a>
        </div>

        <div class="right-section">
            <div class="ricerca" onclick="toggleSearch()">
                <img src="./WebContent/menu.png" alt="Ricerca" id="searchIcon">
            </div>

            <div class="search-container" id="searchContainer">
                <form action="./ricerca.jsp" method="get">
                    <input type="text" name="cerca" placeholder="Cerca..." id="search">
                    <button type="submit">cerca</button>
                </form>
                <div id="suggestions" class="suggestions" style="max-height:200px; overflow:scroll"></div>
            </div>

            <div class="cart">
                <a href="./carrello.jsp">
                    <img src="./WebContent/cart.png" alt="Carrello">
                </a>
            </div>
			<%if (ut != null) { %>
            <div class="piaciuti">
                <a href="./preferiti.jsp">
                    <img src="./WebContent/Piaciuti.png" alt="Piaciuti">
                </a>
            </div>
            <%} %>
        </div>
    </header>

    <div class="menu" style="margin-bottom: 20px; z-index:0">
        <a href="./catalogo.jsp?cat=Bracciali">Bracciali</a>
        <a href="./catalogo.jsp?cat=Orologi">Orologi</a>
        <a href="./catalogo.jsp?cat=Orecchini">Orecchini</a>
        <a href="./catalogo.jsp?cat=Collane">Collane</a>
        <a href="./catalogo.jsp?cat=Anelli">Anelli</a>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: 'get_product_name_list', // URL della tua servlet
                method: 'GET',
                dataType: 'json',
                success: function(response) {
                    // response è il tuo array JSON
                    console.log(response); // Debugging
                    var suggestionsArray = response;

                    $('#search').on('input', function() {
                        let query = $(this).val().toLowerCase();
                        if (query.length > 0) {
                            let filteredSuggestions = suggestionsArray.filter(function(suggestion) {
                                return suggestion.toLowerCase().includes(query);
                            });
                            $('#suggestions').empty();
                            if (filteredSuggestions.length > 0) {
                                filteredSuggestions.forEach(function(suggestion) {
                                    $('#suggestions').append('<div>' + suggestion + '</div>');
                                });
                                $('#suggestions').show();
                            } else {
                                $('#suggestions').hide();
                            }
                        } else {
                            $('#suggestions').hide();
                        }
                    });

                    // Ora puoi usare productNames come array JavaScript
                    console.log(productNames);
                },
                error: function(xhr, status, error) {
                    console.error('Errore nella richiesta AJAX:', status, error);
                }
            });

            $(document).on('click', '#suggestions div', function() {
                $('#search').val($(this).text());
                $('#suggestions').hide();
            });
        });

        function toggleSearch() {
            var searchContainer = document.getElementById('searchContainer');
            var searchIcon = document.getElementById('searchIcon');
            if (searchContainer.style.display === 'flex') {
                searchContainer.style.display = 'none';
                searchIcon.style.display = 'block';
            } else {
                searchContainer.style.display = 'flex';
                searchIcon.style.display = 'none';
            }
        }
    </script>
</body>
</html>
