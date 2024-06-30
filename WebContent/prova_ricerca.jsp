<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.unisa.model.User" %>
<%@ page import="it.unisa.model.ProductDAO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barra di Ricerca con Suggerimenti</title>
    <style>
    /* Stile di base per il corpo della pagina */
body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
    margin: 0; /* Rimuove i margini */
    padding: 0; /* Rimuove il padding */
}

/* Contenitore della barra di ricerca */
.search-container {
    position: relative;
    width: 80%; /* Utilizza una percentuale per la larghezza */
    max-width: 400px; /* Limita la larghezza massima */
    margin: 0 auto; /* Centra l'elemento */
}

/* Stile della barra di ricerca */
#search {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1em; /* Usa una dimensione del carattere relativa */
}

/* Contenitore per i suggerimenti */
.suggestions {
    position: absolute;
    top: calc(100% + 5px); /* Posiziona sotto la barra di ricerca */
    width: 100%;
    border: 1px solid #ccc;
    border-top: none;
    border-radius: 0 0 4px 4px;
    background-color: #fff;
    max-height: 200px;
    overflow-y: auto;
    display: none;
    z-index: 1000;
}

/* Stile per i singoli suggerimenti */
.suggestions div {
    padding: 10px;
    cursor: pointer;
    font-size: 0.9em; /* Usa una dimensione del carattere relativa */
}

/* Stile per i suggerimenti al passaggio del mouse */
.suggestions div:hover {
    background-color: #f0f0f0;
}

/* Media Queries per la responsività */

/* Schermi piccoli (fino a 600px) */
@media (max-width: 600px) {
    body {
        height: auto; /* Permette al corpo di adattarsi alla dimensione del contenuto */
        padding: 20px; /* Aggiunge padding per una migliore visualizzazione */
    }

    .search-container {
        width: 100%; /* Utilizza tutta la larghezza disponibile */
        max-width: none; /* Rimuove il limite della larghezza massima */
    }

    #search {
        padding: 12px; /* Aumenta il padding per una migliore usabilità */
        font-size: 1.2em; /* Aumenta la dimensione del carattere */
    }

    .suggestions {
        top: calc(100% + 10px); /* Aumenta la distanza dalla barra di ricerca */
        max-height: 150px; /* Riduce l'altezza massima */
    }

    .suggestions div {
        font-size: 1em; /* Aumenta la dimensione del carattere */
        padding: 15px; /* Aumenta il padding per una migliore selezione */
    }
}

/* Schermi medi (da 601px a 900px) */
@media (min-width: 601px) and (max-width: 900px) {
    .search-container {
        width: 70%; /* Riduce leggermente la larghezza */
        max-width: 400px; /* Mantiene un limite per grandi schermi */
    }

    #search {
        padding: 11px; /* Aggiusta il padding */
        font-size: 1.1em; /* Aumenta leggermente la dimensione del carattere */
    }

    .suggestions {
        top: calc(100% + 8px); /* Aggiusta la distanza dalla barra di ricerca */
    }

    .suggestions div {
        font-size: 0.95em; /* Regola la dimensione del carattere */
        padding: 12px; /* Regola il padding */
    }
}

/* Schermi grandi (oltre 900px) */
@media (min-width: 901px) {
    .search-container {
        width: 50%; /* Riduce la larghezza per schermi grandi */
        max-width: 500px; /* Aumenta il limite della larghezza massima */
    }

    #search {
        padding: 10px;
        font-size: 1em; /* Mantiene la dimensione del carattere */
    }

    .suggestions {
        top: calc(100% + 5px);
    }

    .suggestions div {
        font-size: 0.9em;
        padding: 10px;
    }
}

    
    </style>
</head>
<body>


    <div class="search-container">
        <input type="text" id="search" placeholder="Cerca...">
        <div id="suggestions" class="suggestions"></div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        
    });
    
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
        
    </script>
</body>
</html>
