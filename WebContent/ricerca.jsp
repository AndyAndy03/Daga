<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>RICERCA</title>
    <link rel="stylesheet" href="./css/stile_home.css">
    <link rel="stylesheet" href="./css/stile_catalogo.css">
    <link rel="stylesheet" href="./css/stile_productcard.css">
    
</head>
<body>
    <%@ include file="./WebContent/header.jsp" %>

    <div class="content">
        <%@ page import="it.unisa.model.Product" %>
        <%@ page import="it.unisa.model.ProductImage" %>
        <%@ page import="it.unisa.model.ProductDAO" %>
        <%@ page import="it.unisa.model.ProductImageDAO" %>
        <%@ page import="java.util.List" %>
        <%@ page import="it.unisa.model.RicercaDAO" %>
        <div class="container" style="flex-wrap: wrap;">
            <%
            session = request.getSession();
            User utente = (User)session.getAttribute("utente");
            String cerca = request.getParameter("cerca");
            
            RicercaDAO ri=new RicercaDAO();
            ProductDAO pd_id = new ProductDAO();
            List<Integer> lp = ri.get_list_id(cerca);
       		if(lp!=null)
            for (int i : lp) {
                ProductDAO pd = new ProductDAO();
                Product p = pd.doRetrieveById(i);
                ProductImageDAO id = new ProductImageDAO();
                List<ProductImage> img = id.doRetrieveById(p.getId_prod());
                ProductImage im = img.get(0);
                String path_img = "./resource/Prodotti/" + im.getImg();
            %>
            <div class="productcard" style="margin:30px">
                <form action="./product.jsp?id=<%=i%>" method="post">
                    <input type="hidden" name="ProductId" value="<%=i%>">
                    <button type="submit">
                        <img src="<%=path_img%>" alt="<%=p.getNome()%>" />
                    </button>
                </form>
                <div class="product-name"><%=p.getNome() %></div>
                <div class="product-name">&euro;<%=p.getPrezzo() %></div>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <footer>
        <%@ include file="./WebContent/footer.html" %>
    </footer>

    <script>
        // Funzione per aggiornare lo stato delle frecce di scorrimento
        function updateScrollArrows() {
            var container = document.querySelector('.container');
            var scrollLeft = container.scrollLeft;
            var scrollWidth = container.scrollWidth;
            var clientWidth = container.clientWidth;

            var scrollRightButton = document.querySelector('.scroll-right');
            var scrollLeftButton = document.querySelector('.scroll-left');

            // Mostra/nasconde la freccia sinistra in base alla posizione dello scroll
            if (scrollLeft > 0) {
                scrollLeftButton.style.display = 'block';
            } else {
                scrollLeftButton.style.display = 'none';
            }

            // Mostra/nasconde la freccia destra in base alla posizione dello scroll
            if (scrollWidth > scrollLeft + clientWidth) {
                scrollRightButton.style.display = 'block';
            } else {
                scrollRightButton.style.display = 'none';
            }
        }

        // Funzione per lo scorrimento verso sinistra
        function scrollLeft() {
            var container = document.querySelector('.container');
            container.scrollBy({
                left: -300,
                behavior: 'smooth'
            });
            updateScrollArrows();
        }

        // Funzione per lo scorrimento verso destra
        function scrollRight() {
            var container = document.querySelector('.container');
            container.scrollBy({
                left: 300,
                behavior: 'smooth'
            });
            updateScrollArrows();
        }

        // Aggiorna lo stato delle frecce quando la pagina è caricata o ridimensionata
        window.addEventListener('load', updateScrollArrows);
        window.addEventListener('resize', updateScrollArrows);
    </script>
</body>
</html>
