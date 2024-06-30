<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="it.unisa.model.User" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifica Prodotto</title>
     <link rel="stylesheet" href="./css/styles.css">

</head>
<%@ page import="it.unisa.model.Product" %>
<%@ page import="it.unisa.model.ProductDAO" %>
<body>
	<%
		int id=Integer.valueOf(request.getParameter("ProductId"));
		ProductDAO pd=new ProductDAO();
		Product p=pd.doRetrieveById(id);
	
session = request.getSession();
User utente=(User)session.getAttribute("utente");
if(utente!=null)
{	
	if(utente.getAdmin()==1)
	{
%>
	<form action="ModifyProduct" method="post">
    <div id="productForm">
    
    	<input type="hidden" id="productId" name="productId" value=<%=id%>>
    
    
        <h2>Inserisci un nuovo prodotto</h2>
        <label for="productName">Nome:</label>
        <textarea id="productName" name="productName" placeholder="Nome del prodotto" required><%=p.getNome()%></textarea>

        <label for="productDescription">Descrizione:</label>
        <textarea id="productDescription" name="productDescription" placeholder="Descrizione del prodotto" required><%=p.getDescrizione()%></textarea>

        <label for="productPrice">Prezzo:</label>
        <input type="number" step="0.01" min="0.00" id="productPrice" name="productPrice" id="price" placeholder="Prezzo del prodotto" oninput="formatPrice(this)" required value=<%=p.getPrezzo()%>>
		
		<label for="productCat">Categoria:</label>
        <select id="productCat" name="productCat" required value=<%=p.getCategoria()%>>
        <option value="Anelli">Anelli</option>
        <option value="Bracciali">Bracciali</option>
        <option value="Collane">Collane</option>
        <option value="Orecchini">Orecchini</option>
        <option value="Orologi">Orologi</option>
        </select>
        
        <label for="productSex">Genere:</label>
        <select id="productSex" name="productSex" required>
        <option value="M" <%if(p.getSex()=="M"){%>selected="selected"<%}%>>M</option>
        <option value="F" <%if(p.getSex()=="D"){%>selected="selected"<%}%>>F</option>
        </select>

        <button type="submit">Modifica Prodotto</button>
    </div>
    </form>
      <% 
    }
    else
    {
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/");
    	dispatcher.forward(request, response);
    }
	
}
    %>
    <script>
        function formatPrice(input) {
          // Rimuove eventuali caratteri non numerici e non decimali dal valore dell'input
          input.value = input.value.replace(/[^0-9.]/g, '');
      
          // Se il prezzo contiene un punto decimale
          if (input.value.includes('.')) {
            var parts = input.value.split('.');
            // Sostituisce il valore con al massimo due decimali
            input.value = parts[0] + '.' + (parts[1] ? parts[1].slice(0, 2) : '');
          }
        }
      
        function validatePrice() {
          var priceInput = document.getElementById('price');
          var price = parseFloat(priceInput.value);
          if (isNaN(price)) {
            document.getElementById('priceError').innerText = "Il prezzo deve essere un numero valido.";
            return false;
          }
          return true;
        }
      </script>
   
</body>
</html>

