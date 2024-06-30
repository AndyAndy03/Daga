<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ORDINE</title>
<link rel="stylesheet" href="./css/stile_home.css">

<style>
            /* Stile generale per il corpo della pagina */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
}

/* Contenitore principale */
.container {
    width: 90%; /* Usare percentuali per larghezza adattabile */
    max-width: 1200px; /* Impostare una larghezza massima per grandi schermi */
    margin: 20px auto; /* Centrare il contenitore e aggiungere margine verticale */
    padding: 20px;
    box-sizing: border-box;
}

/* Stile per ogni prodotto */
.product {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-bottom: 20px;
    width: 100%;
    max-width: 1000px;
    box-sizing: border-box;
    flex-wrap: wrap; /* Permette il wrapping per piccoli schermi */
}

/* Stile per le immagini del prodotto */
.product img {
    max-width: 100%; /* Assicura che l'immagine non esca dal contenitore */
    max-height: 200px;
    margin-right: 20px;
    border-radius: 10px;
    flex-shrink: 0; /* Previene il ridimensionamento */
}

/* Stile per le informazioni del prodotto */
.product-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: left;
    min-width: 250px; /* Assicura una larghezza minima */
}

/* Titolo del prodotto */
.product-info h2 {
    margin: 0 0 10px 0;
    font-size: 1.5em;
}

/* Descrizione del prodotto */
.product-info p {
    margin: 5px 0;
    color: #666;
    font-size: 1em; /* Usa una dimensione del carattere relativa */
}

/* Contenitore per il totale */
.total-container {
    text-align: right;
    font-size: 1.5em;
    margin-top: 20px;
}

/* Stile per i form all'interno del totale */
.total-container form {
    display: inline-block;
    margin-left: 20px;
}

/* Stile generale per i bottoni */
button {
    background-color: black;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    font-size: 1em;
    border-radius: 5px; /* Aggiunge angoli arrotondati */
}

button:hover {
    background-color: #333;
}

/* Media Queries per la responsività */

/* Schermi piccoli (fino a 600px) */
@media (max-width: 600px) {
    .container {
        width: 95%; /* Aumenta la larghezza per piccoli schermi */
        padding: 10px; /* Riduce il padding */
    }
    
    .product {
        flex-direction: column; /* Disposizione verticale per piccoli schermi */
        align-items: flex-start; /* Allinea gli elementi a sinistra */
        padding: 15px;
    }

    .product img {
        width: 100%; /* Larghezza completa per l'immagine */
        margin-right: 0; /* Rimuove il margine a destra */
        margin-bottom: 15px; /* Aggiunge spazio sotto l'immagine */
    }

    .product-info {
        width: 100%; /* Larghezza completa */
        margin-left: 0; /* Rimuove il margine a sinistra */
        text-align: center; /* Centra il testo */
    }
    
    .total-container {
        font-size: 1.2em; /* Riduce leggermente la dimensione del testo */
        text-align: center; /* Centra il testo */
    }

    button {
        width: 100%; /* Bottoni adattati alla larghezza disponibile */
        padding: 12px; /* Aumenta il padding per una migliore usabilità */
        margin-bottom: 10px; /* Aggiunge spazio sotto i bottoni */
    }
}

/* Schermi medi (da 601px a 900px) */
@media (min-width: 601px) and (max-width: 900px) {
    .container {
        width: 85%; /* Leggermente più largo rispetto ai piccoli schermi */
        padding: 15px;
    }

    .product {
        flex-direction: column; /* Disposizione verticale */
        align-items: flex-start;
        padding: 20px;
    }

    .product img {
        width: 80%; /* Larghezza ridotta per immagini */
        margin-right: 0;
        margin-bottom: 15px;
    }

    .product-info {
        width: 100%;
        margin-left: 0;
        text-align: center; /* Centra il testo */
    }

    .total-container {
        font-size: 1.3em; /* Riduce leggermente la dimensione del testo */
        text-align: center; /* Centra il testo */
    }
}

    </style>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    function downloadFile(filename, content) {
        // Create a Blob with the file content and type
        const blob = new Blob([content], { type: 'text/plain' });

        // Create an <a> element to trigger the download
        const a = document.createElement('a');
        a.href = URL.createObjectURL(blob);
        a.download = filename;

        // Append anchor to body
        document.body.appendChild(a);

        // Programatically click the anchor to trigger the download
        a.click();

        // Clean up
        document.body.removeChild(a);
        URL.revokeObjectURL(a.href);
    }

    function download_fattura(id,user) {
    
    	var url_r='get_fattura_json?id='+id+'&user='+user;
    	$.ajax({
            url: url_r, // URL della tua servlet
            method: 'GET',
            dataType: 'text',
            success: function(response) {
            	
    const fileName = 'fattura.txt';
    const fileContent = response;
	
    downloadFile(fileName, fileContent);
    }})
    }
    </script>
    
</head>
<body>
<%@ include file="./WebContent/header.jsp" %>

<%@ page import="it.unisa.model.Product" %>
<%@ page import="it.unisa.model.ProductImage" %>
<%@ page import="it.unisa.model.ProductDAO" %>
<%@ page import="it.unisa.model.ProductImageDAO" %>
<%@ page import="it.unisa.model.Cart" %>
<%@ page import="it.unisa.model.User" %>
<%@ page import="it.unisa.model.User" %>
<%@ page import="it.unisa.model.FatturaDAO" %>
<%@ page import="java.util.List" %>
<%
	session = request.getSession();
	User utente=(User)session.getAttribute("utente");
	if(utente==null)
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("./login_form.jsp");
        dispatcher.forward(request, response);
	}
	
	float tot=0;
	int id_ordine=Integer.valueOf(request.getParameter("ordine"));
	%>
	ordine n: <%=id_ordine%>
	<%
	FatturaDAO fd=new FatturaDAO();
	List<Integer> ca=fd.get_prodotti(id_ordine);
	
	if(ca!=null)
	{
		
	
	for (int el : ca) 
	{
		Cart cart = new Cart();	
	ProductDAO pd=new ProductDAO();
	Product p=pd.doRetrieveById(el);
	tot+=p.getPrezzo()*cart.get_q_ord(p.getId_prod(),id_ordine);
	ProductImageDAO id=new ProductImageDAO();
	List<ProductImage> img =id.doRetrieveById(p.getId_prod());
	
	ProductImage im=img.get(0);
	String pi="./resource/Prodotti/";
	String s=im.getImg();
	String path_img = "./resource/Prodotti/"+s;
	
	
	 
	
	
%>
<div class="container">
        <div class="product">
            <img src=<%=path_img%> width="200px" height="200px">
            <div class="product-info">
                <h2><%=p.getNome()%></h2>
                <p>Quant: <%=cart.get_q_ord(p.getId_prod(),id_ordine)%></p>
                <p>Prezzo: &euro;<%=p.getPrezzo()%></p>
                
            </div>
        </div>
    </div>
<%
}
	}
	
	double scale = Math.pow(10, 2);  // 2 is the number of decimal places
    double roundedValue = Math.round(tot * scale) / scale;
%>

<div class="container">
TOTALE: &euro;<%=roundedValue%>
</div>
 


<button onclick="download_fattura(<%=id_ordine%>,'<%=utente.getUsername()%>')" style="width:10%; margin:20px">Scarica fattura</button>

<%@ include file="./WebContent/footer.html" %>
</body>
</html>